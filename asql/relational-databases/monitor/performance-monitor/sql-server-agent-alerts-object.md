---
title: "SQL Server Agent, Alerts Object | Microsoft Docs"
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
  - "Alerts object"
  - "SQLAgent:Alerts"
ms.assetid: e5e37f74-ee88-46d0-ad8f-71fd1b1fa64a
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server Agent, Alerts Object
  The SQL Server Agent **Alerts** performance object contains performance counters that report information about SQL Server Agent alerts. The table below lists the counters that this object contains.  
  
 The table below contains the **SQLAgent:Alerts** counters.  
  
|Name|Description|  
|----------|-----------------|  
|**Activated alerts**|This counter reports the total number of alerts that SQL Server Agent has activated since the last time that SQL Server Agent restarted.|  
|**Alerts activated/minute**|This counter reports the number of alerts that SQL Server Agent activated within the last minute.|  
  
> [!NOTE]  
>  To use this SQL Server Agent object, users must be a member of the **sysadmin** fixed server role.  
  
## See Also  
 [Alerts](../Topic/Alerts.md)   
 [Use Performance Objects](../Topic/Use%20Performance%20Objects.md)   
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)  
  
  