---
title: "SQL Server Extended Events Targets | Microsoft Docs"
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
  - "targets [SQL Server extended events]"
  - "extended events [SQL Server], targets"
ms.assetid: e281684c-40d1-4cf9-a0d4-7ea1ecffa384
caps.latest.revision: 51
ms.author: "genemi"
manager: "jhubbard"
robots: noindex,nofollow
---
# SQL Server Extended Events Targets
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Extended Events targets are event consumers. Targets can write to a file, store event data in a memory buffer, or aggregate event data. Targets can process data synchronously or asynchronously.  
  
 The Extended Events design ensures that targets are guaranteed to receive events once and only once per session.  
  
 Extended Events provide the following targets that you can use for an Extended Events session:  
  
-   [Event counter](../a9retired/event-counter-target.md)  
  
     Counts all specified events that occur during an Extended Events session. Use to obtain information about workload characteristics without adding the overhead of full event collection. This is a synchronous target.  
  
-   [Event file](../a9retired/event-file-target.md)  
  
     Use to write event session output from complete memory buffers to disk. This is an asynchronous target.  
  
-   [Event pairing](../a9retired/event-pairing-target.md)  
  
     Many kinds of events occur in pairs, such as lock acquires and lock releases. Use to determine when a specified paired event does not occur in a matched set. This is an asynchronous target.  
  
-   [Event Tracing for Windows (ETW)](../relational-databases/extended-events/event-tracing-for-windows-target.md)  
  
     Use to correlate [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] events with Windows operating system or application event data. This is a synchronous target.  
  
-   [Histogram](../a9retired/histogram-target.md)  
  
     Use to count the number of times that a specified event occurs, based on a specified event column or action. This is an asynchronous target.  
  
-   [Ring buffer](../a9retired/ring-buffer-target.md)  
  
     Use to hold the event data in memory on a first-in first-out (FIFO) basis, or on a per-event FIFO basis. This is an asynchronous target.  
  
## See Also  
 [Extended Events](../relational-databases/extended-events/extended-events.md)   
 [SQL Server Extended Events Packages](../relational-databases/extended-events/sql-server-extended-events-packages.md)   
 [SQL Server Extended Events Sessions](../relational-databases/extended-events/sql-server-extended-events-sessions.md)   
 [SQL Server Extended Events Engine](../relational-databases/extended-events/sql-server-extended-events-engine.md)  
  
  