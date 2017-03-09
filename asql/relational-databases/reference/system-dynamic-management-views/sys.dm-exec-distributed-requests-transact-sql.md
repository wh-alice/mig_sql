---
title: "sys.dm_exec_distributed_requests (Transact-SQL) | Microsoft Docs"
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
  - "DM_EXEC_DISTRIBUTED_REQUESTS"
  - "DM_EXEC_DISTRIBUTED_REQUESTS_TSQL"
  - "SYS.DM_EXEC_DISTRIBUTED_REQUESTS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PolyBase,views"
  - "sys.dm_exec_distributed_sql_requests management view"
  - "PolyBase"
  - "dm_exec_distributed_sql_requests management view"
ms.assetid: c041d416-d8c6-435e-a563-6a310abd33e3
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_distributed_requests (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Holds information about all requests currently or recently active in PolyBase queries. It lists one row per request/query.  
  
 Based on session and request ID, a user can then retrieve the actual distributed requests generated to be executed – via sys.dm_exec_distributed_requests. For example, a query involving regular SQL and external SQL tables will be decomposed into various statements/requests executed across the various compute nodes. To track the distributed steps across all compute nodes, we introduce a ‘global’ execution ID which can be used to track all operations on the compute nodes associated with one particular request and operator, respectively.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|sql_handle|**varbinary(64)**|Key for this view. Unique numeric id associated with the request.|Unique across all requests in the system.|  
|execution_id|**nvarchar(32**|Unique numeric id associated with the session in which this query was run.||  
|status|**nvarchar(32**|Current status of the request.|'Pending', 'Authorizing', 'AcquireSystemResources', 'Initializing', 'Plan', 'Parsing', 'AquireResources', 'Running', 'Cancelling', 'Complete', 'Failed', 'Cancelled'.|  
|error_id|**nvarchar(36)**|Unique id of the error associated with the request, if any.|Set to NULL if no error occurred.|  
|start_time|**datetime**|Time at which the request execution was started.|0 for queued requests; otherwise, valid datetime smaller or equal to current time.|  
|end_time|**datetime**|Time at which the engine completed compiling the request.|Null for queued or active requests; otherwise, a valid datetime smaller or equal to current time.|  
|total_elapsed_time|**int**|Time elapsed in execution since the request was started, in milliseconds.|Between 0 and the difference between start_time and end_time.If total_elapsed_time exceeds the maximum value for an integer, total_elapsed_time will continue to be the maximum value. This condition will generate the warning “The maximum value has been exceeded.” The maximum value in milliseconds is equivalent to 24.8 days.|  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](../Topic/PolyBase%20troubleshooting%20with%20dynamic%20management%20views.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  