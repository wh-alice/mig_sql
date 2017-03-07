---
title: "sp_refreshsqlmodule (Transact-SQL) | Microsoft Docs"
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
  - "sp_refreshsqlmodule_TSQL"
  - "sp_refreshsqlmodule"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "metadata [SQL Server], stored procedures"
  - "metadata [SQL Server], triggers"
  - "metadata [SQL Server], views"
  - "triggers [SQL Server], refreshing metadata"
  - "views [SQL Server], refreshing metadata"
  - "sp_refreshsqlmodule"
  - "metadata [SQL Server], functions"
  - "stored procedures [SQL Server], refreshing metadata"
  - "user-defined functions [SQL Server], refreshing metadata"
ms.assetid: f0022a05-50dd-4620-961d-361b1681d375
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_refreshsqlmodule (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Updates the metadata for the specified non-schema-bound stored procedure, user-defined function, view, DML trigger, database-level DDL trigger, or server-level DDL trigger in the current database. Persistent metadata for these objects, such as data types of parameters, can become outdated because of changes to their underlying objects.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.sp_refreshsqlmodule [ @name = ] 'module_name'   
    [ , [ @namespace = ] ' <class> ' ]  
  
<class> ::=  
{  
  | DATABASE_DDL_TRIGGER  
  | SERVER_DDL_TRIGGER  
}  
  
```  
  
## Arguments  
 [ **@name=** ] **'***module_name***'**  
 Is the name of the stored procedure, user-defined function, view, DML trigger, database-level DDL trigger, or server-level DDL trigger. *module_name* cannot be a common language runtime (CLR) stored procedure or a CLR function. *module_name* cannot be schema-bound. *module_name* is **nvarchar**, with no default. *module_name* can be a multi-part identifier, but can only refer to objects in the current database.  
  
 [ **,** @**namespace** = ] **'** \<class> **'**  
 Is the class of the specified module. When *module_name* is a DDL trigger, \<class> is required. *\<class>* is **nvarchar**(20). Valid inputs are:  
  
|||  
|-|-|  
|DATABASE_DDL_TRIGGER||  
|SERVER_DDL_TRIGGER|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].|  
  
## Return Code Values  
 0 (success) or a nonzero number (failure)  
  
## Remarks  
 **sp_refreshsqlmodule** should be run when changes are made to the objects underlying the module that affect its definition. Otherwise, the module might produce unexpected results when it is queried or invoked. To refresh a view, you can use either **sp_refreshsqlmodule** or **sp_refreshview** with the same results.  
  
 **sp_refreshsqlmodule** does not affect any permissions, extended properties, or SET options that are associated with the object.  
  
 To refresh a server-level DDL trigger, execute this stored procedure from the context of any database.  
  
> [!NOTE]  
>  Any signatures that are associated with the object are dropped when you run **sp_refreshsqlmodule**.  
  
## Permissions  
 Requires ALTER permission on the module and REFERENCES permission on any CLR user-defined types and XML schema collections that are referenced by the object. Requires ALTER ANY DATABASE DDL TRIGGER permission in the current database when the specified module is a database-level DDL trigger. Requires CONTROL SERVER permission when the specified module is a server-level DDL trigger.  
  
 Additionally, for modules that are defined with the EXECUTE AS clause, IMPERSONATE permission is required on the specified principal. Generally, refreshing an object does not change its EXECUTE AS principal, unless the module was defined with EXECUTE AS USER and the user name of the principal now resolves to a different user than that at the time the module was created.  
  
## Examples  
  
### A. Refreshing a user-defined function  
 The following example refreshes a user-defined function. The example creates an alias data type, `mytype`, and a user-defined function, `to_upper`, that uses `mytype`. Then, `mytype` is renamed to `myoldtype`, and a new `mytype` is created that has a different definition. The `dbo.to_upper` function is refreshed so that it references the new implementation of `mytype`, instead of the old one.  
  
```  
-- Create an alias type.  
USE AdventureWorks2012;  
GO  
IF EXISTS (SELECT 'mytype' FROM sys.types WHERE name = 'mytype')  
DROP TYPE mytype;  
GO  
  
CREATE TYPE mytype FROM nvarchar(5);  
GO  
  
IF OBJECT_ID ('dbo.to_upper', 'FN') IS NOT NULL  
DROP FUNCTION dbo.to_upper;  
GO  
  
CREATE FUNCTION dbo.to_upper (@a mytype)  
RETURNS mytype  
WITH ENCRYPTION  
AS  
BEGIN  
RETURN upper(@a)  
END;  
GO  
  
SELECT dbo.to_upper('abcde');  
GO  
  
-- Increase the length of the alias type.  
sp_rename 'mytype', 'myoldtype', 'userdatatype';  
GO  
  
CREATE TYPE mytype FROM nvarchar(10);  
GO  
  
-- The function parameter still uses the old type.  
SELECT name, type_name(user_type_id)   
FROM sys.parameters   
WHERE object_id = OBJECT_ID('dbo.to_upper');  
GO  
  
SELECT dbo.to_upper('abcdefgh'); -- Fails because of truncation  
GO  
  
-- Refresh the function to bind to the renamed type.  
EXEC sys.sp_refreshsqlmodule 'dbo.to_upper';  
  
-- The function parameters are now bound to the correct type and the statement works correctly.  
SELECT name, type_name(user_type_id) FROM sys.parameters  
WHERE object_id = OBJECT_ID('dbo.to_upper');  
GO  
  
SELECT dbo.to_upper('abcdefgh');  
GO  
```  
  
### B. Refreshing a database-level DDL trigger  
 The following example refreshes a database-level DDL trigger.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sys.sp_refreshsqlmodule @name = 'ddlDatabaseTriggerLog' , @namespace = 'DATABASE_DDL_TRIGGER';  
GO  
```  
  
### C. Refreshing a server-level DDL trigger  
 The following example refreshes a server-level DDL trigger.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].|  
  
```  
USE master;  
GO  
EXEC sys.sp_refreshsqlmodule @name = 'ddl_trig_database' , @namespace = 'SERVER_DDL_TRIGGER';  
GO  
  
```  
  
## See Also  
 [sp_refreshview &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-refreshview-transact-sql.md)   
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)  
  
  