---
title: "PreConnect:Starting Event Class | Microsoft Docs"
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
  - "PreConnect:Starting Event Class"
ms.assetid: d43ed0ad-3dbd-42e0-9cef-8320b8d87497
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# PreConnect:Starting Event Class
  The PreConnect:Starting event class indicates when a LOGON trigger or the Resource Governor classifier function starts execution.  
  
## PreConnect:Starting Event Class Data Columns  
  
|Data column name|Data type|Description|Column ID|Filterable|  
|----------------------|---------------|-----------------|---------------|----------------|  
|EventClass|**int**|215|27|No|  
|SPID|**int**|The ID of server process that fires this event.|12|Yes|  
|EventSubClass|**int**|1 for the user-defined classifier function.|21|Yes|  
|StartTime|**datetime**|The time when the user-defined classifier function starts.|14|Yes|  
|ObjectID|**int**|The ID of the user-defined classifier object.|22|Yes|  
|ObjectName|**nvarchar(256)**|The two-part name of the classifier user-defined function. For example, dbo.classifier.|34|Yes|  
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)   
 [PreConnect:Completed Event Class](../../relational-databases/event-classes/preconnect-completed-event-class.md)   
 [Resource Governor](../../relational-databases/resource-governor/resource-governor.md)  
  
  