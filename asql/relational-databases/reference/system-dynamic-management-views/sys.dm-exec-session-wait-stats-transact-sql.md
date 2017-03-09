---
title: "sys.dm_exec_session_wait_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-01"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_exec_session_wait_stats"
  - "sys.dm_exec_session_wait_stats_tsql"
  - "dm_exec_session_wait_stats"
  - "dm_exec_session_wait_stats_tsql"
helpviewer_keywords: 
  - "sys.dm_exec_session_wait_stats"
ms.assetid: df84842a-71eb-4fda-b448-5953cf9985dc
caps.latest.revision: 6
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_exec_session_wait_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Returns information about all the waits encountered by threads that executed for each session. You can use this  view to diagnose performance issues with the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] session and also with specific queries and batches.  This view returns session the same information that is aggregated for [sys.dm_os_wait_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-wait-stats-transact-sql.md) but provides the **session_id** number as well.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|session_id|**smallint**|The id of the session.|  
|wait_type|**nvarchar(60)**|Name of the wait type. For more information, see [sys.dm_os_wait_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-wait-stats-transact-sql.md).|  
|waiting_tasks_count|**bigint**|Number of waits on this wait type. This counter is incremented at the start of each wait.|  
|wait_time_ms|**bigint**|Total wait time for this wait type in milliseconds. This time is inclusive of signal_wait_time_ms.|  
|max_wait_time_ms|**bigint**|Maximum wait time on this wait type.|  
|signal_wait_time_ms|**bigint**|Difference between the time that the waiting thread was signaled and when it started running.|  
  
## Remarks  
 This DMV resets the information for a session when the session is opened, or when the session is reset (if connection pooling),  
  
 For information about the wait types, see [sys.dm_os_wait_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-wait-stats-transact-sql.md).  
  
## Permissions  
 If the user has **VIEW SERVER STATE** permission on the server, the user will see all executing sessions on the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]; otherwise, the user will see only the current session.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)   
 [sys.dm_os_wait_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-wait-stats-transact-sql.md)  
  
  