---
title: "sys.fulltext_stoplists (Transact-SQL) | Microsoft Docs"
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
  - "sys.fulltext_stoplists"
  - "sys.fulltext_stoplists_TSQL"
  - "fulltext_stoplists_TSQL"
  - "fulltext_stoplists"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "stoplists [full-text search]"
  - "full-text search [SQL Server], stoplists"
  - "sys.fulltext_stoplists catalog view"
  - "stopwords [full-text search]"
ms.assetid: eb69fb8f-f6d9-446e-83c0-67afd05dfba0
caps.latest.revision: 23
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_stoplists (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Contains a row per full-text stoplist in the database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**stoplist_id**|**int**|ID of the stoplist, unique within the database.|  
|**name**|**sysname**|Name of the stoplist.|  
|**create_date**|**datetime**|Date that stoplist was created.|  
|**modify_date**|**datetime**|Date that stoplist was last modified using any ALTER statement.|  
|**Principal_id**|**int**|ID of the database principal that owns the stoplist.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [sys.fulltext_system_stopwords &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-system-stopwords-transact-sql.md)   
 [sys.fulltext_stopwords &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-stopwords-transact-sql.md)   
 [Configure and Manage Stopwords and Stoplists for Full-Text Search](../../../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)   
 [CREATE FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../../../t-sql/statements/create-fulltext-stoplist-transact-sql.md)   
 [ALTER FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-fulltext-stoplist-transact-sql.md)   
 [DROP FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-fulltext-stoplist-transact-sql.md)  
  
  