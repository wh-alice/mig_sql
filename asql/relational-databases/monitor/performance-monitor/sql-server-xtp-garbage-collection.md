---
title: "SQL Server XTP Garbage Collection | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 64ae91e5-b420-44b4-af1a-f8bca83d7f41
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server XTP Garbage Collection
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  The SQL Server XTP Garbage Collection performance object contains counters related to the In-Memory OLTP engine's garbage collector.  
  
 This table describes the **SQL Server XTP Garbage Collection** counters.  
  
|Counter|Description|  
|-------------|-----------------|  
|**Dusty corner scan retries/sec (GC-issued)**|The number of scan retries due to write conflicts during dusty corner sweeps issued by the garbage collector (on average), per second. This is a very low-level counter, not intended for customer use.|  
|**Main GC work items/sec**|The number of work items processed by the main GC thread.|  
|**Parallel GC work item/sec**|The number of times a parallel thread has executed a GC work item.|  
|**Rows processed/sec**|The number of rows processed by the garbage collector (on average), per second.|  
|**Rows processed/sec (first in bucket and removed)**|The number of rows processed by the garbage collector that were first in the corresponding hash bucket, and were able to be removed immediately (on average), per second.|  
|**Rows processed/sec (first in bucket)**|The number of rows processed by the garbage collector that were first in the corresponding hash bucket (on average), per second.|  
|**Rows processed/sec (marked for unlink)**|The number of rows processed by the garbage collector that were already marked for unlink (on average), per second.|  
|**Rows processed/sec (no sweep needed)**|The number of rows processed by the garbage collector that will not require a dusty corner sweep (on average), per second.|  
|**Sweep expired rows removed/sec**|The number of expired rows removed during dusty corner sweeps (on average), per second.|  
|**Sweep expired rows touched/sec**|The number of expired rows touched during dusty corner sweeps (on average), per second.|  
|**Sweep expiring rows touched/sec**|The number of expiring rows touched during dusty corner sweeps (on average), per second.|  
|**Sweep rows touched/sec**|The number of rows touched during dusty corner sweeps (on average), per second.|  
|**Sweep scans started/sec**|The number of dusty corner sweep scans started (on average), per second.|  
  
## See Also  
 [SQL Server XTP &#40;In-Memory OLTP&#41; Performance Counters](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-in-memory-oltp-performance-counters.md)  
  
  