---
title: "sys.dm_db_index_usage_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-07"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_db_index_usage_stats_TSQL"
  - "sys.dm_db_index_usage_stats"
  - "sys.dm_db_index_usage_stats_TSQL"
  - "dm_db_index_usage_stats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_index_usage_stats dynamic management view"
ms.assetid: d06a001f-0f72-4679-bc2f-66fff7958b86
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_db_index_usage_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns counts of different types of index operations and the time each type of operation was last performed in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 In [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)], dynamic management views cannot expose information that would impact database containment or expose information about other databases the user has access to. To avoid exposing this information, every row that contains data that doesn’t belong to the connected tenant is filtered out.  
  
> [!NOTE]  
>  **sys.dm_db_index_usage_stats** does not return information about memory-optimized indexes. For information about memory-optimized index use, see [sys.dm_db_xtp_index_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-db-xtp-index-stats-transact-sql.md).  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_db_index_usage_stats**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**smallint**|ID of the database on which the table or view is defined.|  
|**object_id**|**int**|ID of the table or view on which the index is defined|  
|**index_id**|**int**|ID of the index.|  
|**user_seeks**|**bigint**|Number of seeks by user queries.|  
|**user_scans**|**bigint**|Number of scans by user queries. This represents scans that did not use 'seek' predicate.|  
|**user_lookups**|**bigint**|Number of bookmark lookups by user queries.|  
|**user_updates**|**bigint**|Number of updates by user queries. This includes Insert, Delete and Updates representing number of operations done not the actual rows affected. For example, if you delete 1000 rows in one statement, this count will increment by 1|  
|**last_user_seek**|**datetime**|Time of last user seek|  
|**last_user_scan**|**datetime**|Time of last user scan.|  
|**last_user_lookup**|**datetime**|Time of last user lookup.|  
|**last_user_update**|**datetime**|Time of last user update.|  
|**system_seeks**|**bigint**|Number of seeks by system queries.|  
|**system_scans**|**bigint**|Number of scans by system queries.|  
|**system_lookups**|**bigint**|Number of lookups by system queries.|  
|**system_updates**|**bigint**|Number of updates by system queries.|  
|**last_system_seek**|**datetime**|Time of last system seek.|  
|**last_system_scan**|**datetime**|Time of last system scan.|  
|**last_system_lookup**|**datetime**|Time of last system lookup.|  
|**last_system_update**|**datetime**|Time of last system update.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Remarks  
 Every individual seek, scan, lookup, or update on the specified index by one query execution is counted as a use of that index and increments the corresponding counter in this view. Information is reported both for operations caused by user-submitted queries, and for operations caused by internally generated queries, such as scans for gathering statistics.  
  
 The **user_updates** counter indicates the level of maintenance on the index caused by insert, update, or delete operations on the underlying table or view. You can use this view to determine which indexes are used only lightly by your applications. You can also use the view to determine which indexes are incurring maintenance overhead. You may want to consider dropping indexes that incur maintenance overhead, but are not used for queries, or are only infrequently used for queries.  
  
 The counters are initialized to empty whenever the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (MSSQLSERVER) service is started. In addition, whenever a database is detached or is shut down (for example, because AUTO_CLOSE is set to ON), all rows associated with the database are removed.  
  
 When an index is used, a row is added to **sys.dm_db_index_usage_stats** if a row does not already exist for the index. When the row is added, its counters are initially set to zero.  
  
 During upgrade to [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)], [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)], or [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)], entries in sys.dm_db_index_usage_stats are removed. Beginning with [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)], entries are retained as they were prior to [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].  
  
## Permissions  
 Requires VIEW SERVER STATE permission. For more information, see [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md).  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Index Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/index-related-dynamic-management-views-and-functions-transact-sql.md)   
 [sys.dm_db_index_physical_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-db-index-physical-stats-transact-sql.md)   
 [sys.dm_db_index_operational_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-db-index-operational-stats-transact-sql.md)   
 [sys.indexes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.indexes-transact-sql.md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [Monitor and Tune for Performance](../../../relational-databases/performance/monitor-and-tune-for-performance.md)  
  
  

