---
title: "Start SQL Server Profiler | Microsoft Docs"
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
  - "Profiler [SQL Server Profiler], starting"
  - "SQL Server Profiler, starting"
  - "starting SQL Server Profiler"
ms.assetid: 22e57ffa-63b0-4de3-b92e-df297dda1226
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# Start SQL Server Profiler
  You can start [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] in several different ways to support gathering trace output in a variety of scenarios. You can start [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] include from the **Start** menu, from the **Tools** menu in [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] Tuning Advisor, and from several locations in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
 When you first start [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] and select **New Trace** from the **File** menu, the application displays a **Connect to Server** dialog box where you can specify the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instance to which you want to connect.  
  
### To start SQL Server Profiler from the Start menu  
  
1.  On the **Start** menu, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../a9notintoc/includes/sscurrentui-md.md)], point to **Performance Tools**, and then click **SQL Server Profiler**.  
  
### To start SQL Server Profiler in Database Engine Tuning Advisor  
  
1.  On the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] Tuning Advisor **Tools** menu, click **SQL Server Profiler**.  
  
## Starting SQL Server Profiler in Management Studio  
 [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] starts each profiler session in its own instance and continues to run if you shutdown [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
 You can start [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] from several locations in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], as illustrated in the following procedures. When [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] starts it loads the connection context, trace template, and filter context of its launch point.  
  
#### To start SQL Server Profiler from the Tools menu  
  
1.  In the [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] **Tools** menu, click **SQL Server Profiler**.  
  
#### To start SQL Server Profiler from the Query Editor  
  
1.  On the [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] menu bar, click **New Query**.  
  
2.  In Query Editor, right-click and then select **Trace Query in SQL Server Profiler**.  
  
    > [!NOTE]  
    >  The connection context is the editor connection, the trace template is TSQL_SPs, and the applied filter is SPID = query window SPID.  
  
#### To start SQL Server Profiler from Activity Monitor  
  
1.  In Object Explorer, right-click an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], and then click **Activity Monitor**.  
  
2.  Click the **Processes** pane, right-click the process that you want to profile, and then click **Trace Process in SQL Server Profiler**.  
  
    > [!NOTE]  
    >  When a process is selected, the connection context is the Object Explorer connection when Activity Monitor was opened. The trace template is the default based on the server type, and the SPID equals the SPID for the selected process.  
  
## .NET Framework Security  
 In Windows Authentication mode, the user account that runs [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] must have permission to connect to an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
 To perform tracing with [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)], users must also have the ALTER TRACE permission.  
  
## See Also  
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)   
 [Use SQL Server Management Studio](../Topic/Use%20SQL%20Server%20Management%20Studio.md)  
  
  