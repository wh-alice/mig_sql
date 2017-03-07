---
title: "DROP EVENT NOTIFICATION (Transact-SQL) | Microsoft Docs"
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
  - "DROP EVENT NOTIFICATION"
  - "DROP_EVENT_NOTIFICATION_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "event notifications [SQL Server], removing"
  - "deleting event notifications"
  - "dropping event notifications"
  - "DROP EVENT NOTIFICATION statement"
  - "removing event notifications"
ms.assetid: 0ffd8f47-4ea3-4238-9e73-c318df710cf7
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP EVENT NOTIFICATION (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes an event notification trigger from the current database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP EVENT NOTIFICATION notification_name [ ,...n ]  
ON { SERVER | DATABASE | QUEUE queue_name }  
[ ; ]  
```  
  
## Arguments  
 *notification_name*  
 Is the name of the event notification to remove. Multiple event notifications can be specified. To see a list of currently created event notifications, use [sys.event_notifications &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.event-notifications-transact-sql.md).  
  
 SERVER  
 Indicates the scope of the event notification applies to the current server. SERVER must be specified if it was specified when the event notification was created.  
  
 DATABASE  
 Indicates the scope of the event notification applies to the current database. DATABASE must be specified if it was specified when the event notification was created.  
  
 QUEUE *queue_name*  
 Indicates the scope of the event notification applies to the queue specified by *queue_name*. QUEUE must be specified if it was specified when the event notification was created. *queue_name* is the name of the queue and must also be specified.  
  
## Remarks  
 If an event notification fires within a transaction and is dropped within the same transaction, the event notification instance is sent, and then the event notification is dropped.  
  
## Permissions  
 To drop an event notification that is scoped at the database level, at a minimum, a user must be the owner of the event notification or have ALTER ANY DATABASE EVENT NOTIFICATION permission in the current database.  
  
 To drop an event notification that is scoped at the server level, at a minimum, a user must be the owner of the event notification or have ALTER ANY EVENT NOTIFICATION permission in the server.  
  
 To drop an event notification on a specific queue, at a minimum, a user must be the owner of the event notification or have ALTER permission on the parent queue.  
  
## Examples  
 The following example creates a database-scoped event notification, then drops it:  
  
```tsql  
USE AdventureWorks2012;  
GO  
CREATE EVENT NOTIFICATION NotifyALTER_T1  
ON DATABASE  
FOR ALTER_TABLE  
TO SERVICE 'NotifyService',  
    '8140a771-3c4b-4479-8ac0-81008ab17984';  
GO  
DROP EVENT NOTIFICATION NotifyALTER_T1  
ON DATABASE;  
```  
  
## See Also  
 [CREATE EVENT NOTIFICATION &#40;Transact-SQL&#41;](../../t-sql/statements/create-event-notification-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)   
 [sys.event_notifications &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.event-notifications-transact-sql.md)   
 [sys.events &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.events-transact-sql.md)  
  
  