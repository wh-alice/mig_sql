---
title: "Use the system_health Session | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-25"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
  - "xevents"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "extended events [SQL Server], system health session"
  - "extended events [SQL Server], system_health session"
  - "system_health session [SQL Server extended events]"
  - "system health session [SQL Server extended events]"
ms.assetid: 1e1fad43-d747-4775-ac0d-c50648e56d78
caps.latest.revision: 17
ms.author: "genemi"
manager: "jhubbard"
---
# Use the system_health Session
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  The system_health session is an Extended Events session that is included by default with [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. This session starts automatically when the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] starts, and runs without any noticeable performance effects. The session collects system data that you can use to help troubleshoot performance issues in the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)]. Therefore, we recommend that you do not stop or delete the session.  
  
 The session collects information that includes the following:  
  
-   The sql_text and session_id for any sessions that encounter an error that has a severity >=20.  
  
-   The sql_text and session_id for any sessions that encounter a memory-related error. The errors include 17803, 701, 802, 8645, 8651, 8657 and 8902.  
  
-   A record of any non-yielding scheduler problems. (These appear in the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] error log as error 17883.)  
  
-   Any deadlocks that are detected.  
  
-   The callstack, sql_text, and session_id for any sessions that have waited on latches (or other interesting resources) for > 15 seconds.  
  
-   The callstack, sql_text, and session_id for any sessions that have waited on locks for > 30 seconds.  
  
-   The callstack, sql_text, and session_id for any sessions that have waited for a long time for preemptive waits. The duration varies by wait type. A preemptive wait is where [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] is waiting for external API calls.  
  
-   The callstack and session_id for CLR allocation and virtual allocation failures.  
  
-   The ring_buffer events for the memory broker, scheduler monitor, memory node OOM, security, and connectivity.  
  
-   System component results from sp_server_diagnostics.  
  
-   Instance health collected by scheduler_monitor_system_health_ring_buffer_recorded.  
  
-   CLR Allocation failures.  
  
-   Connectivity errors using connectivity_ring_buffer_recorded.  
  
-   Security errors using security_error_ring_buffer_recorded.  
  
## Viewing the Session Data  
 The session uses the ring buffer target to store the data. To view the session data, use the following query:  
  
```  
SELECT CAST(xet.target_data as xml) FROM sys.dm_xe_session_targets xet  
JOIN sys.dm_xe_sessions xe  
ON (xe.address = xet.event_session_address)  
WHERE xe.name = 'system_health'  
```  
  
To view the session data from the event file, use the Extended Events user interface available in Management Studio. For more information, see [Advanced Viewing of Target Data from Extended Events in SQL Server](../../relational-databases/extended-events/advanced-viewing-of-target-data-from-extended-events-in-sql-server.md).
  
## Restoring the system_health Session  
 If you delete the system_health session, you can restore it by executing the **u_tables.sql** file in Query Editor. This file is located in the following folder, where C: represents the drive where you installed the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] program files:  
  
 C:\Program Files\Microsoft SQL Server\MSSQL13.\<*instanceid*>\MSSQL\Install  
  
 Be aware that after you restore the session, you must start the session by using the ALTER EVENT SESSION statement or by using the **Extended Events** node in Object Explorer. Otherwise, the session starts automatically the next time that you restart the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] service.  
  
## See Also  
 [Extended Events Tools](../../relational-databases/extended-events/extended-events-tools.md)  
  
  