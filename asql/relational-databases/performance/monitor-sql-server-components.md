---
title: "Monitor SQL Server Components | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e8f1b16b-ea40-4e12-886c-967ebda4e6e4
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# Monitor SQL Server Components
  Monitoring is important because [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provides a service in a dynamic environment. The data in the application changes. The type of access that users require changes. The way that users connect changes. The types of applications accessing [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] may even change, but [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] automatically manages system-level resources, such as memory and disk space, to minimize the need for extensive system-level manual tuning. Monitoring lets administrators identify performance trends to determine if changes are necessary.  
  
 To monitor any component of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] effectively:  
  
1.  Determine your monitoring goals.  
  
2.  Select the appropriate tool.  
  
3.  Identify components to monitor.  
  
4.  Select metrics for those components.  
  
5.  Monitor the server.  
  
6.  Analyze the data.  
  
 These steps are discussed in turn below.  
  
## Determine Your Monitoring Goals  
 To monitor [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] effectively you should clearly identify your reason for monitoring. Reasons can include the following:  
  
-   Establish a baseline for performance.  
  
-   Identify performance changes over time.  
  
-   Diagnose specific performance problems.  
  
-   Identify components or processes to optimize.  
  
-   Compare the effect of different client applications on performance.  
  
-   Audit user activity.  
  
-   Test a server under different loads.  
  
-   Test database architecture.  
  
-   Test maintenance schedules.  
  
-   Test backup and restore plans.  
  
-   Determining when to modify your hardware configuration.  
  
## Select the Appropriate Tool  
 After determining why you are monitoring, you should select the appropriate tools for that type of monitoring. The Windows operating system and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provide a complete set of tools to monitor servers in transaction-intensive environments. These tools clearly reveal the condition of an instance of the SQL Server Database Engine or an instance of SQL Server Analysis Services.  
  
 Windows provides the following tools for monitoring applications that are running on a server:  
  
-   System Monitor, which lets you collect and view real-time data about activities such as memory, disk, and processor usage  
  
-   Performance logs and alerts  
  
-   Task Manager  
  
 For more information about Windows Server or Windows tools, see the Windows documentation.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provides the following tools for monitoring components of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
-   SQL Trace  
  
-   [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)]  
  
-   Distributed Replay Utility  
  
-   [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] Activity Monitor  
  
-   [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] Graphical Showplan  
  
-   Stored procedures  
  
-   Database Console Commands (DBCC)  
  
-   Built-in functions  
  
-   Trace flags  
  
 For more information about [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] monitoring tools, see [Performance Monitoring and Tuning Tools](../../relational-databases/performance/performance-monitoring-and-tuning-tools.md).  
  
## Identify the Components to Monitor  
 The third step to monitoring an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is to identify the components that you monitor. For example, if you are using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] to trace a server you can define the trace to collect data about specific events. You can also exclude events that do not apply to your situation.  
  
## Select Metrics for Monitored Components  
 After identifying the components to monitor, determine the metrics for components you monitor. For example, after selecting the events to include in a trace, you can choose to include only specific data about the events. Limiting the trace to data that is relevant to the trace minimizes the system resources required to perform the tracing.  
  
## Monitor the Server  
 To monitor the server, run the monitoring tool that you have configured to gather data. For example, after a trace is defined, you can run the trace to gather data about events raised in the server.  
  
## Analyze the Data  
 After the trace has finished, analyze the data to see if you have achieved your monitoring goal. If you have not, modify the components or metrics that you used to monitor the server.  
  
 The following outlines the process for capturing event data and putting it to use.  
  
1.  Apply filters to limit the event data collected.  
  
     Limiting the event data allows for the system to focus on the events pertinent to the monitoring scenario. For example, if you want to monitor slow queries, you can use a filter to monitor only those queries issued by the application that take more than 30 seconds to run against a particular database. For more information, see [Set a Trace Filter &#40;Transact-SQL&#41;](../../relational-databases/sql-trace/set-a-trace-filter-transact-sql.md) and [Filter Events in a Trace &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/filter-events-in-a-trace-sql-server-profiler.md).  
  
2.  Monitor (capture) events.  
  
     As soon as it is enabled, active monitoring captures data from the specified application, instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], or operating system. For example, when disk activity is monitored using System Monitor, monitoring captures event data, such as disk reads and writes, and displays it on the screen. For more information, see [Monitor Resource Usage &#40;System Monitor&#41;](../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md).  
  
3.  Save captured event data.  
  
     Saving captured event data lets you analyze it later or even replay it using the Distributed Replay Utility or [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)]. Captured event data is saved to a file that can be loaded back into the tool that originally created it for analysis. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] permits event data to be saved to a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table. Saving captured event data is important when you are creating a performance baseline. The performance baseline data is saved and used, when comparing recently captured event data, to determine whether performance is optimal. For more information, see [SQL Server Profiler Templates and Permissions](../../tools/sql-server-profiler/sql-server-profiler-templates-and-permissions.md).  
  
4.  Create trace templates that contain the settings specified to capture the events.  
  
     Trace templates include specifications about the events themselves, event data, and filters that are used to capture data. These templates can be used to monitor a specific set of events later without redefining the events, event data, and filters. For example, if you want to frequently monitor the number of deadlocks, and the users involved in those deadlocks, you can create a template defining those events, event data, and event filters; save the template; and reapply the filter the next time that you want to monitor deadlocks. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] uses trace templates for this purpose. For more information, see [Set Trace Definition Defaults &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/set-trace-definition-defaults-sql-server-profiler.md) and [Create a Trace Template &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/create-a-trace-template-sql-server-profiler.md).  
  
5.  Analyze captured event data.  
  
     To be analyzed, the captured event data is loaded into the application that captured the data. For example, a captured trace from [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] can be reloaded into [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] for viewing and analysis. For more information, see [View and Analyze Traces with SQL Server Profiler](../../tools/sql-server-profiler/view-and-analyze-traces-with-sql-server-profiler.md).  
  
     Analyzing event data involves determining what is occurring and why. This information lets you make changes that can improve performance, such as adding more memory, changing indexes, correcting coding problems with Transact-SQL statements or stored procedures, and so on, depending on the type of analysis performed. For example, you can use the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor to analyze a captured trace from [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] and make index recommendations based on the results.  
  
6.  Replay captured event data.  
  
     Event replay lets you establish a test copy of the database environment from which the data was captured, and then repeat the captured events as they occurred originally on the real system. This capability is only available with the Distributed Replay Utility or [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)]. You can replay the events at the same speed as they originally occurred, as fast as possible (to stress the system), or more likely, one step at a time (to analyze the system after each event has occurred). By analyzing the exact events in a test environment, you can prevent harm to the production system. For more information, see [Replay Traces](../../tools/sql-server-profiler/replay-traces.md).  
  
  