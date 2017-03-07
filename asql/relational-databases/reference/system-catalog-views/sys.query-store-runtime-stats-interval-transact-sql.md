---
title: "sys.query_store_runtime_stats_interval (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "QUERY_STORE_RUNTIME_STATS_INTERVAL"
  - "SYS.QUERY_STORE_RUNTIME_STATS_INTERVAL"
  - "QUERY_STORE_RUNTIME_STATS_INTERVAL_TSQL"
  - "SYS.QUERY_STORE_RUNTIME_STATS_INTERVAL_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.query_store_runtime_stats_interval catalog view"
  - "query_store_runtime_stats_interval catalog view"
ms.assetid: 2be83785-0569-41a3-88c8-59bfa0932e6e
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.query_store_runtime_stats_interval (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Contains  information about the start and end time of each interval over which runtime execution statistics information for a query has been collected.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**runtime_stats_interval_id**|**bigint**|Primary key.|  
|**start_time**|**datetimeoffset**|Start time of the interval.|  
|**end_time**|**datetimeoffset**|End time of the interval.|  
|**comment**|**nvarchar(32)**|Always NULL.|  
  
## Permissions  
 Requires the **VIEW DATABASE STATE** permission.  
  
## See Also  
 [sys.database_query_store_options &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.database-query-store-options-transact-sql.md)   
 [sys.query_context_settings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-context-settings-transact-sql.md)   
 [sys.query_store_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-plan-transact-sql.md)   
 [sys.query_store_query &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-query-transact-sql.md)   
 [sys.query_store_query_text &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-query-text-transact-sql.md)   
 [sys.query_store_runtime_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-runtime-stats-transact-sql.md)   
 [Monitoring Performance By Using the Query Store](../../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Query Store Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/query-store-stored-procedures-transact-sql.md)  
  
  