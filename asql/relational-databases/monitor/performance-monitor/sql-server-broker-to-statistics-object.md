---
title: "SQL Server, Broker TO Statistics Object | Microsoft Docs"
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
  - "Broker Transmission Object object"
  - "SQL Server: Broker Transmission Object"
ms.assetid: b5bc5dde-e540-4848-8aa3-5735c51df2fb
caps.latest.revision: 14
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server, Broker TO Statistics Object
  The SQLServer:Broker TO Statistics performance object reports information about how many times [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] dialogs request transmission objects, and how often transmission objects are written to **tempdb**.  
  
 Transmission objects record the state of message transmissions for a [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] dialog. They are stored in memory. To free memory, [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] periodically writes batches of inactive transmission objects to work tables in **tempdb**.  
  
 The following table lists the counters that this object contains.  
  
|SQL Server Broker TO Statistics counters|Description|  
|----------------------------------------------|-----------------|  
|**Avg. Length of Batched Writes**|The average number of transmission objects saved in a batch.|  
|**Avg. Time To Write Batch (ms)**|The average number of milliseconds required to save a batch of transmission objects.|  
|**Avg. Time to Write Batch Base**|For internal use only.|
|**Avg. Time Between Batches (ms)**|The average number of milliseconds between writes of transmission object batches.|  
|**Avg. Time Between Batches Base**|For internal use only.| 
|**Tran Object Gets/sec**|The number of times per second that dialogs requested transmission objects.|  
|**Tran Objects Marked Dirty/sec**|The number of times per second that transmission objects were marked as dirty. Transmission objects are marked as dirty by the first modification that causes the in-memory copy to differ from the copy stored in **tempdb**. Transmission objects are modified when [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] has to record a change in the state of message transmissions for the dialog.|  
|**Tran Object Writes/sec**|The number of times per second that a batch of transmission objects were written to **tempdb** work tables. Large numbers of writes could indicate that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] memory is being stressed.|  
  
## See Also  
 [SQL Server, Access Methods Object](../../../relational-databases/monitor/performance-monitor/sql-server-access-methods-object.md)   
 [SQL Server, Memory Manager Object](../../../relational-databases/monitor/performance-monitor/sql-server-memory-manager-object.md)   
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)  
  
  