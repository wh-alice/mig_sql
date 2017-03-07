---
title: "Monitor Resource Usage (System Monitor) | Microsoft Docs"
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
  - "monitoring performance [SQL Server], resource usage"
  - "System Monitor [SQL Server], about Windows System Monitor"
  - "resource usage monitoring [SQL Server]"
  - "System Monitor [SQL Server]"
  - "counters [SQL Server], resource usage subjects"
  - "performance counters [SQL Server], resource usage subjects"
  - "Windows System Monitor [SQL Server], about Windows System Monitor"
  - "monitoring [SQL Server], server resource usage"
  - "monitoring resource usage [SQL Server]"
  - "Windows System Monitor [SQL Server]"
  - "database monitoring [SQL Server], resource usage"
  - "database performance [SQL Server], resource usage"
  - "tuning databases [SQL Server], resource usage"
  - "server performance [SQL Server], resource usage"
ms.assetid: f2993a28-0b81-46f2-aec0-6877fe990387
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# Monitor Resource Usage (System Monitor)
  If you are running Microsoft Windows server operating system, use the System Monitor graphical tool to measure the performance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. You can view [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] objects, performance counters, and the behavior of other objects, such as processors, memory, cache, threads, and processes. Each of these objects has an associated set of counters that measure device usage, queue lengths, delays, and other indicators of throughput and internal congestion.  
  
> [!NOTE]  
>  System Monitor replaced Performance Monitor after Windows NT 4.0.  
  
## Benefits of System Monitor  
 System Monitor can be useful to monitor Windows operating system and [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] counters at the same time to determine any correlation between the performance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] and Windows. For example, monitoring the Windows disk input/output (I/O) counters and the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Buffer Manager counters at the same time can reveal the behavior of the entire system.  
  
 System Monitor allows you to obtain statistics on current [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] activity and performance. Using System Monitor, you can:  
  
-   View data simultaneously from any number of computers.  
  
-   View and change charts to reflect current activity, and show counter values that are updated at a frequency that the user defines.  
  
-   Export data from charts, logs, alert logs, and reports to spreadsheet or database applications for further manipulation and printing.  
  
-   Add system alerts that list an event in the alert log and can notify you by issuing a network alert.  
  
-   Run a predefined application the first time or every time a counter value goes over or under a user-defined value.  
  
-   Create log files that contain data about various objects from different computers.  
  
-   Append to one file selected sections from other existing log files to form a long-term archive.  
  
-   View current-activity reports, or create reports from existing log files.  
  
-   Save individual chart, alert, log, or report settings, or the entire workspace setup for reuse.  
  
    > [!NOTE]  
    >  System Monitor replaced the Performance Monitor after Windows NT 4.0. You can use either the System Monitor or Performance Monitor to do these tasks.  
  
## System Monitor Performance  
 When you monitor [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] and the Microsoft Windows operating system to investigate performance-related issues, concentrate your initial efforts in three main areas:  
  
-   Disk activity  
  
-   Processor utilization  
  
-   Memory usage  
  
 Monitoring a computer on which System Monitor is running can affect computer performance slightly. Therefore, either log the System Monitor data to another disk (or computer) so that it reduces the effect on the computer being monitored, or run System Monitor from a remote computer. Monitor only the counters in which you are interested. If you monitor too many counters, resource usage overhead is added to the monitoring process and affects the performance of the computer that is being monitored.  
  
## System Monitor Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Describes when to use System Monitor and discusses performance overhead when you use System Monitor.|[Run System Monitor](../../../relational-databases/monitor/performance-monitor/run-system-monitor.md)|  
|Describes how to monitor disk counters to determine disk activity and the amount of I/O generated by their SQL Server components.|[Monitor Disk Usage](../../../relational-databases/monitor/performance-monitor/monitor-disk-usage.md)|  
|Describes how to monitor an instance of Microsoft [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to determine whether CPU usage rates are within normal ranges.|[Monitor CPU Usage](../../../relational-databases/monitor/performance-monitor/monitor-cpu-usage.md)|  
|Describes how to monitor an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to confirm that memory usage is within typical ranges.|[Monitor Memory Usage](../../../relational-databases/monitor/performance-monitor/monitor-memory-usage.md)|  
|Describes how to create an alert that is raised when a threshold value for a System Monitor counter has been reached.|[Create a SQL Server Database Alert](../../../relational-databases/monitor/performance-monitor/create-a-sql-server-database-alert.md)|  
|Describes how to you create charts, alerts, logs, and reports to monitor an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|[Create Charts, Alerts, Logs, and Reports](../../../relational-databases/monitor/performance-monitor/create-charts-alerts-logs-and-reports.md)|  
|Lists objects and counters that System Monitor uses to monitor activity in computers running an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|[Use SQL Server Objects](../../../relational-databases/monitor/performance-monitor/use-sql-server-objects.md)|  
|Lists objects and counters that System Monitor uses to monitor In-Memory OLTP activity.|[SQL Server XTP &#40;In-Memory OLTP&#41; Performance Counters](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-in-memory-oltp-performance-counters.md)|  
  
  