---
title: "Create a SQL Server Database Alert | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "database performance [SQL Server], alerts"
  - "alerts [SQL Server], creating"
  - "thresholds [SQL Server]"
  - "database alerts [SQL Server]"
  - "tuning databases [SQL Server], alerts"
  - "monitoring performance [SQL Server], alerts"
  - "monitoring server performance [SQL Server], alerts"
  - "database monitoring [SQL Server], alerts"
  - "server performance [SQL Server], alerts"
ms.assetid: 0511136a-1b6b-4095-aa45-39e77b67aba2
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# Create a SQL Server Database Alert
  You can use System Monitor to create an alert that is raised when a threshold value for a System Monitor counter has been reached. In response to the alert, System Monitor launches an application, such as a custom application written to handle the alert condition. For example, you could create an alert that is raised when the number of deadlocks exceeds a specific value.  
  
 Alerts also can be defined by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] and [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent. For more information, see [Alerts](http://msdn.microsoft.com/library/3f57d0f0-4781-46ec-82cd-b751dc5affef).  
  
 For more information about using System Monitor to set up a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database alert, see [Set Up a SQL Server Database Alert &#40;Windows&#41;](../../../relational-databases/performance/set-up-a-sql-server-database-alert-windows.md) .  
  
## See Also  
 [sp_add_alert &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-add-alert-transact-sql.md)   
 [sys.sysperfinfo &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-compatibility-views/sys.sysperfinfo-transact-sql.md)  
  
  