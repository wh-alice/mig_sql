---
title: "sys.dm_exec_requests (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-19"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_exec_requests_TSQL"
  - "sys.dm_exec_requests"
  - "dm_exec_requests_TSQL"
  - "dm_exec_requests"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_exec_requests dynamic management view"
ms.assetid: 4161dc57-f3e7-4492-8972-8cfb77b29643
caps.latest.revision: 67
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_requests (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns information about each request that is executing within [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  To execute code that is outside [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (for example, extended stored procedures and distributed queries), a thread has to execute outside the control of the non-preemptive scheduler. To do this, a worker switches to preemptive mode. Time values returned by this dynamic management view do not include time spent in preemptive mode.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_exec_requests**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|session_id|**smallint**|ID of the session to which this request is related. Is not nullable.|  
|request_id|**int**|ID of the request. Unique in the context of the session. Is not nullable.|  
|start_time|**datetime**|Timestamp when the request arrived. Is not nullable.|  
|status|**nvarchar(30)**|Status of the request. This can be one of the following:<br /><br /> Background<br />Running<br />Runnable<br />Sleeping<br />Suspended<br /><br /> Is not nullable.|  
|command|**nvarchar(32)**|Identifies the current type of command that is being processed. Common command types include the following:<br /><br /> SELECT<br />INSERT<br />UPDATE<br />DELETE<br />BACKUP LOG<br />BACKUP DATABASE<br />DBCC<br />FOR<br /><br /> The text of the request can be retrieved by using sys.dm_exec_sql_text with the corresponding sql_handle for the request. Internal system processes set the command based on the type of task they perform. Tasks can include the following:<br /><br /> LOCK MONITOR<br />CHECKPOINTLAZY<br />WRITER<br /><br /> Is not nullable.|  
|sql_handle|**varbinary(64)**|Hash map of the SQL text of the request. Is nullable.|  
|statement_start_offset|**int**|Number of characters into the currently executing batch or stored procedure at which the currently executing statement starts. Can be used together with the sql_handle, the statement_end_offset, and the sys.dm_exec_sql_text dynamic management function to retrieve the currently executing statement for the request. Is nullable.|  
|statement_end_offset|**int**|Number of characters into the currently executing batch or stored procedure at which the currently executing statement ends. Can be used together with the sql_handle, the statement_end_offset, and the sys.dm_exec_sql_text dynamic management function to retrieve the currently executing statement for the request. Is nullable.|  
|plan_handle|**varbinary(64)**|Hash map of the plan for SQL execution. Is nullable.|  
|database_id|**smallint**|ID of the database the request is executing against. Is not nullable.|  
|user_id|**int**|ID of the user who submitted the request. Is not nullable.|  
|connection_id|**uniqueidentifier**|ID of the connection on which the request arrived. Is nullable.|  
|blocking_session_id|**smallint**|ID of the session that is blocking the request. If this column is NULL, the request is not blocked, or the session information of the blocking session is not available (or cannot be identified).<br /><br /> -2 = The blocking resource is owned by an orphaned distributed transaction.<br /><br /> -3 = The blocking resource is owned by a deferred recovery transaction.<br /><br /> -4 = Session ID of the blocking latch owner could not be determined at this time because of internal latch state transitions.|  
|wait_type|**nvarchar(60)**|If the request is currently blocked, this column returns the type of wait. Is nullable.<br /><br /> For information about types of waits, see [sys.dm_os_wait_stats &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-os-wait-stats-transact-sql.md).|  
|wait_time|**int**|If the request is currently blocked, this column returns the duration in milliseconds, of the current wait. Is not nullable.|  
|last_wait_type|**nvarchar(60)**|If this request has previously been blocked, this column returns the type of the last wait. Is not nullable.|  
|wait_resource|**nvarchar(256)**|If the request is currently blocked, this column returns the resource for which the request is currently waiting. Is not nullable.|  
|open_transaction_count|**int**|Number of transactions that are open for this request. Is not nullable.|  
|open_resultset_count|**int**|Number of result sets that are open for this request. Is not nullable.|  
|transaction_id|**bigint**|ID of the transaction in which this request executes. Is not nullable.|  
|context_info|**varbinary(128)**|CONTEXT_INFO value of the session. Is nullable.|  
|percent_complete|**real**|Percentage of work completed for the following commands:<br /><br /> ALTER INDEX REORGANIZE<br />AUTO_SHRINK option with ALTER DATABASE<br />BACKUP DATABASE<br />DBCC CHECKDB<br />DBCC CHECKFILEGROUP<br />DBCC CHECKTABLE<br />DBCC INDEXDEFRAG<br />DBCC SHRINKDATABASE<br />DBCC SHRINKFILE<br />RECOVERY<br />RESTORE DATABASE<br />ROLLBACK<br />TDE ENCRYPTION<br /><br /> Is not nullable.|  
|estimated_completion_time|**bigint**|Internal only. Is not nullable.|  
|cpu_time|**int**|CPU time in milliseconds that is used by the request. Is not nullable.|  
|total_elapsed_time|**int**|Total time elapsed in milliseconds since the request arrived. Is not nullable.|  
|scheduler_id|**int**|ID of the scheduler that is scheduling this request. Is not nullable.|  
|task_address|**varbinary(8)**|Memory address allocated to the task that is associated with this request. Is nullable.|  
|reads|**bigint**|Number of reads performed by this request. Is not nullable.|  
|writes|**bigint**|Number of writes performed by this request. Is not nullable.|  
|logical_reads|**bigint**|Number of logical reads that have been performed by the request. Is not nullable.|  
|text_size|**int**|TEXTSIZE setting for this request. Is not nullable.|  
|language|**nvarchar(128)**|Language setting for the request. Is nullable.|  
|date_format|**nvarchar(3)**|DATEFORMAT setting for the request. Is nullable.|  
|date_first|**smallint**|DATEFIRST setting for the request. Is not nullable.|  
|quoted_identifier|**bit**|1 = QUOTED_IDENTIFIER is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|arithabort|**bit**|1 = ARITHABORT setting is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|ansi_null_dflt_on|**bit**|1 = ANSI_NULL_DFLT_ON setting is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|ansi_defaults|**bit**|1 = ANSI_DEFAULTS setting is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|ansi_warnings|**bit**|1 = ANSI_WARNINGS setting is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|ansi_padding|**bit**|1 = ANSI_PADDING setting is ON for the request.<br /><br /> Otherwise, it is 0.<br /><br /> Is not nullable.|  
|ansi_nulls|**bit**|1 = ANSI_NULLS setting is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|concat_null_yields_null|**bit**|1 = CONCAT_NULL_YIELDS_NULL setting is ON for the request. Otherwise, it is 0.<br /><br /> Is not nullable.|  
|transaction_isolation_level|**smallint**|Isolation level with which the transaction for this request is created. Is not nullable.<br /><br /> 0 = Unspecified<br /><br /> 1 = ReadUncomitted<br /><br /> 2 = ReadCommitted<br /><br /> 3 = Repeatable<br /><br /> 4 = Serializable<br /><br /> 5 = Snapshot|  
|lock_timeout|**int**|Lock time-out period in milliseconds for this request. Is not nullable.|  
|deadlock_priority|**int**|DEADLOCK_PRIORITY setting for the request. Is not nullable.|  
|row_count|**bigint**|Number of rows that have been returned to the client by this request. Is not nullable.|  
|prev_error|**int**|Last error that occurred during the execution of the request. Is not nullable.|  
|nest_level|**int**|Current nesting level of code that is executing on the request. Is not nullable.|  
|granted_query_memory|**int**|Number of pages allocated to the execution of a query on the request. Is not nullable.|  
|executing_managed_code|**bit**|Indicates whether a specific request is currently executing common language runtime objects, such as routines, types, and triggers. It is set for the full time a common language runtime object is on the stack, even while running [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] from within common language runtime. Is not nullable.|  
|group_id|**int**|ID of the workload group to which this query belongs. Is not nullable.|  
|query_hash|**binary(8)**|Binary hash value calculated on the query and used to identify queries with similar logic. You can use the query hash to determine the aggregate resource usage for queries that differ only by literal values.|  
|query_plan_hash|**binary(8)**|Binary hash value calculated on the query execution plan and used to identify similar query execution plans. You can use query plan hash to find the cumulative cost of queries with similar execution plans.|  
|statement_sql_handle|**varbinary(64)**|**Applies to**: [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Reserved for future use.|  
|statement_context_id|**bigint**|**Applies to**: [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Reserved for future use.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 If the user has `VIEW SERVER STATE` permission on the server, the user will see all executing sessions on the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]; otherwise, the user will see only the current session. `VIEW SERVER STATE` cannot be granted in [!INCLUDE[ssSDS_md](../../analysis-services/multidimensional-models/includes/sssds-md.md)] so `sys.dm_exec_requests` is always limited to the current connection. 
  
## Examples  
  
### A. Finding the query text for a running batch  
 The following example queries `sys.dm_exec_requests` to find the interesting query and copy its `sql_handle` from the output.  
  
```  
SELECT * FROM sys.dm_exec_requests;  
GO  
```  
  
 Then, to obtain the statement text, use the copied `sql_handle` with system function `sys.dm_exec_sql_text(sql_handle)`.  
  
```  
SELECT * FROM sys.dm_exec_sql_text(< copied sql_handle >);  
GO  
```  
  
### B. Finding all locks that a running batch is holding  
 The following example queries **sys.dm_exec_requests** to find the interesting batch and copy its `transaction_id` from the output.  
  
```  
SELECT * FROM sys.dm_exec_requests;  
GO  
```  
  
 Then, to find lock information, use the copied `transaction_id` with the system function **sys.dm_tran_locks**.  
  
```  
SELECT * FROM sys.dm_tran_locks   
WHERE request_owner_type = N'TRANSACTION'   
    AND request_owner_id = < copied transaction_id >;  
GO  
```  
  
### C. Finding all currently blocked requests  
 The following example queries **sys.dm_exec_requests** to find information about blocked requests.  
  
```  
SELECT session_id ,status ,blocking_session_id  
    ,wait_type ,wait_time ,wait_resource   
    ,transaction_id   
FROM sys.dm_exec_requests   
WHERE status = N'suspended';  
GO  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Execution Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/execution-related-dynamic-management-views-and-functions-transact-sql.md)   
 [sys.dm_os_memory_clerks &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-os-memory-clerks-transact-sql.md)   
 [sys.dm_os_sys_info &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-os-sys-info-transact-sql.md)   
 [sys.dm_exec_query_memory_grants &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-exec-query-memory-grants-transact-sql.md)   
 [sys.dm_exec_query_plan &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-exec-query-plan-transact-sql.md)   
 [sys.dm_exec_sql_text &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-exec-sql-text-transact-sql.md)  
  
  

