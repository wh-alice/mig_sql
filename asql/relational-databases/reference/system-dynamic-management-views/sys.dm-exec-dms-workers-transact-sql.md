---
title: "sys.dm_exec_dms_workers (Transact-SQL) | Microsoft Docs"
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
  - "SYS.DM_EXEC_DMS_WORKERS_TSQL"
  - "DM_EXEC_DMS_WORKERS_TSQL"
  - "DM_EXEC_DMS_WORKERS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PolyBase,views"
  - "PolyBase"
  - "dm_exec_dms_workers management view"
  - "sys.dm_exec_dms_workers management view"
ms.assetid: f468da29-78c3-4f10-8a3c-17905bbf46f2
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_dms_workers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Holds information about all workers completing DMS steps.  
  
 This view shows the data for the last 1000 requests and active requests; active requests always have the data present in this view.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|execution_id|**nvarchar(32)**|Query that this DMS worker is part of.request_id, step_index, and dms_step_index form the key for this view.||  
|step_index|**int**|Query step this DMS worker is part of.|See step index in [sys.dm_exec_distributed_request_steps &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-request-steps-transact-sql.md).|  
|dms_step_index|**int**|Step in the DMS plan that this worker is running.|See [sys.dm_exec_dms_workers (Transact-SQL)](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-dms-workers-transact-sql.md)|  
|compute_node_id|**int**|Node that the worker is running on.|See [sys.dm_exec_compute_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-nodes-transact-sql.md).|  
|distribution_id|**int**|||  
|type|**nvarcha(32)**|||  
|status|**nvarchar(32)**|Status of this step|‘Pending', ‘Running', ‘Complete', ‘Failed', ‘UndoFailed', ‘PendingCancel', ‘Cancelled', ‘Undone', ‘Aborted'|  
|bytes_per_sec|**bigint**|||  
|bytes_processed|**bigint**|||  
|rows_processed|**bigint**|||  
|start_time|**datetime**|Time at which the step started execution|Smaller or equal to current time and larger or equal to end_compile_time of the query to which this step belongs.|  
|end_time|**datetime**|Time at which this step completed execution, was cancelled, or failed.|Smaller or equal to current time and larger or equal to start_time, set to NULL for steps currently in execution or queued.|  
|total_elapsed_time|**int**|Total amount of time the query step has been executing, in milliseconds|Between 0 and the difference between end_time and start_time. 0 for queued steps.|  
|cpu_time|**bigint**|||  
|query_time|**int**|||  
|buffers_available|**int**|||  
|dms_cpid|**int**|||  
|sql_spid|**int**|||  
|error_id|**nvarchar(36)**|||  
|source_info|**nvarchar(4000)**|||  
|destination_info|**nvarchar(4000)**|||  
|command|**nvarchar(4000)**|||  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](http://msdn.microsoft.com/en-US/library/mt146389(SQL.130).aspx)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  