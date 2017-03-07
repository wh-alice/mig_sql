---
title: "sp_help_fulltext_catalogs (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_fulltext_catalogs_TSQL"
  - "sp_help_fulltext_catalogs"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_fulltext_catalogs"
ms.assetid: 1b94f280-e095-423f-88bc-988c9349d44c
caps.latest.revision: 36
ms.author: "douglasl"
manager: "jhubbard"
---
# sp_help_fulltext_catalogs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the ID, name, root directory, status, and number of full-text indexed tables for the specified full-text catalog.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use the [sys.fulltext_catalogs](../../relational-databases/system-catalog-views/sys.fulltext-catalogs-transact-sql.md) catalog view instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_help_fulltext_catalogs [ @fulltext_catalog_name = ] 'fulltext_catalog_name'  
```  
  
## Arguments  
 [ **@fulltext_catalog_name=**] **'***fulltext_catalog_name***'**  
 Is the name of the full-text catalog. *fulltext_catalog_name* is **sysname**. If this parameter is omitted or has the value NULL, information about all full-text catalogs associated with the current database is returned.  
  
## Return Code Values  
 0 (success) or (1) failure  
  
## Result Sets  
 This table shows the result set, which is ordered by **ftcatid**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**fulltext_catalog_id**|**smallint**|Full-text catalog identifier.|  
|**NAME**|**sysname**|Name of the full-text catalog.|  
|**PATH**|**nvarchar(260)**|Beginning with [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)], this clause has no effect.|  
|**STATUS**|**int**|Full-text index population status of the catalog:<br /><br /> 0 = Idle<br /><br /> 1 = Full population in progress<br /><br /> 2 = Paused<br /><br /> 3 = Throttled<br /><br /> 4 = Recovering<br /><br /> 5 = Shutdown<br /><br /> 6 = Incremental population in progress<br /><br /> 7 = Building index<br /><br /> 8 = Disk is full. Paused<br /><br /> 9 = Change tracking<br /><br /> NULL = User does not have VIEW permission on the full-text catalog, or database is not full-text enabled, or full-text component not installed.|  
|**NUMBER_FULLTEXT_TABLES**|**int**|Number of full-text indexed tables associated with the catalog.|  
  
## Permissions  
 Execute permissions default to members of the **public** role.  
  
## Examples  
 The following example returns information about the `Cat_Desc` full-text catalog.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_help_fulltext_catalogs 'Cat_Desc' ;  
GO  
```  
  
## See Also  
 [FULLTEXTCATALOGPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/fulltextcatalogproperty-transact-sql.md)   
 [sp_fulltext_catalog &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-fulltext-catalog-transact-sql.md)   
 [sp_help_fulltext_catalogs_cursor &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-fulltext-catalogs-cursor-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  