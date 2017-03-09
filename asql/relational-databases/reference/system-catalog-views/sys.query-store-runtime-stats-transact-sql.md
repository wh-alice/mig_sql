---
title: "sys.query_store_runtime_stats (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-03-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "SYS.QUERY_STORE_RUNTIME_STATS_TSQL"
  - "QUERY_STORE_RUNTIME_STATS_TSQL"
  - "SYS.QUERY_STORE_RUNTIME_STATS"
  - "QUERY_STORE_RUNTIME_STATS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "query_store_runtime_stats catalog view"
  - "sys.query_store_runtime_stats catalog view"
ms.assetid: ccf7a57c-314b-450c-bd34-70749a02784a
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.query_store_runtime_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Contains  information about the runtime execution statistics information for the query.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**runtime_stats_id**|**bigint**|Identifier of the row representing runtime execution statistics for the **plan_id**, **execution_type** and **runtime_stats_interval_id**. It is unique only for the past runtime statistics intervals. For currently active interval there may be multiple rows representing runtime statistics for the plan referenced by **plan_id**, with the execution type represented by **execution_type**. Typically, one row represents runtime statistics that are flushed to disk, while other(s) represent in-memory state. Hence, to get actual state for every interval you need to aggregate metrics, grouping by **plan_id**, **execution_type** and **runtime_stats_interval_id**. |  
|**plan_id**|**bigint**|Foreign key. Joins to [sys.query_store_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-plan-transact-sql.md).|  
|**runtime_stats_interval_id**|**bigint**|Foreign key. Joins to [sys.query_store_runtime_stats_interval &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-runtime-stats-interval-transact-sql.md).|  
|**execution_type**|**tinyint**|Determines type of query execution:<br /><br /> 0 – Regular execution (successfully finished)<br /><br /> 3 – Client initiated aborted execution<br /><br /> 4 -  Exception aborted execution|  
|**execution_type_desc**|**nvarchar(128)**|Textual description of the execution type field:<br /><br /> 0 –  Regular<br /><br /> 3 –  Aborted<br /><br /> 4 -  Exception|  
|**first_execution_time**|**datetimeoffset**|First execution time for the query plan within the aggregation interval.|  
|**last_execution_time**|**datetimeoffset**|Last execution time for the query plan within the aggregation interval.|  
|**count_executions**|**bigint**|Total count of executions for the query plan within the aggregation interval.|  
|**avg_duration**|**float**|Average duration for the query plan within the aggregation interval (reported in microseconds) .|  
|**last_duration**|**bigint**|Last duration for the query plan within the aggregation interval (reported in microseconds).|  
|**min_duration**|**bigint**|Minimum duration for the query plan within the aggregation interval (reported in microseconds).|  
|**max_duration**|**bigint**|Maximum duration for the query plan within the aggregation interval (reported in microseconds).|  
|**stdev_duration**|**float**|Duration standard deviation for the query plan within the aggregation interval (reported in microseconds).|  
|**avg_cpu_time**|**float**|Average CPU time for the query plan within the aggregation interval (reported in microseconds).|  
|**last_cpu_time**|**bigint**|Last CPU time for the query plan within the aggregation interval (reported in microseconds).|  
|**min_cpu_time**|**bigint**|Minimum CPU time for the query plan within the aggregation interval (reported in microseconds).|  
|**max_cpu_time**|**bigint**|Maximum CPU time for the query plan within the aggregation interval (reported in microseconds).|  
|**stdev_cpu_time**|**float**|CPU time standard deviation for the query plan within the aggregation interval (reported in microseconds).|  
|**avg_logical_io_reads**|**float**|Average number of logical IO reads for the query plan within the aggregation interval. (expressed as a number of 8KB pages read).|  
|**last_logical_io_reads**|**bigint**|Last number of logical IO reads for the query plan within the aggregation interval. (expressed as a number of 8KB pages read).|  
|**min_logical_io_reads**|**bigint**|Minimum number of logical IO reads for the query plan within the aggregation interval. (expressed as a number of 8KB pages read).|  
|**max_logical_io_reads**|**bigint**|Maximum number of logical IO reads for the query plan within the aggregation interval.(expressed as a number of 8KB pages read). |  
|**stdev_logical_io_reads**|**float**|Number of logical IO reads standard deviation for the query plan within the aggregation interval. (expressed as a number of 8KB pages read).|  
|**avg_logical_io_writes**|**float**|Average number of logical IO writes for the query plan within the aggregation interval.|  
|**last_logical_io_writes**|**bigint**|Last number of logical IO writes for the query plan within the aggregation interval.|  
|**min_logical_io_writes**|**bigint**|Minimum number of logical IO writes for the query plan within the aggregation interval.|  
|**max_logical_io_writes**|**bigint**|Maximum number of logical IO writes for the query plan within the aggregation interval.|  
|**stdev_logical_io_writes**|**float**|Number of logical IO writes standard deviation for the query plan within the aggregation interval.|  
|**avg_physical_io_reads**|**float**|Average number of physical IO reads for the query plan within the aggregation interval (expressed as a number of 8KB pages read).|  
|**last_physical_io_reads**|**bigint**|Last number of physical IO reads for the query plan within the aggregation interval (expressed as a number of 8KB pages read).|  
|**min_physical_io_reads**|**bigint**|Minimum number of physical IO reads for the query plan within the aggregation interval (expressed as a number of 8KB pages read).|  
|**max_physical_io_reads**|**bigint**|Maximum number of physical IO reads for the query plan within the aggregation interval (expressed as a number of 8KB pages read).|  
|**stdev_physical_io_reads**|**float**|Number of physical IO reads standard deviation for the query plan within the aggregation interval (expressed as a number of 8KB pages read).|  
|**avg_clr_time**|**float**|Average CLR time for the query plan within the aggregation interval (reported in microseconds).|  
|**last_clr_time**|**bigint**|Last CLR time for the query plan within the aggregation interval (reported in microseconds).|  
|**min_clr_time**|**bigint**|Minimum CLR time for the query plan within the aggregation interval (reported in microseconds).|  
|**max_clr_time**|**bigint**|Maximum CLR time for the query plan within the aggregation interval (reported in microseconds).|  
|**stdev_clr_time**|**float**|CLR time standard deviation for the query plan within the aggregation interval (reported in microseconds).|  
|**avg_dop**|**float**|Average DOP (degree of parallelism) for the query plan within the aggregation interval.|  
|**last_dop**|**bigint**|Last DOP (degree of parallelism) for the query plan within the aggregation interval.|  
|**min_dop**|**bigint**|Minimum DOP (degree of parallelism) for the query plan within the aggregation interval.|  
|**max_dop**|**bigint**|Maximum DOP (degree of parallelism) for the query plan within the aggregation interval.|  
|**stdev_dop**|**float**|DOP (degree of parallelism) standard deviation for the query plan within the aggregation interval.|  
|**avg_query_max_used_memory**|**float**|Average memory grant (reported as the number of 8 KB pages) for the query plan within the aggregation interval. Always 0 for queries using natively compiled memory optimized procedures.|  
|**last_query_max_used_memory**|**bigint**|Last memory grant (reported as the number of 8 KB pages) for the query plan within the aggregation interval. Always 0 for queries using natively compiled memory optimized procedures.|  
|**min_query_max_used_memory**|**bigint**|Minimum memory grant (reported as the number of 8 KB pages) for the query plan within the aggregation interval. Always 0 for queries using natively compiled memory optimized procedures.|  
|**max_query_max_used_memory**|**bigint**|Maximum memory grant (reported as the number of 8 KB pages) for the query plan within the aggregation interval. Always 0 for queries using natively compiled memory optimized procedures.|  
|**stdev_query_max_used_memory**|**float**|Memory grant standard deviation (reported as the number of 8 KB pages) for the query plan within the aggregation interval. Always 0 for queries using natively compiled memory optimized procedures.|  
|**avg_rowcount**|**float**|Average number of returned rows for the query plan within the aggregation interval.|  
|**last_rowcount**|**bigint**|Number of returned rows by the last execution of the query plan within the aggregation interval.|  
|**min_rowcount**|**bigint**|Minimum number of returned rows for the query plan within the aggregation interval.|  
|**max_rowcount**|**bigint**|Maximum number of returned rows for the query plan within the aggregation interval.|  
|**stdev_rowcount**|**float**|Number of returned rows standard deviation for the query plan within the aggregation interval.|
|**avg_log_bytes_used**|**float**|Average number of bytes in the database log used by the query plan, within the aggregation interval. Applies **only to Azure SQL Database**.|    
|**last_log_bytes_used**|**bigint**|Number of bytes in the database log used by the last execution of the query plan, within the aggregation interval. Applies **only to Azure SQL Database**.|  
|**min_log_bytes_used**|**bigint**|Minimum number of bytes in the database log used by the query plan, within the aggregation interval.  Applies **only to Azure SQL Database**.|  
|**max_log_bytes_used**|**bigint**|Maximum number of bytes in the database log used by the query plan, within the aggregation interval.  Applies **only to Azure SQL Database**.| 
|**stdev_log_bytes_used**|**float**|Standard deviation of the number of bytes in the database log used by a query plan, within the aggregation interval.  Applies **only to Azure SQL Database**.|
  
## Permissions  
 Requires the **VIEW DATABASE STATE** permission.  
  
## See Also  
 [sys.database_query_store_options &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.database-query-store-options-transact-sql.md)   
 [sys.query_context_settings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-context-settings-transact-sql.md)   
 [sys.query_store_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-plan-transact-sql.md)   
 [sys.query_store_query &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-query-transact-sql.md)   
 [sys.query_store_query_text &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-query-text-transact-sql.md)   
 [sys.query_store_runtime_stats_interval &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-runtime-stats-interval-transact-sql.md)   
 [Monitoring Performance By Using the Query Store](../../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Query Store Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/query-store-stored-procedures-transact-sql.md)  
  
  