---
title: "sp_helptext (Transact-SQL) | Microsoft Docs"
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
  - "sp_helptext"
  - "sp_helptext_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_helptext"
ms.assetid: 24135456-05f0-427c-884b-93cf38dd47a8
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helptext (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Displays the definition of a user-defined rule, default, unencrypted [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] stored procedure, user-defined [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] function, trigger, computed column, CHECK constraint, view, or system object such as a system stored procedure.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_helptext [ @objname = ] 'name' [ , [ @columnname = ] computed_column_name ]  
```  
  
## Arguments  
 [ **@objname =** ] **'***name***'**  
 Is the qualified or nonqualified name of a user-defined, schema-scoped object. Quotation marks are required only if a qualified object is specified. If a fully qualified name, including a database name, is provided, the database name must be the name of the current database. The object must be in the current database. *name* is **nvarchar(776)**, with no default.  
  
 [ **@columnname =** ] **'***computed_column_name***'**  
 Is the name of the computed column for which to display definition information. The table that contains the column must be specified as *name*. *column_name* is **sysname**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**Text**|**nvarchar(255)**|Object definition|  
  
## Remarks  
 sp_helptext displays the definition that is used to create an object in multiple rows. Each row contains 255 characters of the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] definition. The definition resides in the **definition** column in the [sys.sql_modules](../../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md) catalog view.  
  
## Permissions  
 Requires membership in the **public** role. System object definitions are publicly visible. The definition of user objects is visible to the object owner or grantees that have any one of the following permissions: ALTER, CONTROL, TAKE OWNERSHIP, or VIEW DEFINITION.  
  
## Examples  
  
### A. Displaying the definition of a trigger  
 The following example displays the definition of the trigger `dEmployee` in the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)]database.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_helptext 'HumanResources.dEmployee';  
GO  
```  
  
### B. Displaying the definition of a computed column  
 The following example displays the definition of the computed column `TotalDue` on the `SalesOrderHeader` table in the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
USE AdventureWorks2012;  
GO  
sp_helptext @objname = N'AdventureWorks2012.Sales.SalesOrderHeader', @columnname = TotalDue ;  
GO  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
 `Text`  
  
 `---------------------------------------------------------------------`  
  
 `(isnull(([SubTotal]+[TaxAmt])+[Freight],(0)))`  
  
## See Also  
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [OBJECT_DEFINITION &#40;Transact-SQL&#41;](../../../t-sql/functions/object-definition-transact-sql.md)   
 [sp_help &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-transact-sql.md)   
 [sys.sql_modules &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  