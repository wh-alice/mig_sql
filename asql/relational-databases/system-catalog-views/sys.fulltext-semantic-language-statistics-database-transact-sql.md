---
title: "sys.fulltext_semantic_language_statistics_database (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.fulltext_semantic_language_statistics_database_TSQL"
  - "fulltext_semantic_language_statistics_database_TSQL"
  - "fulltext_semantic_language_statistics_database"
  - "sys.fulltext_semantic_language_statistics_database"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.fulltext_semantic_language_statistics_database catalog view"
ms.assetid: 32e95614-ed88-4068-8c37-1e21544717bc
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_semantic_language_statistics_database (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row about the semantic language statistics database installed on the current instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 You can query this view to find out about the semantic language statistics component required for semantic processing.  
   
  
||||  
|-|-|-|  
|**Column name**|**Type**|**Description**|  
|**database_id**|**int**|ID of the database, unique within an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|**register_date**|**datetime**|Date the database was registered for semantic processing.|  
|**registered_by**|**int**|ID of the server principal that registered the database for semantic processing.|  
|**version**|**nvarchar(128)**|The latest version information specific to the semantic language statistics database.|  
  
## General Remarks  
 For more information, see [Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md).  
  
## Metadata  
 For information about the languages that are supported for semantic indexing, query the catalog view [sys.fulltext_semantic_languages &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.fulltext-semantic-languages-transact-sql.md).  
  
## Security  
  
### Permissions  
 The visibility of the metadata in catalog views is limited to securables that a user either owns or on which the user has been granted some permission.  
  
## Examples  
 The following example shows how to query **sys.fulltext_semantic_language_statistics_database** to get information about the semantic language statistics database registered on the current instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
```  
SELECT * FROM sys.fulltext_semantic_language_statistics_database;  
GO  
```  
  
## See Also  
 [Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md)  
  
  