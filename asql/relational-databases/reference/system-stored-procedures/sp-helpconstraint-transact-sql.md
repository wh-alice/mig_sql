---
title: "sp_helpconstraint (Transact-SQL) | Microsoft Docs"
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
  - "sp_helpconstraint"
  - "sp_helpconstraint_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_helpconstraint"
ms.assetid: 29d6cd36-535d-4765-bca8-62f9d9886ff5
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpconstraint (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a list of all constraint types, their user-defined or system-supplied name, the columns on which they have been defined, and the expression that defines the constraint (for DEFAULT and CHECK constraints only).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_helpconstraint [ @objname = ] 'table'   
     [ , [ @nomsg = ] 'no_message' ]   
```  
  
## Arguments  
 [ **@objname=** ] **'***table***'**  
 Is the table about which constraint information is returned. The table specified must be local to the current database. *table* is **nvarchar(776)**, with no default.  
  
 [ **@nomsg=**] **'***no_message***'**  
 Is an optional parameter that prints the table name. *no_message* is **varchar(5)**, with a default of **msg**. **nomsg** suppresses the printing.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 **sp_helpconstraint** displays a descending indexed column if it participated in primary keys. The descending indexed column will be listed in the result set with a minus sign (-) following its name. The default, an ascending indexed column, will be listed by its name alone.  
  
## Remarks  
 Executing **sp_help***table* reports all information about the specified table. To see only the constraint information, use **sp_helpconstraint**.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following example shows all constraints for the `Product` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_helpconstraint 'Production.Product';  
```  
  
## See Also  
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [ALTER TABLE &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-table-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../../t-sql/statements/create-table-transact-sql.md)   
 [sp_help &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [sys.key_constraints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.key-constraints-transact-sql.md)   
 [sys.check_constraints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.check-constraints-transact-sql.md)   
 [sys.default_constraints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.default-constraints-transact-sql.md)  
  
  