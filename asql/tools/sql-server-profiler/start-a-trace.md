---
title: "Start a Trace | Microsoft Docs"
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
  - "SQL Server Profiler, stopping traces"
  - "pausing traces"
  - "Profiler [SQL Server Profiler], stopping traces"
  - "Profiler [SQL Server Profiler], starting traces"
  - "traces [SQL Server], starting"
  - "SQL Server Profiler, pausing traces"
  - "traces [SQL Server], stopping"
  - "Profiler [SQL Server Profiler], pausing traces"
  - "traces [SQL Server], pausing"
  - "SQL Server Profiler, starting traces"
  - "stopping traces"
  - "starting traces"
ms.assetid: aeeb38eb-229a-4c8b-ad66-57e9ce45fb6a
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# Start a Trace
  After you have defined a new trace or created a template by using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)], you can start, pause, or stop capturing data by using the new trace definition or template.  
  
## Starting a Trace  
 When you start a trace and the defined source is an instance of the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] or [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] creates a queue that provides a temporary holding place for captured server events.  
  
 When you use [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] to access SQL Trace, a new trace window opens (if one is not already open) when a trace is started, and data is immediately captured.  
  
 When you use [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] system stored procedures to access SQL Trace, you must start a trace every time an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] starts for data to be captured. When a trace has been started, you can modify only the name of the trace.  
  
> [!NOTE]  
>  When working with existing traces, you can view the properties, but you cannot modify the properties. To modify the properties, stop or pause the trace.  
  
## See Also  
 [Start a Trace Automatically after Connecting to a Server &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/start-a-trace-automatically-after-connecting-to-a-server-sql-server-profiler.md)   
 [Pause a Trace &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/pause-a-trace-sql-server-profiler.md)   
 [Stop a Trace &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/stop-a-trace-sql-server-profiler.md)   
 [Clear a Trace Window &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/clear-a-trace-window-sql-server-profiler.md)   
 [Run a Trace After It Has Been Paused or Stopped &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/run-a-trace-after-it-has-been-paused-or-stopped-sql-server-profiler.md)  
  
  