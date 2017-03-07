---
title: "OBJECT_NAME (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "OBJECT_NAME"
  - "OBJECT_NAME_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "OBJECT_NAME function"
  - "viewing database object names"
  - "objects [SQL Server], names"
  - "database objects [SQL Server], names"
  - "displaying database object names"
  - "database objects [SQL Server]"
  - "names [SQL Server], database objects"
ms.assetid: 7d5b923f-0c3e-4af9-b39b-132807a6d5b3
caps.latest.revision: 45
ms.author: "rickbyh"
manager: "jhubbard"
---
# OBJECT_NAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the database object name for schema-scoped objects. For a list of schema-scoped objects, see [sys.objects &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.objects-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
OBJECT_NAME ( object_id [, database_id ] )  
```  
  
## Arguments  
 *object_id*  
 Is the ID of the object to be used. *object_id* is **int** and is assumed to be a schema-scoped object in the specified database, or in the current database context.  
  
 *database_id*  
 Is the ID of the database where the object is to be looked up. *database_id* is **int**.  
  
## Return Types  
 **sysname**  
  
## Exceptions  
 Returns NULL on error or if a caller does not have permission to view the object. If the target database has the AUTO_CLOSE option set to ON, the function will open the database.  
  
 A user can only view the metadata of securables that the user owns or on which the user has been granted permission. This means that metadata-emitting, built-in functions such as OBJECT_NAME may return NULL if the user does not have any permission on the object. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Permissions  
 Requires ANY permission on the object. To specify a database ID, CONNECT permission to the database is also required, or the guest account must be enabled.  
  
## Remarks  
 System functions can be used in the select list, in the WHERE clause, and anywhere an expression is allowed. For more information, see [Expressions](../../t-sql/language-elements/expressions-transact-sql.md) and [WHERE](../../t-sql/queries/where-transact-sql.md).  
  
 The value returned by this system function uses the collation of the current database.  
  
 By default, the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] assumes that *object_id* is in the context of the current database. A query that references an *object_id* in another database returns NULL or incorrect results. For example, in the following query the context of the current database is [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)]. The [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] tries to return an object name for the specified object ID in that database instead of the database specified in the FROM clause of the query. Therefore, incorrect information is returned.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT DISTINCT OBJECT_NAME(object_id)  
FROM master.sys.objects;  
GO  
```  
  
 You can resolve object names in the context of another database by specifying a database ID. The following example specifies the database ID for the `master` database in the `OBJECT_SCHEMA_NAME` function and returns the correct results.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT DISTINCT OBJECT_SCHEMA_NAME(object_id, 1) AS schema_name  
FROM master.sys.objects;  
GO  
```  
  
## Examples  
  
### A. Using OBJECT_NAME in a WHERE clause  
 The following example returns columns from the `sys.objects` catalog view for the object specified by `OBJECT_NAME` in the `WHERE` clause of the `SELECT` statement.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @MyID int;  
SET @MyID = (SELECT OBJECT_ID('AdventureWorks2012.Production.Product',  
    'U'));  
SELECT name, object_id, type_desc  
FROM sys.objects  
WHERE name = OBJECT_NAME(@MyID);  
GO  
```  
  
### B. Returning the object schema name and object name  
 The following example returns the object schema name, object name, and SQL text for all cached query plans that are not ad hoc or prepared statements.  
  
```  
SELECT DB_NAME(st.dbid) AS database_name,   
    OBJECT_SCHEMA_NAME(st.objectid, st.dbid) AS schema_name,  
    OBJECT_NAME(st.objectid, st.dbid) AS object_name,   
    st.text AS query_text  
FROM sys.dm_exec_query_stats AS qs  
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) AS st  
WHERE st.objectid IS NOT NULL;  
GO  
```  
  
### C. Returning three-part object names  
 The following example returns the database, schema, and object name along with all other columns in the `sys.dm_db_index_operational_stats` dynamic management view for all objects in all databases.  
  
```  
SELECT QUOTENAME(DB_NAME(database_id))   
    + N'.'   
    + QUOTENAME(OBJECT_SCHEMA_NAME(object_id, database_id))   
    + N'.'   
    + QUOTENAME(OBJECT_NAME(object_id, database_id))  
    , *   
FROM sys.dm_db_index_operational_stats(null, null, null, null);  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### D. Using OBJECT_NAME in a WHERE clause  
 The following example returns columns from the `sys.objects` catalog view for the object specified by `OBJECT_NAME` in the `WHERE` clause of the `SELECT` statement. (Your object number (274100017 in the example below) will be different.  To test this example, look up a valid object number by executing `SELECT name, object_id FROM sys.objects;` in your database.)  
  
```  
SELECT name, object_id, type_desc  
FROM sys.objects  
WHERE name = OBJECT_NAME(274100017);  
```  
  
## See Also  
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)   
 [OBJECT_DEFINITION &#40;Transact-SQL&#41;](../../t-sql/functions/object-definition-transact-sql.md)   
 [OBJECT_ID &#40;Transact-SQL&#41;](../../t-sql/functions/object-id-transact-sql.md)  
  
  

