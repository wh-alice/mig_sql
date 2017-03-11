---
title: "sys.dm_exec_distributed_sql_requests (Transact-SQL) | Microsoft Docs"
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
  - "DM_EXEC_DISTRIBUTED_SQL_REQUESTS_TSQL"
  - "SYS.DM_EXEC_DISTRIBUTED_SQL_REQUESTS_TSQL"
  - "DM_EXEC_DISTRIBUTED_SQL_REQUESTS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PolyBase,views"
  - "PolyBase"
  - "sys.dm_exec_distributed_requests management view"
  - "dm_exec_distributed_requests management view"
ms.assetid: d065dc01-35d4-472f-9554-53ac41e7d104
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_distributed_sql_requests (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Holds information about all SQL query distributions as part of a SQL step in the query.  This view shows the data for the last 1000 requests; active requests always have the data present in this view.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|execution_id|**nvarchar(32)**|execution_id and step_index make up the key for this view. Unique numeric id associated with the request.|See ID in [sys.dm_exec_requests &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)|  
|step_index|**int**|Index of the query step this distribution is part of.|See step_index in [sys.dm_exec_distributed_request_steps &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-request-steps-transact-sql.md).|  
|compute_node_id|**int**|Type of the operation represented by this step.|See compute_node_id in [sys.dm_exec_compute_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-nodes-transact-sql.md).|  
|distribution_id|**int**|Where the step is executing.|Set to -1 for requests that run at the node scope not the distribution scope.|  
|status|**nvarchar(32)**|Status of this step|Active, Cancelled, Completed, Failed, Queued|  
|error_id|**nvarchar(36)**|Unique id of the error associated with this step, if any|See id of [sys.dm_exec_compute_node_errors &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-node-errors-transact-sql.md), NULL if no error occurred.|  
|start_time|**datetime**|Time at which the step started execution|Smaller or equal to current time and larger or equal to end_compile_time of the query to which this step belongs.|  
|end_time|**datetime**|Time at which this step completed execution, was cancelled, or failed.|Smaller or equal to current time and larger or equal to start_time, set to NULL for steps currently in execution or queued.|  
|total_elapsed_time|**int**|Total amount of time the query step has been executing, in milliseconds|Between 0 and the difference between end_time and start_time. 0 for queued steps.|  
|row_count|**bigint**|Total number of rows changed or returned by this request|0 for steps that did not change or return data, number of rows affected otherwise. Set to -1 for DMS steps.|  
|spid|**int**|Session id on the SQL Server instance executing the query distribution||  
|command|nvarchar(4000)|Holds the full text of the command of this step.|Any valid request string for a step. Truncated if longer than 4000 characters.|  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](http://msdn.microsoft.com/library/ce9078b7-a750-4f47-b23e-90b83b783d80)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  