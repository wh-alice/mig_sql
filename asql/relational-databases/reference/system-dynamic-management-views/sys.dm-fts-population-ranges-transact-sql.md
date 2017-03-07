---
title: "sys.dm_fts_population_ranges (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_fts_population_ranges"
  - "sys.dm_fts_population_ranges_TSQL"
  - "dm_fts_population_ranges_TSQL"
  - "dm_fts_population_ranges"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_fts_population_ranges dynamic management view"
ms.assetid: 58d8564b-9c43-4965-a31c-2893890334ef
caps.latest.revision: 31
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.dm_fts_population_ranges (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about the specific ranges related to a full-text index population currently in progress.  
   
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**memory_address**|**varbinary(8)**|Address of memory buffers allocated for activity related to this subrange of a full-text index population.|  
|**parent_memory_address**|**varbinary(8)**|Address of memory buffers representing the parent object of all ranges of population related to a full-text index.|  
|**is_retry**|**bit**|If the value is 1, this subrange is responsible for retrying rows that encountered errors.|  
|**session_id**|**smallint**|ID of the session that is currently processing this task.|  
|**processed_row_count**|**int**|Number of rows that have been processed by this range. Forward progress is persisted and counted every 5 minutes, rather than with every batch commit.|  
|**error_count**|**int**|Number of rows that have encountered errors by this range. Forward progress is persisted and counted every 5 minutes, rather than with every batch commit.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Physical Joins  
 ![Significant joins of this dynamic management view](../../../relational-databases/reference/system-dynamic-management-views/media/join-dm-fts-population-ranges-1.gif "Significant joins of this dynamic management view")  
  
## Relationship Cardinalities  
  
|From|To|Relationship|  
|----------|--------|------------------|  
|dm_fts_population_ranges.parent_memory_address|dm_fts_index_population.memory_address|Many-to-one|  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Full-Text Search and Semantic Search Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/199dbd5a-29f6-4ef0-8e65-86e32c0aaa3a.md)  
  
  