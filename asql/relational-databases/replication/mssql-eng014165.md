---
title: "MSSQL_ENG014165 | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "MSSQL_ENG014165 error"
ms.assetid: 7bb07672-310c-4f51-ae76-c55e7c8d51ea
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQL_ENG014165
    
## Message Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|14165|  
|Event Source|MSSQLSERVER|  
|Component|[!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)]|  
|Symbolic Name||  
|Message Text|The threshold [%s:%s] for the publication [%s] has been set. Please make sure that the merge agent is running and can match the expected requirement.|  
  
## Explanation  
 Replication lets you enable warnings for several conditions. This includes failure to process a sufficient number of rows when synchronizing changes between a merge Publisher and Subscriber. Different times can be specified for LAN connections and dial-up connections.  
  
 When you enable a warning by using Replication Monitor or [sp_replmonitorchangepublicationthreshold](../../relational-databases/reference/system-stored-procedures/sp-replmonitorchangepublicationthreshold-transact-sql.md), you specify a threshold that determines when a warning is triggered. When that threshold is met or exceeded, a warning is displayed in Replication Monitor, and an event is written to the Windows event log. Reaching a threshold can also trigger a SQL Server Agent alert. For more information, see [Set Thresholds and Warnings in Replication Monitor](../../relational-databases/replication/monitor/set-thresholds-and-warnings-in-replication-monitor.md) and [Programmatically Monitor Replication](../../relational-databases/replication/monitor/programmatically-monitor-replication.md).  
  
## User Action  
 If a subscription is not meeting a row processing threshold, you must determine whether there is a performance issue with the system or whether the threshold should be adjusted. After you configure replication, develop a performance baseline that will let you determine how replication behaves with a workload that is typical for your applications and topology. Include number of rows processed in this baseline so that you can set an appropriate value for the threshold.  
  
 If the threshold value is appropriate, but it is being exceeded, you must determine where the performance bottleneck is in the system. For more information about how to monitor and troubleshoot replication performance, see the following topics:  
  
-   [Monitor Performance with Replication Monitor](../../relational-databases/replication/monitor/monitor-performance-with-replication-monitor.md) (especially the section "Viewing Detailed Synchronization Performance for Merge Replication")  
  
## See Also  
 [Errors and Events Reference &#40;Replication&#41;](../../relational-databases/replication/errors-and-events-reference-replication.md)  
  
  