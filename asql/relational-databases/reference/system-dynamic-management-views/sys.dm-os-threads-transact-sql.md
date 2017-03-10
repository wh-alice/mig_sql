---
title: "sys.dm_os_threads (Transact-SQL) | Microsoft Docs"
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
  - "dm_os_threads_TSQL"
  - "sys.dm_os_threads"
  - "dm_os_threads"
  - "sys.dm_os_threads_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_threads dynamic management view"
ms.assetid: a5052701-edbf-4209-a7cb-afc9e65c41c1
caps.latest.revision: 34
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_threads (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns a list of all [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Operating System threads that are running under the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_threads**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|thread_address|**varbinary(8)**|Memory address (Primary Key) of the thread.|  
|started_by_sqlservr|**bit**|Indicates the thread initiator.<br /><br /> 1 = [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] started the thread.<br /><br /> 0 = Another component started the thread, such as an extended stored procedure from within [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|os_thread_id|**int**|ID of the thread that is assigned by the operating system.|  
|status|**int**|Internal status flag.|  
|instruction_address|**varbinary(8)**|Address of the instruction that is currently being executed.|  
|creation_time|**datetime**|Time when this thread was created.|  
|kernel_time|**bigint**|Amount of kernel time that is used by this thread.|  
|usermode_time|**bigint**|Amount of user time that is used by this thread.|  
|stack_base_address|**varbinary(8)**|Memory address of the highest stack address for this thread.|  
|stack_end_address|**varbinary(8)**|Memory address of the lowest stack address of this thread.|  
|stack_bytes_committed|**int**|Number of bytes that are committed in the stack.|  
|stack_bytes_used|**int**|Number of bytes that are actively being used on the thread.|  
|affinity|**bigint**|CPU mask on which this thread is running. This depends on the value configured by the **ALTER SERVER CONFIGURATION SET PROCESS AFFINITY** statement. Might be different from the scheduler in case of soft-affinity.|  
|Priority|**int**|Priority value of this thread.|  
|Locale|**int**|Cached locale LCID for the thread.|  
|Token|**varbinary(8)**|Cached impersonation token handle for the thread.|  
|is_impersonating|**int**|Indicates whether this thread is using Win32 impersonation.<br /><br /> 1 = The thread is using security credentials that are different from the default of the process. This indicates that the thread is impersonating an entity other than the one that created the process.|  
|is_waiting_on_loader_lock|**int**|Operating system status of whether the thread is waiting on the loader lock.|  
|fiber_data|**varbinary(8)**|Current Win32 fiber that is running on the thread. This is only applicable when [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is configured for lightweight pooling.|  
|thread_handle|**varbinary(8)**|Internal use only.|  
|event_handle|**varbinary(8)**|Internal use only.|  
|scheduler_address|**varbinary(8)**|Memory address of the scheduler that is associated with this thread. For more information, see [sys.dm_os_schedulers &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-schedulers-transact-sql.md).|  
|worker_address|**varbinary(8)**|Memory address of the worker that is bound to this thread. For more information, see [sys.dm_os_workers &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-workers-transact-sql.md).|  
|fiber_context_address|**varbinary(8)**|Internal fiber context address. This is only applicable when [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is configured for lightweight pooling.|  
|self_address|**varbinary(8)**|Internal consistency pointer.|  
|processor_group|**smallint**|**Applies to**: [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Processor group ID.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Examples  
 Upon startup, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] starts threads and then associates workers with those threads. However, external components, such as an extended stored procedure, can start threads under the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] has no control of these threads. sys.dm_os_threads can provide information about rogue threads that consume resources in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] process.  
  
 The following query is used to find workers, along with time used for execution, that are running threads not started by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  For conciseness, the following query uses an asterisk (`*`) in the `SELECT` statement. You should avoid using the asterisk (*), especially against catalog views, dynamic management views, and system table-valued functions. Future upgrades and releases of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] may add columns and change the order of columns to these views and functions. These changes might break applications that expect a particular order and number of columns.  
  
```  
SELECT *  
  FROM sys.dm_os_threads  
  WHERE started_by_sqlservr = 0;  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [sys.dm_os_workers &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-workers-transact-sql.md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

