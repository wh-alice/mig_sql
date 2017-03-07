---
title: "sp_helpindex (Transact-SQL) | Microsoft Docs"
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
  - "sp_helpindex_TSQL"
  - "sp_helpindex"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_helpindex"
ms.assetid: c7f73ba0-ec35-4b10-aa5f-f1487e51fbf7
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpindex (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Reports information about the indexes on a table or view.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_helpindex [ @objname = ] 'name'  
```  
  
## Arguments  
 [ **@objname=** ] **'***name***'**  
 Is the qualified or nonqualified name of a user-defined table or view. Quotation marks are required only if a qualified table or view name is specified. If a fully qualified name, including a database name, is provided, the database name must be the name of the current database. *name* is **nvarchar(776)**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**index_name**|**sysname**|Index name.|  
|**index_description**|**varchar(210)**|Index description including the filegroup it is located on.|  
|**index_keys**|**nvarchar(2078)**|Table or view columns upon which the index is built.|  
  
 A descending indexed column will be listed in the result set with a minus sign (-) following its name; an ascending indexed column, the default, will be listed by its name alone.  
  
## Remarks  
 If indexes have been set by using the NORECOMPUTE option of UPDATE STATISTICS, that information is included in the **index_description** column.  
  
 **sp_helpindex** exposes only orderable index columns; therefore, it does not expose information about XML indexes or spatial indexes.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following example reports on the types of indexes on the `Customer` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_helpindex N'Sales.Customer';  
GO  
```  
  
## See Also  
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [sys.indexes &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.indexes-transact-sql.md)   
 [sys.index_columns &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.index-columns-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [UPDATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/update-statistics-transact-sql.md)  
  
  