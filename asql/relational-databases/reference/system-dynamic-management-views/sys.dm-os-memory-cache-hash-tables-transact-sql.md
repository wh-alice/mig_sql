---
title: "sys.dm_os_memory_cache_hash_tables (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_os_memory_cache_hash_tables_TSQL"
  - "sys.dm_os_memory_cache_hash_tables"
  - "dm_os_memory_cache_hash_tables"
  - "dm_os_memory_cache_hash_tables_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_memory_cache_hash_tables dynamic management view"
ms.assetid: 68b94f35-8f80-4d2b-bcde-7a21934219af
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_memory_cache_hash_tables (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns a row for each active cache in the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_memory_cache_hash_tables**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**cache_address**|**varbinary(8)**|Address (primary key) of the cache entry. Is not nullable.|  
|**name**|**nvarchar(256)**|Name of the cache. Is not nullable.|  
|**type**|**nvarchar(60)**|Type of cache. Is not nullable.|  
|**table_level**|**int**|Hash table number. A particular cache may have multiple hash tables that correspond to different hash functions. Is not nullable.|  
|**buckets_count**|**int**|Number of buckets in the hash table. Is not nullable.|  
|**buckets_in_use_count**|**int**|Number of buckets that are currently being used. Is not nullable.|  
|**buckets_min_length**|**int**|Minimum number of cache entries in a bucket. Is not nullable.|  
|**buckets_max_length**|**int**|Maximum number of cache entries in a bucket. Is not nullable.|  
|**buckets_avg_length**|**int**|Average number of cache entries in each bucket. Is not nullable.|  
|**buckets_max_length_ever**|**int**|Maximum number of cached entries in a hash bucket for this hash table since the server was started. Is not nullable.|  
|**hits_count**|**bigint**|Number of cache hits. Is not nullable.|  
|**misses_count**|**bigint**|Number of cache misses. Is not nullable.|  
|**buckets_avg_scan_hit_length**|**int**|Average number of examined entries in a bucket before the searched for an item was found. Is not nullable.|  
|**buckets_avg_scan_miss_length**|**int**|Average number of examined entries in a bucket before the search ended unsuccessfully. Is not nullable.|  
|**pdw_node_id**|**int**|The identifier for the node that this distribution is on.<br /><br /> **Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

