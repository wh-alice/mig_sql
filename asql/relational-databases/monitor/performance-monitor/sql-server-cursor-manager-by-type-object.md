---
title: "SQL Server, Cursor Manager by Type Object | Microsoft Docs"
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
  - "Cursor Manager by Type object"
  - "SQLServer:Cursor Manager by Type"
ms.assetid: d67fbd8a-7554-4a16-96f1-d9ee857a95e3
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server, Cursor Manager by Type Object
  The **SQLServer:Cursor Manager by Type** object provides counters to monitor cursors, grouped by type.  
  
 This table describes the SQL Server **Cursor Manager by Type** counters.  
  
|Cursor Manager by Type counters|Description|  
|-------------------------------------|-----------------|  
|**Active cursors**|Number of active cursors.|  
|**Cache Hit Ratio**|Ratio between cache hits and lookups.|  
|**Cache Hit Ratio Base**|For internal use only.| 
|**Cached Cursor Counts**|Number of cursors of a given type in the cache.|  
|**Cursor Cache Use Count/sec**|Times each type of cached cursor has been used.|  
|**Cursor memory usage**|Amount of memory consumed by cursors in kilobytes (KB).|  
|**Cursor Requests/sec**|Number of SQL cursor requests received by server.|  
|**Cursor worktable usage**|Number of worktables used by cursors.|  
|**Number of active cursor plans**|Number of cursor plans.|  
  
 Each counter in the object contains the following instances:  
  
|Cursor Manager instance|Description|  
|-----------------------------|-----------------|  
|**_Total**|Information for all cursors.|  
|**API Cursor**|Only the API cursor information.|  
|**TSQL Global Cursor**|Only the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] global cursor information.|  
|**TSQL Local Cursor**|Only the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] local cursor information.|  
  
## See Also  
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)  
  
  