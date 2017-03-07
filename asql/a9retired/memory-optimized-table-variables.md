---
title: "Memory-Optimized Table Variables | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: bd102e95-53e2-4da6-9b8b-0e4f02d286d3
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Memory-Optimized Table Variables
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  In addition to memory-optimized tables (for efficient data access) and natively compiled T-SQL modules (for efficient query processing and business logic execution) [!INCLUDE[hek_2](../a9retired/includes/hek-2-md.md)] includes a third kind of object: the memory-optimized table type. A table variable created using a memory-optimized table type is a memory-optimized table variable.  
  
 Memory-optimized table variables offer the following advantages when compared to disk-based table variables:  
  
-   The variables are only stored in memory. Data access is more efficient because memory-optimized table type use the same memory-optimized algorithm and data structures used for memory-optimized tables, especially when the variables are used in natively compiled stored procedures.  
  
-   With memory-optimized table variables, there is no tempdb utilization and no IO activity. As opposed to traditional table variables, memory-optimized table variables are not stored in tempdb and do not use any resources in tempdb.  
  
 The typical usage scenarios for memory-optimized table variables are:  
  
-   Passing table-valued parameters into stored procedures. This works for both natively compiled stored procedures and traditional interpreted T-SQL stored procedures.  
  
-   Replacing disk-based table variables. This is particularly useful if there is a lot of tempdb contention in the system. Note that for this scenario it is not required to have memory-optimized tables or natively compiled T-SQL modules - memory-optimized table variables work with traditional queries and stored procedures and traditional disk-based tables.  
  
-   Table variables can be used to simulate cursors in natively compiled stored procedures, which can help you work around surface area limitations in natively compiled stored procedures.  
  
 Like memory-optimized tables, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] generates a DLL for each memory-optimized table type. (Compilation is invoked when the memory-optimized table type is created and not when used to create memory-optimized table variables.) This DLL includes the functions for accessing indexes and retrieving data from the table variables. When a memory-optimized table variable is declared based on the table type, an instance of the table and index structures corresponding to the table type is created in the user session. The table variable can then be used in the same way as disk-based table variables. You can insert, update, and delete rows in the table variable, and you can use the variables in [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] queries. You can also pass the variables into natively compiled and interpreted stored procedures, as table-valued parameters (TVP).  
  
 The following sample shows a memory-optimized table type.  
  
```tsql  
CREATE TYPE [Sales].[SalesOrderDetailType_inmem] AS TABLE(  
  [OrderQty] [smallint] NOT NULL,  
  [ProductID] [int] NOT NULL,  
  [SpecialOfferID] [int] NOT NULL,  
  [LocalID] [int] NOT NULL,  
  
  INDEX [IX_ProductID] HASH ([ProductID]) WITH ( BUCKET_COUNT = 8),  
  INDEX [IX_SpecialOfferID] NONCLUSTERED (LocalID)  
)  
WITH ( MEMORY_OPTIMIZED = ON )  
```  
  
 The sample shows that the syntax of memory-optimized table types is similar to disk-based table types, with the following exceptions:  
  
-   **MEMORY_OPTIMIZED=ON** indicates that the table type is memory-optimized.  
  
-   The type must have at least one index. As with memory-optimized tables, you can use hash and nonclustered indexes.  
  
     For a hash index, the bucket count should be about one to two times the number of expected unique index keys. For more information, see [Determining the Correct Bucket Count for Hash Indexes](../a9retired/determining-the-correct-bucket-count-for-hash-indexes.md).  
  
-   The data type and constraint restrictions on memory-optimized tables also apply to memory-optimized table types. For example, in [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)] the datatype nvarchar(max) is supported, but geometry is not.  
  
 Like memory-optimized tables, memory-optimized table variables,  
  
-   Must fit in memory and do not use disk resources.  
  
 You cannot create a memory-optimized table variable using in-line syntax. Unlike disk-based table variables, you must create a table type first.  
  
## Example: Table-Valued Parameters  
 The following sample script shows the declaration of a table variable as the memory-optimized table type `Sales.SalesOrderDetailType_inmem`, the insert of three rows into the variable, and passing the variable as a TVP into stored procedure `Sales.usp_InsertSalesOrder_inmem`. This sample relies on the AdventureWorks2016CTP3 database, which is available from: [https://www.microsoft.com/download/details.aspx?id=49502](https://www.microsoft.com/download/details.aspx?id=49502)  
  
```tsql  
USE AdventureWorks2016CTP3  
GO  
  
DECLARE @od Sales.SalesOrderDetailType_inmem,  
  @SalesOrderID int,  
  @DueDate datetime2 = DATEADD(d, 10, SYSDATETIME())  
  
INSERT @od (ProductID, OrderQty, SpecialOfferID) VALUES  
  (706, 2, 1),  
  (710, 13, 1),  
  (714, 1, 1)  
  
EXEC Sales.usp_InsertSalesOrder_inmem  
  @SalesOrderID = @SalesOrderID,  
  @DueDate = @DueDate,  
  @OnlineOrderFlag = 1,  
  @SalesOrderDetails = @od,  
  @CustomerID = 1, @BillToAddressID = 1,  
  @ShipToAddressID = 1, @ShipMethodID = 1  
```  
  
 Memory-optimized table types can be used as the type for stored procedure table-valued parameters (TVPs) and can be referenced by clients exactly the same as disk-based table types and TVPs. Therefore, the invocation of stored procedures with memory-optimized TVPs, and natively compiled stored procedures works exactly the same as the invocation of interpreted stored procedures with disk-based TVPs.  
  
## Memory Consumption for Table Variables  
 Memory consumption for table variables is similar to memory-optimized tables, with the exception of nonclustered indexes. If you insert a lot of rows into memory-optimized table variables with nonclustered indexes and if the index keys are large, these table variables will use a disproportionate amount of memory. Nonclustered indexes on large table variables require proportionately more memory than a nonclustered index would require for the same number of rows inserted into a table (more memory in the index pages).  
  
 Memory for table variables comes from the database's Resource Governor resource pool.  
  
 Unlike memory-optimized tables, the memory consumed (including deleted rows) by table variables is freed when the table variable goes out of scope.  
  
 Memory is accounted for as part of the single PGPOOL memory consumer of the database.  
  
## See Also  
 [Transact-SQL Support for In-Memory OLTP](../relational-databases/in-memory-oltp/transact-sql-support-for-in-memory-oltp.md)  
  
  