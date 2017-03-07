---
title: "sp_depends (Transact-SQL) | Microsoft Docs"
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
  - "sp_depends"
  - "sp_depends_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_depends"
ms.assetid: d9934590-c6ae-4936-91c3-146055ef2c57
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_depends (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Displays information about database object dependencies, such as the views and procedures that depend on a table or view, and the tables and views that are depended on by the view or procedure. References to objects outside the current database are not reported.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [sys.dm_sql_referencing_entities](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-sql-referencing-entities-transact-sql.md) and [sys.dm_sql_referenced_entities](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-sql-referenced-entities-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_depends [ @objname = ] '<object>'   
  
<object> ::=  
{  
    [ database_name. [ schema_name ] . | schema_name.  
    object_name  
}  
```  
  
## Arguments  
 *database_name*  
 Is the name of the database.  
  
 *schema_name*  
 Is the name of the schema to which the object belongs.  
  
 *object_name*  
 Is the database object to examine for dependencies. The object can be a table, view, stored procedure, user-defined function, or trigger. o*bject_name* is **nvarchar(776)**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 **sp_depends** displays two result sets.  
  
 The following result set shows the objects on which *\<object>* depends.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**nvarchar(257** **)**|Name of the item for which a dependency exists.|  
|**type**|**nvarchar(16)**|Type of the item.|  
|**updated**|**nvarchar(7)**|Whether the item is updated.|  
|**selected**|**nvarchar(8)**|Whether the item is used in a SELECT statement.|  
|**column**|**sysname**|Column or parameter on which the dependency exists.|  
  
 The following result set shows the objects that depend on *\<object>*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**nvarchar(257** **)**|Name of the item for which a dependency exists.|  
|**type**|**nvarchar(16)**|Type of the item.|  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
  
### A. Listing dependencies on a table  
 The following example lists the database objects that depend on the `Sales.Customer` table in the [!INCLUDE[ssSampleDBobject](../../../a9retired/includes/sssampledbobject-md.md)] database. Both the schema name and table name are specified.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_depends @objname = N'Sales.Customer' ;  
```  
  
### B. Listing dependencies on a trigger  
 The following example lists the database objects on which the trigger `iWorkOrder` depends.  
  
```  
EXEC sp_depends @objname = N'AdventureWorks2012.Production.iWorkOrder' ;  
```  
  
## See Also  
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [EXECUTE &#40;Transact-SQL&#41;](../../../t-sql/language-elements/execute-transact-sql.md)   
 [sp_help &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [sys.sql_dependencies &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.sql-dependencies-transact-sql.md)  
  
  