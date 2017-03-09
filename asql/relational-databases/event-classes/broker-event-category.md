---
title: "Broker Event Category | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server event classes, Broker event category"
  - "Broker event category [SQL Server]"
  - "event classes [SQL Server], Broker event category"
ms.assetid: 470dc93c-0dda-4d89-829b-937738d59b31
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# Broker Event Category
  The **Broker** event category contains general Service Broker events.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Broker:Activation Event Class](../../relational-databases/event-classes/broker-activation-event-class.md)|An event generated when a queue monitor starts an activation stored procedure.|  
|[Broker:Connection Event Class](../../relational-databases/event-classes/broker-connection-event-class.md)|An event generated to report the status of a transport connection managed by Service Broker.|  
|[Broker:Conversation Event Class](../../relational-databases/event-classes/broker-conversation-event-class.md)|An event generated to report the progress of a conversation.|  
|[Broker:Conversation Group Event Class](../../relational-databases/event-classes/broker-conversation-group-event-class.md)|An event generated when the database creates or drops a conversation group.|  
|[Broker:Corrupted Message Event Class](../../relational-databases/event-classes/broker-corrupted-message-event-class.md)|An event generated to report that the database has received a corrupt message.|  
|[Broker:Forwarded Message Dropped Event Class](../../relational-databases/event-classes/broker-forwarded-message-dropped-event-class.md)|An event generated when SQL Server drops a Service Broker message that was to have been forwarded.|  
|[Broker:Forwarded Message Sent Event Class](../../relational-databases/event-classes/broker-forwarded-message-sent-event-class.md)|An event generated when SQL Server forwards a Service Broker message.|  
|[Broker:Message Classify Event Class](../../relational-databases/event-classes/broker-message-classify-event-class.md)|An event generated when Service Broker determines the routing for a message.|  
|[Broker:Message Drop Event Class](../../relational-databases/event-classes/broker-message-drop-event-class.md)|An event generated when Service Broker is unable to retain a received message that should have been delivered to a service in this instance|  
|[Broker:Remote Message Ack Event Class](../../relational-databases/event-classes/broker-remote-message-ack-event-class.md)|An event generated when Service Broker sends or receives a message acknowledgement.|  
  
 Two security audit events are also provided for Service Broker. For more information on those events, see [Audit Broker Login Event Class](../../relational-databases/event-classes/audit-broker-login-event-class.md) and [Audit Broker Conversation Event Class](../../relational-databases/event-classes/audit-broker-conversation-event-class.md).  
  
## See Also  
 [Security Audit Event Category](../../analysis-services/trace-events/security-audit-event-category.md)  
  
  