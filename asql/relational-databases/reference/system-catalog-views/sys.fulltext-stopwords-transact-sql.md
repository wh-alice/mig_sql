---
title: "sys.fulltext_stopwords (Transact-SQL) | Microsoft Docs"
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
  - "fulltext_stopwords_TSQL"
  - "fulltext_stopwords"
  - "sys.fulltext_stopwords"
  - "sys.fulltext_stopwords_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "stoplists [full-text search]"
  - "full-text search [SQL Server], stopwords"
  - "sys.fulltext_stopwords catalog view"
  - "stopwords [full-text search]"
ms.assetid: 79787bb7-d729-448e-b56a-0a467bbb304f
caps.latest.revision: 29
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_stopwords (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Contains a row per stopword for all stoplists in the database.  
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**stoplist_id**|**int**|ID of the stoplist to which **stopword** belongs. This ID is  unique within the database.|  
|**stopword**|**nvarchar(64)**|The term to be considered for a stop-word match.|  
|**language**|**sysname**|Is either the value of the alias in [sys.fulltext_languages](../../../relational-databases/reference/system-catalog-views/sys.fulltext-languages-transact-sql.md)corresponding to the value of the locale identifier (**LCID**), or is the string representation of the numeric LCID.|  
|**language_id**|**int**|LCID used for word breaking.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Configure and Manage Stopwords and Stoplists for Full-Text Search](../../../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)   
 [sys.fulltext_stoplists &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-stoplists-transact-sql.md)   
 [sys.fulltext_system_stopwords &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-system-stopwords-transact-sql.md)  
  
  