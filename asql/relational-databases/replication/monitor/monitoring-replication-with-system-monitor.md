---
title: "Monitoring Replication with System Monitor | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "monitoring performance [SQL Server replication], System Monitor"
  - "System Monitor [SQL Server], replication"
  - "performance counters [SQL Server replication]"
ms.assetid: 8cd3a270-0328-4bfd-bf23-b1d759cc120c
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# Monitoring Replication with System Monitor
  [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows System Monitor allows you to use graphs, charts, and reports to gauge the efficiency of your computer, and identify and troubleshoot possible problems (such as unbalanced resource use, insufficient hardware, or poor program design), and plan for additional hardware needs. For more information, see [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md).  
  
 System Monitor uses performance objects and counters, which provide information on the performance of various processes. You can measure replication performance through counters associated with the replication agents:  
  
|Agent|Performance object|Counter|Description|  
|-----------|------------------------|-------------|-----------------|  
|All agents|[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Agents|Running|The number of replication agents currently running.|  
|Snapshot Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Snapshot|Snapshot: Delivered Cmds/sec|The number of commands per second delivered to the Distributor.|  
|Snapshot Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Snapshot|Snapshot: Delivered Trans/sec|The number of transactions per second delivered to the Distributor.|  
|Log Reader Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Logreader|Logreader: Delivered Cmds/sec|The number of commands per second delivered to the Distributor.|  
|Log Reader Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Logreader|Logreader: Delivered Trans/sec|The number of transactions per second delivered to the Distributor.|  
|Log Reader Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Logreader|Logreader: Delivery Latency|The current amount of time, in milliseconds, elapsed from when transactions are applied at the Publisher to when they are delivered to the Distributor.|  
|Distribution Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Dist.|Dist: Delivered Cmds/sec|The number of commands per second delivered to the Subscriber.|  
|Distribution Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Dist.|Dist: Delivered Trans/sec|The number of transactions per second delivered to the Subscriber.|  
|Distribution Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Dist.|Dist: Delivery Latency|The current amount of time, in milliseconds, elapsed from when transactions are delivered to the Distributor to when they are applied at the Subscriber.|  
|Merge Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Merge|Conflicts/sec|The number of conflicts per second occurring during the merge process.|  
|Merge Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Merge|Downloaded Changes/sec|The number of rows per second replicated from the Publisher to the Subscriber.|  
|Merge Agent|[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: Replication Merge|Uploaded Changes/sec|The number of rows per second replicated from the Subscriber to the Publisher.|  
  
## See Also  
 [Monitoring &#40;Replication&#41;](../../../relational-databases/replication/monitor/monitoring-replication.md)  
  
  