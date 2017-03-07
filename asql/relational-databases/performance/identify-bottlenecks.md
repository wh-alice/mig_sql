---
title: "Identify Bottlenecks | Microsoft Docs"
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
  - "resource bottlenecks [SQL Server]"
  - "database monitoring [SQL Server], bottlenecks"
  - "performance [SQL Server], bottlenecks"
  - "tuning databases [SQL Server], bottlenecks"
  - "monitoring server performance [SQL Server], bottlenecks"
  - "monitoring performance [SQL Server], bottlenecks"
  - "database performance [SQL Server], bottlenecks"
  - "server performance [SQL Server], bottlenecks"
  - "bottlenecks [SQL Server]"
  - "identifying bottlenecks [SQL Server]"
ms.assetid: db079e65-ee80-4105-aec9-f8230d0d6635
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# Identify Bottlenecks
  Simultaneous access to shared resources causes bottlenecks. In general, bottlenecks are present in every software system and are inevitable. However, excessive demands on shared resources cause poor response time and must be identified and tuned.  
  
 Causes of bottlenecks include:  
  
-   Insufficient resources, requiring additional or upgraded components.  
  
-   Resources of the same type among which workloads are not distributed evenly; for example, one disk is being monopolized.  
  
-   Malfunctioning resources.  
  
-   Incorrectly configured resources.  
  
## Analyzing Bottlenecks  
 Excessive durations for various events are indicators of bottlenecks that can be tuned.  
  
 For example:  
  
-   Some other component may prevent the load from reaching this component thereby increasing the time to complete the load.  
  
-   Client requests may take longer due to network congestion.  
  
 Following are five key areas to monitor when tracking server performance to identify bottlenecks.  
  
|Possible bottleneck area|Effects on the server|  
|------------------------------|---------------------------|  
|Memory usage|Insufficient memory allocated or available to Microsoft [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] degrades performance. Data must be read from the disk rather than directly from the data cache. Microsoft Windows operating systems perform excessive paging by swapping data to and from the disk as the pages are needed.|  
|CPU utilization|A chronically high CPU utilization rate may indicate that [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] queries need to be tuned or that a CPU upgrade is needed.|  
|Disk input/output (I/O)|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] queries can be tuned to reduce unnecessary I/O; for example, by employing indexes.|  
|User connections|Too many users may be accessing the server simultaneously causing performance degradation.|  
|Blocking locks|Incorrectly designed applications can cause locks and hamper concurrency, thus causing longer response times and lower transaction throughput rates.|  
  
## See Also  
 [Monitor CPU Usage](../../relational-databases/monitor/performance-monitor/monitor-cpu-usage.md)   
 [Monitor Disk Usage](../../relational-databases/monitor/performance-monitor/monitor-disk-usage.md)   
 [Monitor Memory Usage](../../relational-databases/monitor/performance-monitor/monitor-memory-usage.md)   
 [SQL Server, General Statistics Object](../../relational-databases/monitor/performance-monitor/sql-server-general-statistics-object.md)   
 [SQL Server, Locks Object](../../relational-databases/monitor/performance-monitor/sql-server-locks-object.md)  
  
  