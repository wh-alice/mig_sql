---
title: "sp_pkeys (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_pkeys"
  - "sp_pkeys_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_pkeys"
ms.assetid: e614c75d-847b-4726-8f6f-cd18de688eda
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_pkeys (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns primary key information for a single table in the current environment.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
sp_pkeys [ @table_name = ] 'name'       
    [ , [ @table_owner = ] 'owner' ]   
    [ , [ @table_qualifier = ] 'qualifier' ]  
```  
  
## Arguments  
 [ @table_name= ] '*name*'  
 Is the table for which to return information. *name* is **sysname**, with no default. Wildcard pattern matching is not supported.  
  
 [ @table_owner= ] '*owner*'  
 Specifies the table owner of the specified table. *owner* is **sysname**, with a default of NULL. Wildcard pattern matching is not supported. If *owner* is not specified, the default table visibility rules of the underlying DBMS apply.  
  
 In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], if the current user owns a table with the specified name, the columns of that table are returned. If the *owner* is not specified and the current user does not own a table with the specified *name*, this procedure looks for a table with the specified *name* owned by the database owner. If one exists, the columns of that table are returned.  
  
 [ @table_qualifier= ] '*qualifier*'  
 Is the table qualifier. *qualifier* is **sysname**, with a default of NULL. Various DBMS products support three-part naming for tables (*qualifier***.***owner***.***name*). In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column represents the database name. In some products, it represents the server name of the database environment of the table.  
  
## Return Code Values  
 None  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|TABLE_QUALIFIER|**sysname**|Name of the table qualifier. This field can be NULL.|  
|TABLE_OWNER|**sysname**|Name of the table owner. This field always returns a value.|  
|TABLE_NAME|**sysname**|Name of the table. In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column represents the table name as listed in the sysobjects table. This field always returns a value.|  
|COLUMN_NAME|**sysname**|Name of the column, for each column of the TABLE_NAME returned. In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column represents the column name as listed in the sys.columns table. This field always returns a value.|  
|KEY_SEQ|**smallint**|Sequence number of the column in a multicolumn primary key.|  
|PK_NAME|**sysname**|Primary key identifier. Returns NULL if not applicable to the data source.|  
  
## Remarks  
 sp_pkeys returns information about columns explicitly defined with a PRIMARY KEY constraint. Because not all systems support explicitly named primary keys, the gateway implementer determines what constitutes a primary key. Note that the term primary key refers to a logical primary key for a table. It is expected that every key listed as being a logical primary key has a unique index defined on it. This unique index is also returned in sp_statistics.  
  
 The sp_pkeys stored procedure is equivalent to SQLPrimaryKeys in ODBC. The results returned are ordered by TABLE_QUALIFIER, TABLE_OWNER, TABLE_NAME, and KEY_SEQ.  
  
## Permissions  
 Requires SELECT permission on the schema.  
  
## Examples  
 The following example retrieves the primary key for the `HumanResources.Department` table in the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_pkeys @table_name = N'Department'  
    ,@table_owner = N'HumanResources';  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example retrieves the primary key for the `DimAccount` table in the `AdventureWorksPDW2012` database. It returns zero rows indicating that the table does not have a primary key.  
  
```  
-- Uses AdventureWorks  
  
EXEC sp_pkeys @table_name = N'DimAccount;  
```  
  
## See Also  
 [Catalog Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/catalog-stored-procedures-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  

