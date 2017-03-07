---
title: "Ring Buffer Target | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
  - "xevents"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "targets [SQL Server extended events], ring buffer target"
  - "ring buffer target [SQL Server extended events]"
ms.assetid: 54494e11-b56b-43b7-aa5e-c8724e56b251
caps.latest.revision: 12
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# Ring Buffer Target
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  The ring buffer target briefly holds event data in memory. This target can manage events in one of two modes.  
  
-   The first mode is strict first-in first-out (FIFO), where the oldest event is discarded when all the memory allocated to the target is used. In this mode (the default), the occurrence_number option is set to 0.  
  
-   The second mode is per-event FIFO, where a specified number of events of each type is kept. In this mode the oldest events of each type are discarded when all the memory allocated to the target is used. You can configure the occurrence_number option to specify the number of events of each type to keep.  
  
 The following table describes the available options for configuring the ring buffer target.  
  
|Option|Allowed values|Description|  
|------------|--------------------|-----------------|  
|max_memory|Any 32 bit integer. This value is optional.|The maximum amount of memory in kilobytes (KB) to use. Existing events are dropped based on the limit that is first reached: max_event_limit or max_memory.|  
|max_event_limit|Any 32 bit integer. This value is optional.|The maximum number of events kept in the ring_buffer. Existing events are dropped based on the limit that is first reached: max_event_limit or max_memory. Default = 1000.|  
|occurrence_number|One of the following values:<br /><br /> 0 (the default) = Oldest event is discarded when all the memory allocated to the target is used.<br /><br /> Any 32 bit integer = The number of events of each type to keep before being discarded on a per-event FIFO basis.<br /><br /> <br /><br /> This value is optional.|The FIFO mode to use, and, if set to a value greater than 0, the preferred number of events of each type to keep in the buffer.|  
  
## Adding the Target to a Session  
 To add the ring buffer target to an Extended Events session, you must include the following statement when you create or alter an event session:  
  
```  
ADD TARGET package0.ring_buffer  
```  
  
## Reviewing the Target Output  
 To review the output from the ring buffer target, you can use the following query, replacing *session_name* with the name of the event session.  
  
```  
SELECT name, target_name, CAST(xet.target_data AS xml)  
FROM sys.dm_xe_session_targets AS xet  
JOIN sys.dm_xe_sessions AS xe  
   ON (xe.address = xet.event_session_address)  
WHERE xe.name = 'session_name'  
```  
  
 The following example shows the ring buffer target output format.  
  
```  
<RingBufferTarget eventsPerSec="" processingTime="" totalEventsProcessed="" eventCount="" droppedCount="" memoryUsed="">  
 <event name="" package="" id="" version="" timestamp="">  
    <data name="">  
      <type name="" package="" />  
      <value></value>  
      <text></text>  
    </data>  
    <action name="" package="">  
      <type name="" package="" />  
      <value></value>  
      <text></text>  
    </action>  
  </event>  
</RingBufferTarget>  
```  
  
## See Also  
 [SQL Server Extended Events Targets](../a9retired/sql-server-extended-events-targets.md)   
 [sys.dm_xe_session_targets &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-xe-session-targets-transact-sql.md)   
 [CREATE EVENT SESSION &#40;Transact-SQL&#41;](../t-sql/statements/create-event-session-transact-sql.md)   
 [ALTER EVENT SESSION &#40;Transact-SQL&#41;](../t-sql/statements/alter-event-session-transact-sql.md)  
  
  