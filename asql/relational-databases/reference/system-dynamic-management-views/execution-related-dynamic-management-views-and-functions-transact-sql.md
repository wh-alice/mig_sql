---
title: "Execution Related Dynamic Management Views and Functions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-12"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dynamic management objects [SQL Server], execution"
  - "execution-related dynamic management objects [SQL Server]"
ms.assetid: aea07b33-f715-4b61-9d1e-8c77b03e9578
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# Execution Related Dynamic Management Views and Functions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This section contains the following dynamic management objects:  
  

|||  
|-|-| 
|[sys.dm_exec_background_job_queue](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-background-job-queue-transact-sql.md)|[sys.dm_exec_background_job_queue_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-background-job-queue-stats-transact-sql.md)|
|[sys.dm_exec_cached_plan_dependent_objects](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-cached-plan-dependent-objects-transact-sql.md)|[sys.dm_exec_cached_plans](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-cached-plans-transact-sql.md)|
|[sys.dm_exec_compute_node_errors](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-node-errors-transact-sql.md)|[sys.dm_exec_compute_node_status](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-node-status-transact-sql.md)|
|[sys.dm_exec_compute_nodes](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-nodes-transact-sql.md)|[sys.dm_exec_connections](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-connections-transact-sql.md)|
|[sys.dm_exec_cursors](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-cursors-transact-sql.md)|[sys.dm_exec_describe_first_result_set](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-describe-first-result-set-transact-sql.md)|
|[sys.dm_exec_describe_first_result_set_for_object](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-describe-first-result-set-for-object-transact-sql.md)|[sys.dm_exec_distributed_request_steps](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-request-steps-transact-sql.md)|
|[sys.dm_exec_distributed_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-requests-transact-sql.md)|[sys.dm_exec_distributed_sql_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-sql-requests-transact-sql.md)|
|[sys.dm_exec_dms_services](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-dms-services-transact-sql.md)|[sys.dm_exec_dms_workers](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-dms-workers-transact-sql.md)|
|[sys.dm_exec_external_operations](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-external-operations-transact-sql.md)|[sys.dm_exec_external_work](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-external-work-transact-sql.md)|
|[sys.dm_exec_function_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-function-stats-transact-sql.md)| [sys.dm_exec_input_buffer](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-input-buffer-transact-sql.md)|
|[sys.dm_exec_plan_attributes](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-plan-attributes-transact-sql.md)|[sys.dm_exec_procedure_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-procedure-stats-transact-sql.md)|
|[sys.dm_exec_query_memory_grants](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-memory-grants-transact-sql.md)|[sys.dm_exec_query_optimizer_info](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-optimizer-info-transact-sql.md)|
|[sys.dm_exec_query_plan](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-plan-transact-sql.md)|[sys.dm_exec_query_profiles](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-profiles-transact-sql.md)|
|[sys.dm_exec_query_resource_semaphores](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-resource-semaphores-transact-sql.md)|[sys.dm_exec_query_statistics_xml](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-statistics-xml-transact-sql.md)|
|[sys.dm_exec_query_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-stats-transact-sql.md)|[sys.dm_exec_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)|
|[sys.dm_exec_session_wait_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-session-wait-stats-transact-sql.md)|[sys.dm_exec_sessions](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sessions-transact-sql.md)|
|[sys.dm_exec_sql_text](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sql-text-transact-sql.md)|[sys.dm_exec_text_query_plan](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-text-query-plan-transact-sql.md)|
|[sys.dm_exec_trigger_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-trigger-stats-transact-sql.md)|[sys.dm_exec_valid_use_hints](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-valid-use-hints-transact-sql.md)| 
|[sys.dm_exec_xml_handles](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-xml-handles-transact-sql.md)|[sys.dm_external_script_execution_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-external-script-execution-stats.md)|
|[sys.dm_external_script_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-external-script-requests.md)| |

  
> [!NOTE]  
>  The **sys.dm_exec_query_transformation_stats** dynamic management view is identified for informational purposes only. Not supported. Future compatibility is not guaranteed.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [System Views &#40;Transact-SQL&#41;](../../../a9retired/system-views-transact-sql.md)  
  
  