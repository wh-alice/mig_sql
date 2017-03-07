---
title: "sys.query_store_query (Transact-SQL) | Microsoft Docs"
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
  - "QUERY_STORE_QUERY"
  - "SYS.QUERY_STORE_QUERY_TSQL"
  - "SYS.QUERY_STORE_QUERY"
  - "QUERY_STORE_QUERY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "query_store_query catalog view"
  - "sys.query_store_query catalog view"
ms.assetid: bdee149e-7556-4fc3-8242-925dd4b7b6ac
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.query_store_query (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Contains  information about the query and its associated overall aggregated runtime execution statistics.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**query_id**|**bigint**|Primary key.|  
|**query_text_id**|**bigint**|Foreign key. Joins to [sys.query_store_query_text &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-store-query-text-transact-sql.md)|  
|**context_settings_id**|**bigint**|Foreign key. Joins to [sys.query_context_settings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-context-settings-transact-sql.md).|  
|**object_id**|**bigint**|ID of the database object that the query is part of (stored procedure, trigger, CLR UDF/UDAgg, etc.). 0 if the query is not executed as part of a database object (ad-hoc query).|  
|**batch_sql_handle**|**varbinary(64)**|ID of the statement batch the query is part of. Populated only if query references temporary tables or table variables.|  
|**query_hash**|**binary(8)**|MD5 hash of the individual query, based on the logical query tree. Includes optimizer hints.|  
|**is_internal_query**|**bit**|The query was generated internally.|  
|**query_parameterization_type**|**tinyint**|Kind of parameterization:<br /><br /> 0 – None<br /><br /> 1 – User<br /><br /> 2 – Simple<br /><br /> 3 – Forced|  
|**query_parameterization_type_desc**|**nvarchar(60)**|Textual description for the parameterization type.|  
|**initial_compile_start_time**|**datetimeoffset**|Compile start time.|  
|**last_compile_start_time**|**datetimeoffset**|Compile start time.|  
|**last_execution_time**|**datetimeoffset**|Execution time.|  
|**last_compile_batch_sql_handle**|**varbinary(64)**|Handle of the last SQL batch in which query was used last time. It can be provided as input to [sys.dm_exec_sql_text &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-exec-sql-text-transact-sql.md) to get the full text of the batch.|  
|**last_compile_batch_offset_start**|**bigint**|Information that can be provided to sys.dm_exec_sql_text along with last_compile_batch_sql_handle.|  
|**last_compile_batch_offset_end**|**bigint**|Information that can be provided to sys.dm_exec_sql_text along with last_compile_batch_sql_handle.|  
|**count_compiles**|**bigint**|Compilation statistics.|  
|**avg_compile_duration**|**float**|Compilation statistics in microseconds.|  
|**last_compile_duration**|**bigint**|Compilation statistics in microseconds.|  
|**avg_bind_duration**|**float**|Binding statistics in microseconds.|  
|**last_bind_duration**|**bigint**|Binding statistics.|  
|**avg_bind_cpu_time**|**float**|Binding statistics.|  
|**last_bind_cpu_time**|**bigint**|Binding statistics.|  
|**avg_optimize_duration**|**float**|Optimization statistics in microseconds.|  
|**last_optimize_duration**|**bigint**|Optimization statistics.|  
|**avg_optimize_cpu_time**|**float**|Optimization statistics in microseconds.|  
|**last_optimize_cpu_time**|**bigint**|Optimization statistics.|  
|**avg_compile_memory_kb**|**float**|Compile memory statistics.|  
|**last_compile_memory_kb**|**bigint**|Compile memory statistics.|  
|**max_compile_memory_kb**|**bigint**|Compile memory statistics.|  
|**is_clouddb_internal_query**|**bit**|Always 0 in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on-premises.|  
  
## Permissions  
 Requires the **VIEW DATABASE STATE** permission.  
  
## See Also  
 [sys.database_query_store_options &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-query-store-options-transact-sql.md)   
 [sys.query_context_settings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-context-settings-transact-sql.md)   
 [sys.query_store_plan &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-store-plan-transact-sql.md)   
 [sys.query_store_query_text &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-store-query-text-transact-sql.md)   
 [sys.query_store_runtime_stats &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-store-runtime-stats-transact-sql.md)   
 [sys.query_store_runtime_stats_interval &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.query-store-runtime-stats-interval-transact-sql.md)   
 [Monitoring Performance By Using the Query Store](../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Query Store Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/query-store-stored-procedures-transact-sql.md)   
 [sys.fn_stmt_sql_handle_from_sql_stmt &#40;Transact-SQL&#41;](../../relational-databases/system-functions/sys.fn-stmt-sql-handle-from-sql-stmt-transact-sql.md)  
  
  