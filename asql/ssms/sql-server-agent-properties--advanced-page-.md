---
title: "SQL Server Agent Properties (Advanced Page) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.ag.agent.advanced.f1"
ms.assetid: a4d798ee-4c18-40d4-b6af-63d17503738c
caps.latest.revision: 3
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# SQL Server Agent Properties (Advanced Page)
Use this page to view and modify advanced properties of the Microsoft SQL Server Agent service.  
  
## Options  
**SQL Server event forwarding**  
The options in this category activate and configure event forwarding.  
  
**Forward events to a different server**  
Forwards SQL Server Agent events to a different server.  
  
**Server**  
Select the name of the server to forward events to.  
  
**Unhandled events**  
Forwards only unhandled events to the specified server. SQL Server Agent forwards only events that no alert responds to.  
  
**All events**  
Forwards all events. When an alert in the local instance responds to the event, SQL Server agent will both forward the event and process the alert.  
  
**If event has severity at or above**  
Forwards only events with a severity level at or above the level specified.  
  
**Idle CPU Condition**  
The options in this category define the conditions under which SQL Server Agent runs jobs scheduled to run on the Idle CPU schedule.  
  
**Define idle CPU condition**  
Defines the conditions under which SQL Server Agent considers the CPU to be idle.  
  
**Average CPU usage falls below**  
Percentage of CPU usage below which the CPU is considered to be idle.  
  
**And remains below this level for**  
Amount of time that the average CPU must below the level specified before SQL Server Agent runs jobs on the Idle CPU schedule.  
  
## See Also  
[Create and Attach Schedules to Jobs](../ssms/create-and-attach-schedules-to-jobs.md)  
[Manage Events](../ssms/manage-events.md)  
  
