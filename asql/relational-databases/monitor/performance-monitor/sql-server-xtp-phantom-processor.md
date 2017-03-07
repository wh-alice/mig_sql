---
title: "SQL Server XTP Phantom Processor | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0f691b3d-a8fd-4459-ad21-2cfc8574a8c0
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server XTP Phantom Processor
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  The SQL Server XTP Phantom Processor performance object contains counters related to the In-Memory OLTP engine's phantom processing subsystem. This component is responsible for detecting phantom rows in transactions running at the SERIALIZABLE isolation level, as well as constraint validation in concurrency scenarios.  
  
 This table describes the **SQL Server XTP Phantom Processor** counters.  
  
|Counter|Description|  
|-------------|-----------------|  
|**Dusty corner scan retries/sec (Phantom-issued)**|The number of scan retries due to write conflicts during dusty corner sweeps issued by the phantom processor (on average), per second. This is a very low-level counter, not intended for customer use.|  
|**Phantom expired rows removed/sec**|The number of expired rows removed by phantom scans (on average), per second.|  
|**Phantom expired rows touched/sec**|The number of expired rows touched by phantom scans (on average), per second.|  
|**Phantom expiring rows touched/sec**|The number of expiring rows touched by phantom scans (on average), per second.|  
|**Phantom rows touched/sec**|The number of rows touched by phantom scans (on average), per second.|  
|**Phantom scans started/sec**|The number of phantom scans started (on average), per second.|  
  
## See Also  
 [SQL Server XTP &#40;In-Memory OLTP&#41; Performance Counters](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-in-memory-oltp-performance-counters.md)  
  
  