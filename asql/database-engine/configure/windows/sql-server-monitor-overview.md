---
title: "SQL Server Monitor Overview | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.sqlservermonitor.main.f1"
helpviewer_keywords: 
  - "SQL Server Monitor [SQL Server]"
ms.assetid: 048ae16d-31c3-489a-9f1e-1400a3bacd39
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server Monitor Overview
  SQL Server Monitor does not perform monitoring functions, but it hosts modules that do. The SQL Server Monitor modules include Replication Monitor and Database Mirroring Monitor.  
  
 To use one of these modules, select that module on the **Go** menu. The currently selected module owns the content of the navigation and detail panes, user interaction in the detail panes, and the queries for content and status.  
  
> [!NOTE]  
>  For more information about these monitors, see [Monitoring Replication](../Topic/Monitoring%20Replication.md) and [Monitoring Database Mirroring &#40;SQL Server&#41;](../../../database-engine/database-mirroring/monitoring-database-mirroring-sql-server.md).  
  
## Permissions  
  
-   Replication Monitor  
  
     To monitor replication, you must be a member of the **sysadmin** fixed server role at the Distributor or a member of the **replmonitor** fixed database role in the distribution database. A system administrator can add any user to the **replmonitor** role, which allows that user to view replication activity in Replication Monitor; however, the user cannot administer replication.  
  
-   Database Mirroring Monitor  
  
     To monitor database mirroring, you must be a member of either the **sysadmin** fixed server role or the **dbm_monitor** fixed database role on the server instance. If you are a member of **sysadmin** or **dbm_monitor** on only one of the partner server instances, the monitor can connect only to that partner; the monitor cannot retrieve information from the other partner. For more information, see [Database Mirroring Monitor Overview](../../../database-engine/database-mirroring/database-mirroring-monitor-overview.md).  
  
## Menu Options  
 SQL Server Monitor has a menu that contains commands that pertain to SQL Server Monitor. This menu may also contain commands from the selected module.  
  
 The following menu options pertain to SQL Server Monitor.  
  
 **File**  
 This menu contains the **Exit** command.  
  
 **Action**  
 Contains the context menu of the node selected in the navigation tree.  
  
 **Go**  
 Contains a list of monitoring components:  
  
-   Database Mirroring  
  
-   Replication  
  
 **To use SQL Server Management Studio to monitor database mirroring**  
  
-   [Start Database Mirroring Monitor &#40;SQL Server Management Studio&#41;](../../../database-engine/database-mirroring/start-database-mirroring-monitor-sql-server-management-studio.md)  
  
## See Also  
 [Monitoring Database Mirroring &#40;SQL Server&#41;](../../../database-engine/database-mirroring/monitoring-database-mirroring-sql-server.md)  
  
  