---
title: "Database Event Category | Microsoft Docs"
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
  - "event classes [SQL Server], Database event category"
  - "Database event category [SQL Server]"
  - "SQL Server event classes, Database event category"
ms.assetid: b61af738-f144-4992-b0b2-d44cb7240991
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Database Event Category
  The **Database** event category contains event classes to monitor the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Data File Auto Grow Event Class](../../relational-databases/event-classes/data-file-auto-grow-event-class.md)|Indicates that the data file grew automatically. This event is not triggered if the data file is grown explicitly through ALTER DATABASE.|  
|[Data File Auto Shrink Event Class](../../relational-databases/event-classes/data-file-auto-shrink-event-class.md)|Indicates that the data file has been shrunk.|  
|[Database Mirroring Connection Event Class](../../relational-databases/event-classes/database-mirroring-connection-event-class.md)|An event generated to report the status of a transport connection for database mirroring.|  
|[Database Mirroring State Change Event Class](../../relational-databases/event-classes/database-mirroring-state-change-event-class.md)|Indicates when the state of a mirrored database changes.|  
|[Database Suspect Data Page Event Class](../../relational-databases/event-classes/database-suspect-data-page-event-class.md)|Indicates when a page is added to the **suspect_pages** table in the **msdb** database.|  
|[Log File Auto Grow Event Class](../../relational-databases/event-classes/log-file-auto-grow-event-class.md)|Indicates that the log file grew automatically. This event is not triggered if the log file is grown explicitly through ALTER DATABASE.|  
|[Log File Auto Shrink Event Class](../../relational-databases/event-classes/log-file-auto-shrink-event-class.md)|Indicates that the log file grew automatically. This event is not triggered if the log file shrinks explicitly through ALTER DATABASE.|  
  
## See Also  
 [Extended Events](../../relational-databases/extended-events/extended-events.md)  
  
  