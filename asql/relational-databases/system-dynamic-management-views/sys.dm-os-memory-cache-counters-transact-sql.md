---
title: "sys.dm_os_memory_cache_counters (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_os_memory_cache_counters_TSQL"
  - "dm_os_memory_cache_counters_TSQL"
  - "sys.dm_os_memory_cache_counters"
  - "dm_os_memory_cache_counters"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_memory_cache_counters dynamic management view"
ms.assetid: ca7bd036-d661-4c17-b00a-e1a975bd8932
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_memory_cache_counters (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns a snapshot of the health of a cache in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. **sys.dm_os_memory_cache_counters** provides run-time information about the cache entries allocated, their use, and the source of memory for the cache entries.  
  
> **NOTE:** To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_memory_cache_counters**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**cache_address**|**varbinary(8)**|Indicates the address (primary key) of the counters associated with a specific cache. Is not nullable.|  
|**name**|**nvarchar(256)**|Specifies the name of the cache. Is not nullable.|  
|**type**|**nvarchar(60)**|Indicates the type of cache that is associated with this entry. Is not nullable.|  
|**single_pages_kb**|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].<br /><br /> Amount, in kilobytes, of the single-page memory allocated. This is the amount of memory allocated by using the single-page allocator. This refers to the 8-KB pages that are taken directly from the buffer pool for this cache. Is not nullable.|  
|**pages_kb**|**bigint**|**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Specifies the amount, in kilobytes, of the memory allocated in the cache. Is not nullable.|  
|**multi_pages_kb**|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].<br /><br /> Amount, in kilobytes, of the multipage memory allocated. This is the amount of memory allocated by using the multiple-page allocator of the memory node. This memory is allocated outside the buffer pool and takes advantage of the virtual allocator of the memory nodes. Is not nullable.|  
|**pages_in_use_kb**|**bigint**|**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Specifies the amount, in kilobytes, of the memory that is allocated and in use in the cache. Is nullable.  Values for objects of type `USERSTORE_<*>` are not tracked.  NULL is reported for them.|  
|**single_pages_in_use_kb**|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].<br /><br /> Amount, in kilobytes, of the single-page memory that is being used. Is nullable. This information is not tracked for objects of type USERSTORE_\<*> and these values will be NULL.|  
|**multi_pages_in_use_kb**|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].<br /><br /> Amount, in kilobytes, of the multipage memory that is being used. NULLABLE. This information is not tracked for objects of type USERSTORE_\<*>, and these values will be NULL.|  
|**entries_count**|**bigint**|Indicates the number of entries in the cache. Is not nullable.|  
|**entries_in_use_count**|**bigint**|Indicates the number of entries in the cache that is being used. Is not nullable.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

