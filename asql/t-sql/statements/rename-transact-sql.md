---
title: "RENAME (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-04-13"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-data-warehouse"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
ms.assetid: 0907cfd9-33a6-4fa6-91da-7d6679fee878
caps.latest.revision: 15
ms.author: "barbkess"
manager: "jhubbard"
---
# RENAME (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Renames a user-created table in [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)]. Renames a user-created table or database in [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)].  
  
> [!NOTE]  
>  To rename a database in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] use the stored procedure [sp_renamedb &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-renamedb-transact-sql.md).  
  
## Syntax  
  
```  
-- Syntax for Azure SQL Data Warehouse  
  
-- Rename a table.  
RENAME OBJECT [ :: ]  [ [ database_name .  [schema_name ] ] . ] | [schema_name . ] ] table_name TO new_table_name  
[;]  
  
```  
  
```  
-- Syntax for Parallel Data Warehouse  
  
-- Rename a table  
RENAME OBJECT [::] [ [ database_name . [ schema_name ] . ] | [ schema_name . ] ] table_name TO new_table_name  
[;]  
  
-- Rename a database  
RENAME DATABASE [::] database_name TO new_database_name  
[;]  
```  
  
## Arguments  
 RENAME OBJECT [::]   
          [ [*database_name* . [ *schema_name* ] . ] | [ *schema_name* . ] ]*table_name* TO *new_table_name*  
 **APPLIES TO:**  [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
 Change the name of a user-defined table. Specify the table to be renamed with a one-, two-, or three-part name.    Specify the new table *new_table_name* as a one-part name.  
  
 RENAME DATABASE [::]   
          [ *database_name* TO *new_database_name*  
 **APPLIES TO:**  [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
 Change the name of a user-defined database from *database_name* to *new_database_name*.  You cannot rename a database to any of these [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]reserved database names:  
  
-   master  
  
-   model  
  
-   msdb  
  
-   tempdb  
  
-   pdwtempdb1  
  
-   pdwtempdb2  
  
-   DWConfiguration  
  
-   DWDiagnostics  
  
-   DWQueue  
  
## Permissions  
 To run this command you need this permission:  
  
-   **ALTER** permission on the table  
   
  
## Limitations and Restrictions  
  
### Cannot rename an external table, indexes, or views
You cannot rename an external table, indexes, or views. Instead of renaming, you can drop the external table, index, or view and then re-create it with the new name.

### Cannot rename a table in use  
 You cannot rename a table or database while it is in use. Renaming a table requires an exclusive lock on the table. If the table is in use, you may need to terminate sessions that are using the table. To terminate a session you can use the KILL command. Use KILL cautiously since when a session is terminated any uncommitted work will be rolled back. Sessions in SQL Data Warehouse are prefixed by 'SID'. You will need to include this and the session number when invoking the KILL command. This example views a list of active or idle sessions and then terminates session 'SID1234'.  
  
### Views are not updated  
 When renaming a database, all views that use the former database name will become invalid. This applies to views both inside and outside the database. For example, if the Sales database is renamed, a view that contains `SELECT * FROM Sales.dbo.table1` will become invalid. To resolve this, you can either avoid using three-part names in views, or update the views to reference the new database name.  
  
 When renaming a table, views are not updated to reference the new table name. Each view, inside or outside of the database, that references the former table name will become invalid. To resolve this, you can update each view to reference the new table name.  
  
## Locking  
 Renaming a table takes a shared lock on the DATABASE object, a shared lock on the SCHEMA object, and an exclusive lock on the table.  
  
## Examples  
  
### A. Rename a database  
 **APPLIES TO:**  [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] only  
  
 This example renames the user-defined database AdWorks to AdWorks2.  
  
```  
-- Rename the user defined database AdWorks  
RENAME DATABASE AdWorks to AdWorks2;  
  
```  
  
 When renaming a table, all objects and properties associated with the table are updated to reference the new table name. For example, table definitions, indexes, constraints, and permissions are updated. Views are not updated.  
  
### B. Rename a table  
 **APPLIES TO:**  [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
 This example renames the Customer table to Customer1.  
  
```  
-- Rename the customer table  
RENAME OBJECT Customer TO Customer1;  
  
RENAME OBJECT mydb.dbo.Customer TO Customer1;  
```  
  
 When renaming a table, all objects and properties associated with the table are updated to reference the new table name. For example, table definitions, indexes, constraints, and permissions are updated. Views are not updated.  
   
  
### C. Move a table to a different schema  
 **APPLIES TO:**  [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
 If your intent is to move the object to a different schema, use [ALTER SCHEMA &#40;Transact-SQL&#41;](../../t-sql/statements/alter-schema-transact-sql.md). For example, this moves the table item from the product schema to the dbo schema.  
  
```  
ALTER SCHEMA dbo TRANSFER OBJECT::product.item;  
```  
  
### D. Terminate sessions before renaming a table  
 **APPLIES TO:**  [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
 It is important to remember that you cannot rename a table while it is in use. A rename of a table requires an exclusive lock on the table. If the table is in use, you may need to terminate the session using the table. To terminate a session you can use the KILL command. Use KILL cautiously since when a session is terminated any uncommitted work will be rolled back. Sessions in SQL Data Warehouse are prefixed by 'SID'. You will need to include this and the session number when invoking the KILL command. This example views a list of active or idle sessions and then terminates session 'SID1234'.  
  
```  
-- View a list of the current sessions  
SELECT session_id, login_name, status   
FROM sys.dm_pdw_exec_sessions   
WHERE status='Active' OR status='Idle';  
  
-- Terminate a session using the session_id.  
KILL 'SID1234';  
```  
  
  