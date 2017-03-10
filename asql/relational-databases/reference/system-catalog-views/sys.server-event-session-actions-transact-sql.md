---
title: "sys.server_event_session_actions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.server_event_session_actions"
  - "server_event_session_actions_TSQL"
  - "server_event_session_actions"
  - "sys.server_event_session_actions_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.server_event_session_actions catalog view"
  - "xe"
ms.assetid: 1d8c604e-4361-4846-8661-14cfd1c44f63
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.server_event_session_actions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row for each action on each event of an event session.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|event_session_id|**int**|The ID of the event session. Is not nullable.|  
|event_id|**int**|The ID of the event. This ID is unique within the event session object. Is not nullable.|  
|name|**sysname**|The name of the action. Is nullable.|  
|package|**sysname**|The name of the event package that contains the event. Is nullable.|  
|module|**sysname**|The name of the module that contains the event. Is nullable.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Remarks  
 This view has the following relationship cardinalities.  
  
||||  
|-|-|-|  
|From|To|Relationship|  
|sys.server_event_session_actions.event_session_id|sys.sys.server_event_sessions.event_session_id|Many to one|  
|sys.server_event_session_actions.event_id<br /><br /> sys.server_event_session_actions.event_session_id|sys.server_event_session_events.event_session_id<br /><br /> sys.server_event_session_events.event_id|Many to one|  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Extended Events Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/extended-events-catalog-views-transact-sql.md)   
 [Extended Events](../../../relational-databases/extended-events/extended-events.md)  
  
  