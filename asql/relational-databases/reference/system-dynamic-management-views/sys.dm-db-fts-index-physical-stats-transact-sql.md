---
title: "sys.dm_db_fts_index_physical_stats (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_db_fts_index_physical_stats_TSQL"
  - "dm_db_fts_index_physical_stats"
  - "dm_db_fts_index_physical_stats_TSQL"
  - "sys.dm_db_fts_index_physical_stats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_fts_index_physical_stats dynamic management view"
ms.assetid: 997c3278-3630-47f6-ada3-190b6c16ce0e
caps.latest.revision: 8
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_db_fts_index_physical_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns a row for each full-text or semantic index in each table that has an associated full-text or semantic index.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
||||  
|-|-|-|  
|**Column name**|**Type**|**Description**|  
|**object_id**|int|Object ID of the table that contains the index.|  
|**fulltext_index_page_count**|**bigint**|Logical size of the extraction in number of index pages.|  
|**keyphrase_index_page_count**|**bigint**|Logical size of the extraction in number of index pages.|  
|**similarity_index_page_count**|**bigint**|Logical size of the extraction in number of index pages.|  
  
## General Remarks  
 For more information, see [Manage and Monitor Semantic Search](../../../relational-databases/search/manage-and-monitor-semantic-search.md).  
  
## Metadata  
 For information about the status of semantic indexing, query the following dynamic management views:  
  
-   [sys.dm_fts_index_population &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-fts-index-population-transact-sql.md)  
  
-   [sys.dm_fts_semantic_similarity_population &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-fts-semantic-similarity-population-transact-sql.md)  
  
## Security  
  
### Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Examples  
 The following example shows how to query for the logical size of each full-text or semantic index in every table that has an associated full-text or semantic index:  
  
```  
SELECT * FROM sys.dm_db_fts_index_physical_stats;  
GO  
```  
  
## See Also  
 [Manage and Monitor Semantic Search](../../../relational-databases/search/manage-and-monitor-semantic-search.md)  
  
  