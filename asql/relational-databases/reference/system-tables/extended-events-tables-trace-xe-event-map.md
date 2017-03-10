---
title: "trace_xe_event_map (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "trace_xe_event_map_TSQL"
  - "trace_xe_event_map"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "trace_xe_event_map"
  - "extended events [SQL Server], tables"
ms.assetid: 537aa292-3540-47e8-be28-56dc01abc343
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
---
# Extended Events Tables - trace_xe_event_map
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Contains one row for each Extended Events event that is mapped to a SQL Trace event class. This table is stored in the master database, in the sys schema.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|trace_event_id|**smallint**|The ID of the SQL Trace event class that is being mapped.|  
|package_name|**nvarchar(60)**|The name of the Extended Events package where the mapped event resides.|  
|xe_event_name|**nvarchar(60)**|The name of the Extended Events event that is mapped to the SQL Trace event class.|  
  
## Remarks  
 You can use the following query to identify the Extended Events events that are equivalent to the SQL Trace event classes:  
  
```  
SELECT te.name, xe.package_name, xe.xe_event_name  
FROM sys.trace_events AS te  
LEFT JOIN sys.trace_xe_event_map AS xe  
   ON te.trace_event_id = xe.trace_event_id  
WHERE xe.trace_event_id IS NOT NULL  
```  
  
 Not all event classes have equivalent Extended Events events. You can use the following query to list the event classes that do not have an Extended Events equivalent:  
  
```  
SELECT te.trace_event_id, te.name  
FROM sys.trace_events AS te  
LEFT JOIN sys.trace_xe_event_map AS xe  
   ON te.trace_event_id = xe.trace_event_id  
WHERE xe.trace_event_id IS NULL  
```  
  
 In the previous query, most of the returned event classes are audit-related. We recommend that you use [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Audit for auditing. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Audit uses Extended Events to help create an audit. For more information, see [SQL Server Audit &#40;Database Engine&#41;](../../../relational-databases/security/auditing/sql-server-audit-database-engine.md).  
  
## See Also  
 [trace_xe_action_map &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/extended-events-tables-trace-xe-action-map.md)  
  
  