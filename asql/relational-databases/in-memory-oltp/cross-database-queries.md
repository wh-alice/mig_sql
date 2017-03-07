---
title: "Cross-Database Queries | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-04"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a0305f5b-91bd-4d18-a2fc-ec235b062fd3
caps.latest.revision: 8
ms.author: "genemi"
manager: "jhubbard"
---
# Cross-Database Queries
[!INCLUDE[tsql-appliesto-ss2014-xxxx-xxxx-xxx_md](../../integration-services/includes/tsql-appliesto-ss2014-xxxx-xxxx-xxx-md.md)]

  Starting with [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)], memory-optimized tables do not support cross-database transactions. You cannot access another database from the same transaction or the same query that also accesses a memory-optimized table. You cannot easily copy data from a table in one database, to a memory-optimized table in another database.  
  
 Table variables are not transactional. Therefore, memory-optimized table variables can be used in cross-database queries, and can thus facilitate moving data from one database into memory-optimized tables in another. You can use two transactions. In the first transaction, insert the data from the remote table into the variable. In the second transaction, insert the data into the local memory-optimized table from the variable.  For more information on memory-optimized table variables, see [Faster temp table and table variable by using memory optimization](../../relational-databases/in-memory-oltp/faster-temp-table-and-table-variable-by-using-memory-optimization.md).
  
## Example
This example illustrates a method to transfer data from one database into a memory-optimized table in a different database.

1. Create Test Objects.  Execute the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  

    ```tsql
    USE master;
    GO
    
    SET NOCOUNT ON;
    
    -- Create simple database
    CREATE DATABASE SourceDatabase;
    ALTER DATABASE SourceDatabase SET RECOVERY SIMPLE;
    GO

    -- Create a table and insert a few records
    USE SourceDatabase;
    
    CREATE TABLE SourceDatabase.[dbo].[SourceTable] (
    	[ID] [int] PRIMARY KEY CLUSTERED,
    	[FirstName] nvarchar(8)
    	);
    
    INSERT [SourceDatabase].[dbo].[SourceTable]
    VALUES (1, N'Bob'),
    	(2, N'Susan');
    GO
    ---------------------------------------------------------------


    -- Create a database with a MEMORY_OPTIMIZED_DATA filegroup
    CREATE DATABASE DestinationDatabase
     ON  PRIMARY 
    ( NAME = N'DestinationDatabase_Data', FILENAME = N'D:\DATA\DestinationDatabase_Data.mdf',	SIZE = 8MB), 
     FILEGROUP [DestinationDatabase_mod] CONTAINS MEMORY_OPTIMIZED_DATA  DEFAULT
    ( NAME = N'DestinationDatabase_mod', FILENAME = N'D:\DATA\DestinationDatabase_mod', MAXSIZE = UNLIMITED)
     LOG ON 
    ( NAME = N'DestinationDatabase_Log', FILENAME = N'D:\LOG\DestinationDatabase_Log.ldf', SIZE = 8MB);
    
    ALTER DATABASE DestinationDatabase SET RECOVERY SIMPLE;
    GO
    
    USE DestinationDatabase;
    GO

    -- Create a memory-optimized table
    CREATE TABLE [dbo].[DestTable_InMem] (
    	[ID] [int] PRIMARY KEY NONCLUSTERED,
    	[FirstName] nvarchar(8)
    	)
    WITH ( MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA );
    GO
    ```

2.  Attempt cross-database query. Execute the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].
  
    ```tsql  
    INSERT [DestinationDatabase].[dbo].[DestTable_InMem]
    SELECT * FROM [SourceDatabase].[dbo].[SourceTable]
    ```  

    You should receive the following error message:
    > Msg 41317, Level 16, State 5  
    > A user transaction that accesses memory optimized tables or natively compiled modules cannot access more than one user database or databases model and msdb, and it cannot write to master.

3.  Create a memory-optimized table type.  Execute the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].

    ```tsql
    USE DestinationDatabase;
    GO
    
    CREATE TYPE [dbo].[MemoryType]  
        AS TABLE  
        (  
    	[ID] [int] PRIMARY KEY NONCLUSTERED,
    	[FirstName] nvarchar(8)
        )  
        WITH  
            (MEMORY_OPTIMIZED = ON);  
    GO
    ```

4.  Re-attempt the cross-database query.  This time the source data will first be transferred to a memory-optimized table variable.  Then the data from the tale variable will be transferred to the memory-optimized table.
    ```tsql
    -- Declare table variable utilizing the newly created type - MemoryType
    DECLARE @InMem dbo.MemoryType;
    
    -- Populate table variable
    INSERT @InMem SELECT * FROM SourceDatabase.[dbo].[SourceTable];
    
    -- Populate the destination memory-optimized table
    INSERT [DestinationDatabase].[dbo].[DestTable_InMem] SELECT * FROM @InMem;
    GO 
    ```
   
## See Also  
 [Migrating to In-Memory OLTP](../../relational-databases/in-memory-oltp/migrating-to-in-memory-oltp.md)  
  
  