---
title: "Use Warning Thresholds and Alerts on Mirroring Performance Metrics (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "monitoring database mirroring [SQL Server]"
  - "thresholds [SQL Server]"
  - "database mirroring [SQL Server], managing in SQL Server Management Studio"
  - "alerts [SQL Server], database mirroring"
  - "database mirroring [SQL Server], monitoring"
  - "warnings [database mirroring]"
ms.assetid: 8cdd1515-0bd7-4f8c-a7fc-a33b575e20f6
caps.latest.revision: 40
ms.author: "mikeray"
manager: "jhubbard"
---
# Use Warning Thresholds and Alerts on Mirroring Performance Metrics (SQL Server)
  This topic contains information about the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] events for which warning thresholds can be configured and managed for database mirroring. You can use the  Database Mirroring Monitor or the **sp_dbmmonitorchangealert**, **sp_dbmmonitorhelpalert**, and **sp_dbmmonitordropalert** stored procedures. This topic also contains information about configuring alerts on database mirroring events.  
  
 After monitoring is established for a mirrored database, a system administrator can configure warning thresholds on several key performance metrics. Also, an administrator can configure alerts on these and other database mirroring events.  
  
 **In This Topic:**  
  
-   [Performance Metrics and Warning Thresholds](#PerfMetricsAndWarningThresholds)  
  
-   [Setting Up and Managing Warning Thresholds](#SetUpManageWarningThresholds)  
  
-   [Using Alerts for a Mirrored Database](#UseAlerts)  
  
-   [Related Tasks](#RelatedTasks)  
  
##  <a name="PerfMetricsAndWarningThresholds"></a> Performance Metrics and Warning Thresholds  
 The following table lists the performance metrics for which warnings can be configured, describes the corresponding warning threshold, and lists the corresponding Database Mirroring Monitor label.  
  
|Performance metric|Warning threshold|Database Mirroring Monitor label|  
|------------------------|-----------------------|--------------------------------------|  
|Unsent log|Specifies how many kilobytes (KB) of unsent log generate a warning on the principal server instance. This warning helps measure the potential for data loss in terms of KB and is especially relevant for high-performance mode. However, the warning is also relevant for high-safety mode when mirroring is paused or suspended because the partners become disconnected.|**Warn if the unsent log exceeds the threshold**|  
|Unrestored log|Specifies how many KB of unrestored log generate a warning on the mirror server instance. This warning helps measure failover time. *Failover time* consists mainly of the time that the former mirror server requires to roll forward any log remaining in its redo queue, plus a short additional time.<br /><br /> Note: For an automatic failover, the time for the system to notice the error is independent of the failover time.<br /><br /> For more information, see [Estimate the Interruption of Service During Role Switching &#40;Database Mirroring&#41;](../../database-engine/database-mirroring/estimate-the-interruption-of-service-during-role-switching-database-mirroring.md).|**Warn if the unrestored log exceeds the threshold**|  
|Oldest unsent transaction|Specifies the number of minutes worth of transactions that can accumulate in the send queue before a warning is generated on the principal server instance. This warning helps measure the potential for data loss in terms of time and is especially relevant for high-performance mode. However, the warning is also relevant for high-safety mode when mirroring is paused or suspended because the partners become disconnected.|**Warn if the age of the oldest unsent transaction exceeds the threshold**|  
|Mirror commit overhead|Specifies the number of milliseconds of average delay per transaction that are tolerated before a warning is generated on the principal server. This delay is the amount of overhead incurred while the principal server instance waits for the mirror server instance to write the transaction's log record into the redo queue. This value is relevant only in high-safety mode.|**Warn if the mirror commit overhead exceeds the threshold**|  
  
 For any one of these performance metrics, a system administrator can specify a threshold on a mirrored database. For more information, see [Setting Up and Managing Warning Thresholds](#SetUpManageWarningThresholds), later in this topic.  
  
##  <a name="SetUpManageWarningThresholds"></a> Setting Up and Managing Warning Thresholds  
 A system administrator can configure one or more warning thresholds for the key mirroring performance metrics. We recommend setting a threshold for a given warning on both partners to make sure that the warning persists if the database fails over. The appropriate threshold on each partner depends on the performance capabilities of that partner's system.  
  
 Warning thresholds can be configured and managed by using either of the following:  
  
-   Database Mirroring Monitor  
  
     In Database Mirroring Monitor, the administrator can view the current configuration of warnings for a selected database at both the principal and mirror server instances at the same time by selecting the **Warnings** tabbed page. From there, the administrator can open the **Set Warning Thresholds** dialog box to enable and configure one or more warning thresholds.  
  
     For an introduction to the Database Mirroring Monitor interface, see [Database Mirroring Monitor Overview](../../database-engine/database-mirroring/database-mirroring-monitor-overview.md). For information about launching Database Mirroring Monitor, see [Start Database Mirroring Monitor &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/start-database-mirroring-monitor-sql-server-management-studio.md).  
  
-   System stored procedures  
  
     The following set of system stored procedures enable an administrator to set up and manage warning thresholds on mirrored databases of one partner at a time.  
  
    |Procedure|Description|  
    |---------------|-----------------|  
    |[sp_dbmmonitorchangealert &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorchangealert-transact-sql.md)|Adds or changes warning threshold for a specified mirroring performance metric.|  
    |[sp_dbmmonitorhelpalert &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorhelpalert-transact-sql.md)|Returns information about warning thresholds on one or all of several key database mirroring monitor performance metrics.|  
    |[sp_dbmmonitordropalert &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitordropalert-transact-sql.md)|Drops the warning for a specified performance metric.|  
  
## Performance-Threshold Events Sent to the Windows Event Log  
 If warning thresholdis defined for a performance metric, when the status table is updated, the latest value is evaluated against the threshold. If the threshold has been reached, the update procedure, **sp_dbmmonitorupdate**, generates an informational event—a *performance-threshold event*— for the metric and writes the event to the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows event log. The following table lists the event IDs of the performance-threshold events.  
  
|Performance metric|Event ID|  
|------------------------|--------------|  
|Unsent log|32042|  
|Unrestored log|32043|  
|Oldest unsent transaction|32040|  
|Mirror commit overhead|32044|  
  
> [!NOTE]  
>  An administrator can define alerts on any one or more of these events. For more information, see [Using Alerts for a Mirrored Database](#UseAlerts), later in this  
>   
>  topic.  
  
##  <a name="UseAlerts"></a> Using Alerts for a Mirrored Database  
 An important part of monitoring a mirrored database is configuring alerts on significant database mirro events. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] generates the following types of database mirroring events:  
  
-   Performance threshold events  
  
     For more information, see "Performance-Threshold Events Sent to the Windows Event Log" earlier in this topic.  
  
-   State-change events  
  
     These are Windows Management Instrumentation (WMI) events that are generated when changes occur in the internal state of a database mirroring session.  
  
    > [!NOTE]  
    >  For more information, see [WMI Provider for Server Events Concepts](../../relational-databases/wmi-provider-server-events/wmi-provider-for-server-events-concepts.md).  
  
 A system administrator can configure alerts on these by using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent or other applications, such as [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Operations Manager.  
  
 When you define alerts on database mirroring events, we recommend that you define warning thresholds and alerts at both partner server instances. Individual events are generated at either the principal server or the mirror server, but each partner can perform either role at any time. To make sure that an alert continues to operate after a failover, the alert must be defined at both partners.  
  
 For more information, see the white paper about alerting on database mirroring events at this [SQL Server Web site](http://go.microsoft.com/fwlink/?linkid=62373). This white paper contains information about how to configure alerts using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent, the database mirroring WMI events, and sample scripts.  
  
> [!IMPORTANT]  
>  For all mirroring sessions, we strongly recommend that you configure the database to send an alert on any state-change events. Unless a state change is expected as the result of a manual configuration change, something has occurred that could compromise your data. To help protect your data, identify and fix the cause of an unexpected state change.  
  
##  <a name="RelatedTasks"></a> Related Tasks  
 **To create an alert using SQL Server Management Studio**  
  
-   [Create an Alert Using an Error Number](http://msdn.microsoft.com/library/03dd7fac-5073-4f86-babd-37e45a86023c)  
  
-   [Create a WMI Event Alert](http://msdn.microsoft.com/library/b8c46db6-408b-484e-98f0-a8af3e7ec763)  
  
 **To monitor database mirroring**  
  
-   [Start Database Mirroring Monitor &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/start-database-mirroring-monitor-sql-server-management-studio.md)  
  
-   [sp_dbmmonitoraddmonitoring &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitoraddmonitoring-transact-sql.md)  
  
-   [sp_dbmmonitorchangealert &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorchangealert-transact-sql.md)  
  
-   [sp_dbmmonitorchangemonitoring &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorchangemonitoring-transact-sql.md)  
  
-   [sp_dbmmonitordropalert &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitordropalert-transact-sql.md)  
  
-   [sp_dbmmonitordropmonitoring &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitordropmonitoring-transact-sql.md)  
  
-   [sp_dbmmonitorhelpalert &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorhelpalert-transact-sql.md)  
  
-   [sp_dbmmonitorhelpmonitoring &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorhelpmonitoring-transact-sql.md)  
  
-   [sp_dbmmonitorresults &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorresults-transact-sql.md)  
  
-   [sp_dbmmonitorupdate &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorupdate-transact-sql.md)  
  
## See Also  
 [Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/database-mirroring-sql-server.md)   
 [Monitoring Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/monitoring-database-mirroring-sql-server.md)  
  
  