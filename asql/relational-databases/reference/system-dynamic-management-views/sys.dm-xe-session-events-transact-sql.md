---
title: "sys.dm_xe_session_events (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_xe_session_events"
  - "sys.dm_xe_session_events_TSQL"
  - "dm_xe_session_events"
  - "dm_xe_session_events_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_xe_session_events dynamic management view"
  - "extended events [SQL Server], views"
ms.assetid: 4f027b31-4e03-43a6-849d-1ba9d8d34ae8
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_xe_session_events (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about session events. Events are discrete execution points. Predicates can be applied to events to stop them from firing if the event does not contain the required information.  
   
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|event_session_address|**varbinary(8)**|The memory address of the event session. Is not nullable.|  
|event_name|**nvarchar(60)**|The name of the event that an action is bound to. Is not nullable.|  
|event_package_guid|**uniqueidentifier**|The GUID for the package containing the event. Is not nullable.|  
|event_predicate|**nvarchar(2048)**|An XML representation of the predicate tree that is applied to the event. Is nullable.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
### Relationship Cardinalities  
  
|From|To|Relationship|  
|----------|--------|------------------|  
|sys.dm_xe_session_events.event_session_address|sys.dm_xe_sessions.address|Many-to-one|  
|sys.dm_xe_session_events.event_package_guid, sys.dm_xe_session_events.event_name|sys.dm_xe_objects.name, sys.dm_xe_objects.package_guid|Many-to-one|  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)  
  
  