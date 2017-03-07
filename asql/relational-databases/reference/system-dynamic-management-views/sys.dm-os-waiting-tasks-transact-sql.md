---
title: "sys.dm_os_waiting_tasks (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-05"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_os_waiting_tasks"
  - "sys.dm_os_waiting_tasks_TSQL"
  - "dm_os_waiting_tasks_TSQL"
  - "sys.dm_os_waiting_tasks"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_waiting_tasks dynamic management view"
ms.assetid: ca5e6844-368c-42e2-b187-6e5f5afc8df3
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_waiting_tasks (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns information about the wait queue of tasks that are waiting on some resource.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_waiting_tasks**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**waiting_task_address**|**varbinary(8)**|Address of the waiting task.|  
|**session_id**|**smallint**|ID of the session associated with the task.|  
|**exec_context_id**|**int**|ID of the execution context associated with the task.|  
|**wait_duration_ms**|**bigint**|Total wait time for this wait type, in milliseconds. This time is inclusive of **signal_wait_time**.|  
|**wait_type**|**nvarchar(60)**|Name of the wait type.|  
|**resource_address**|**varbinary(8)**|Address of the resource for which the task is waiting.|  
|**blocking_task_address**|**varbinary(8)**|Task that is currently holding this resource|  
|**blocking_session_id**|**smallint**|ID of the session that is blocking the request. If this column is NULL, the request is not blocked, or the session information of the blocking session is not available (or cannot be identified).<br /><br /> -2 = The blocking resource is owned by an orphaned distributed transaction.<br /><br /> -3 = The blocking resource is owned by a deferred recovery transaction.<br /><br /> -4 = Session ID of the blocking latch owner could not be determined due to internal latch state transitions.|  
|**blocking_exec_context_id**|**int**|ID of the execution context of the blocking task.|  
|**resource_description**|**nvarchar(3072)**|Description of the resource that is being consumed. For more information, see the list below.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## resource_description column  
 The resource_description column has the following possible values.  
  
 **Thread-pool resource owner:**  
  
-   threadpool id=scheduler\<hex-address>  
  
 **Parallel query resource owner:**  
  
-   exchangeEvent id={Port|Pipe}\<hex-address> WaitType=\<exchange-wait-type> nodeId=\<exchange-node-id>  
  
 **Exchange-wait-type:**  
  
-   e_waitNone  
  
-   e_waitPipeNewRow  
  
-   e_waitPipeGetRow  
  
-   e_waitSynchronizeConsumerOpen  
  
-   e_waitPortOpen  
  
-   e_waitPortClose  
  
-   e_waitRange  
  
 **Lock resource owner:**  
  
-   \<type-specific-description> id=lock\<lock-hex-address> mode=\<mode> associatedObjectId=\<associated-obj-id>  
  
     **\<type-specific-description> can be:**  
  
    -   For DATABASE: databaselock subresource=\<databaselock-subresource> dbid=\<db-id>  
  
    -   For FILE: filelock fileid=\<file-id> subresource=\<filelock-subresource> dbid=\<db-id>  
  
    -   For OBJECT: objectlock lockPartition=\<lock-partition-id> objid=\<obj-id> subresource=\<objectlock-subresource> dbid=\<db-id>  
  
    -   For PAGE: pagelock fileid=\<file-id> pageid=\<page-id> dbid=\<db-id> subresource=\<pagelock-subresource>  
  
    -   For Key: keylock  hobtid=\<hobt-id> dbid=\<db-id>  
  
    -   For EXTENT: extentlock fileid=\<file-id> pageid=\<page-id> dbid=\<db-id>  
  
    -   For RID: ridlock fileid=\<file-id> pageid=\<page-id> dbid=\<db-id>  
  
    -   For APPLICATION: applicationlock hash=\<hash> databasePrincipalId=\<role-id> dbid=\<db-id>  
  
    -   For METADATA: metadatalock subresource=\<metadata-subresource> classid=\<metadatalock-description> dbid=\<db-id>  
  
    -   For HOBT: hobtlock hobtid=\<hobt-id> subresource=\<hobt-subresource> dbid=\<db-id>  
  
    -   For ALLOCATION_UNIT: allocunitlock hobtid=\<hobt-id> subresource=\<alloc-unit-subresource> dbid=\<db-id>  
  
     **\<mode> can be:**  
  
     Sch-S, Sch-M, S, U, X, IS, IU, IX, SIU, SIX, UIX, BU, RangeS-S, RangeS-U, RangeI-N, RangeI-S, RangeI-U, RangeI-X, RangeX-, RangeX-U, RangeX-X  
  
 **External resource owner:**  
  
-   External ExternalResource=\<wait-type>  
  
 **Generic resource owner:**  
  
-   TransactionMutex TransactionInfo Workspace=\<workspace-id>  
  
-   Mutex  
  
-   CLRTaskJoin  
  
-   CLRMonitorEvent  
  
-   CLRRWLockEvent  
  
-   resourceWait  
  
 **Latch resource owner:**  
  
-   \<db-id>:\<file-id>:\<page-in-file>  
  
-   \<GUID>  
  
-   \<latch-class> (\<latch-address>)  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] admin account. 
 
## Example
This example will identify blocked sessions.  Execute the [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] query in [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)].
```tsql
SELECT * FROM sys.dm_os_waiting_tasks 
WHERE blocking_session_id IS NOT NULL; 
``` 
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

