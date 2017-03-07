---
title: "sp_fulltext_load_thesaurus_file (Transact-SQL) | Microsoft Docs"
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
  - "sp_fulltext_load_thesaurus_file"
  - "sp_fulltext_load_thesaurus_file_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_fulltext_load_thesaurus_file"
  - "full-text indexes [SQL Server], thesaurus files"
  - "thesaurus [full-text search], editing"
ms.assetid: 73a309c3-6d22-42dc-a6fe-8a63747aa2e4
caps.latest.revision: 22
ms.author: "douglasl"
manager: "jhubbard"
---
# sp_fulltext_load_thesaurus_file (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Causes the server instance to parse and load the data from the thesaurus file that corresponds to the language whose LCID is specified. This stored procedure is useful after updating a thesaurus file. Executing **sp_fulltext_load_thesaurus_file** causes recompilation of full-text queries that use the thesaurus of the specified LCID.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sys.sp_fulltext_load_thesaurus_file lcid [ , @loadOnlyIfNotLoaded  = action ]   
```  
  
## Arguments  
 *lcid*  
 Integer mapping the locale identifier (LCID) of the language for which you want to lade the thesaurus XML definition. To obtain the LCIDs of languages that are available on a server instance, use the [sys.fulltext_languages &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.fulltext-languages-transact-sql.md) catalog view.  
  
 **@loadOnlyIfNotLoaded** = *action*  
 Specifies whether the thesaurus file is loaded into the internal thesaurus tables even if it has already been loaded. *action* is one of:  
  
|Value|Definition|  
|-----------|----------------|  
|**0**|Load the thesaurus file regardless of whether it is already loaded. This is the default behavior of **sp_fulltext_load_thesaurus_file**.|  
|1|Load the thesaurus file only if it is not yet loaded.|  
  
## Return Code Values  
 None  
  
## Result Sets  
 None  
  
## Remarks  
 Thesaurus files are automatically loaded by full-text queries that use the thesaurus. To avoid this first-time performance impact on full-text queries, we recommend that you execute **sp_fulltext_load_thesaurus_file**.  
  
 Use [sp_fulltext_service](../../relational-databases/system-stored-procedures/sp-fulltext-service-transact-sql.md)'**update_languages**' to update the list of languages registered with full-text search.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the system administrator can execute the **sp_fulltext_load_thesaurus_file** stored procedure.  
  
 Only system administrators can update, modify, or delete thesaurus files.  
  
## Examples  
  
### A. Load a thesaurus file even if it is already loaded  
 The following example parses and loads the English thesaurus file.  
  
```  
EXEC sys.sp_fulltext_load_thesaurus_file 1033;  
GO  
```  
  
### B. Load a thesaurus file only if it is not yet loaded  
 The following example parses and loads the Arabic thesaurus file, unless it is already loaded.  
  
```  
EXEC sys.sp_fulltext_load_thesaurus_file 1025, @loadOnlyIfNotLoaded = 1;  
GO  
```  
  
## See Also  
 [FULLTEXTSERVICEPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/fulltextserviceproperty-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Configure and Manage Thesaurus Files for Full-Text Search](../../relational-databases/search/configure-and-manage-thesaurus-files-for-full-text-search.md)   
 [Configure and Manage Thesaurus Files for Full-Text Search](../../relational-databases/search/configure-and-manage-thesaurus-files-for-full-text-search.md)  
  
  