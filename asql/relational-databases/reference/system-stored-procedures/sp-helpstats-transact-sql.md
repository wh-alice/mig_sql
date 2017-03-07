---
title: "sp_helpstats (Transact-SQL) | Microsoft Docs"
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
  - "sp_helpstats"
  - "sp_helpstats_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_helpstats"
ms.assetid: 00ab3cfd-2736-4fc0-b1b2-16dd49fb2fe5
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpstats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns statistics information about columns and indexes on the specified table.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepNextAvoid](../../../analysis-services/multidimensional-models-olap-logical-dimension-objects/includes/ssnotedepnextavoid-md.md)] To obtain information about statistics, query the [sys.stats](../../../relational-databases/reference/system-catalog-views/sys.stats-transact-sql.md) and [sys.stats_columns](../../../relational-databases/reference/system-catalog-views/sys.stats-columns-transact-sql.md) catalog views.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)]|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_helpstats[ @objname = ] 'object_name'   
     [ , [ @results = ] 'value' ]  
```  
  
## Arguments  
 [ **@objname=**] **'***object_name***'**  
 Specifies the table on which to provide statistics information. *object_name* is **nvarchar(520)** and cannot be null. A one- or two-part name can be specified.  
  
 [ **@results=**] **'***value***'**  
 Specifies the extent of information to provide. Valid entries are **ALL** and **STATS**. **ALL** lists statistics for all indexes and also columns that have statistics created on them; **STATS** only lists statistics not associated with an index. *value* is **nvarchar(5)** with a default of STATS.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 The following table describes the columns in the result set.  
  
|Column name|Description|  
|-----------------|-----------------|  
|**statistics_name**|The name of the statistics. Returns **sysname** and cannot be null.|  
|**statistics_keys**|The keys on which statistics are based. Returns **nvarchar(2078)** and cannot be null.|  
  
## Remarks  
 Use DBCC SHOW_STATISTICS to display detailed statistics information about any particular index or statistics. For more information, see [DBCC SHOW_STATISTICS &#40;Transact-SQL&#41;](../../../t-sql/database-console-commands/dbcc-show-statistics-transact-sql.md) and [sp_helpindex &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpindex-transact-sql.md).  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following example creates single-column statistics for all eligible columns for all user tables in the [!INCLUDE[ssSampleDBobject](../../../a9retired/includes/sssampledbobject-md.md)] database by executing `sp_createstats`. Then, `sp_helpstats` is run to find the resultant statistics created on the `Customer` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_createstats;  
GO  
EXEC sp_helpstats   
@objname = 'Sales.Customer',  
@results = 'ALL';  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
 `statistics_name               statistics_keys`  
  
 `----------------------------  ----------------`  
  
 `_WA_Sys_00000003_22AA2996     AccountNumber`  
  
 `AK_Customer_AccountNumber     AccountNumber`  
  
 `AK_Customer_rowguid           rowguid`  
  
 `CustomerType                  CustomerType`  
  
 `IX_Customer_TerritoryID       TerritoryID`  
  
 `ModifiedDate                  ModifiedDate`  
  
 `PK_Customer_CustomerID        CustomerID`  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)  
  
  