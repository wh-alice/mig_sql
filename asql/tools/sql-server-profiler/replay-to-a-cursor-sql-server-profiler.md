---
title: "Replay to a Cursor (SQL Server Profiler) | Microsoft Docs"
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
  - "replaying cursors"
  - "traces [SQL Server], replaying"
  - "replaying traces"
ms.assetid: 89eadc41-4424-4a1c-ba61-0b52c851cdb1
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# Replay to a Cursor (SQL Server Profiler)
  This topic describes how to replay trace files or tables that pause when a cursor is reached by using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)]. Pausing traces at cursors supports debugging because you can break the replay of long trace scripts into short segments that can be analyzed incrementally.  
  
### To replay to the cursor  
  
1.  Open the trace file or trace table you want to replay. For more information, see [Open a Trace File &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/open-a-trace-file-sql-server-profiler.md) or [Open a Trace Table &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/open-a-trace-table-sql-server-profiler.md).  
  
     Make sure that the trace file or table you open contains the event classes necessary for replay. For more information, see [Replay Requirements](../../tools/sql-server-profiler/replay-requirements.md).  
  
2.  In the trace window, click an event.  
  
3.  On the **Replay** menu, click **Run to Cursor**, and then connect to the server where you want to replay the trace.  
  
4.  In the **Replay Configuration** dialog box, verify the settings, and then click **OK**.  
  
     The replay starts, pausing when the first cursor is reached.  
  
5.  Press F5 to resume the trace.  
  
6.  Repeat Step 5 through the end of the trace.  
  
## See Also  
 [Replay to a Breakpoint &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/replay-to-a-breakpoint-sql-server-profiler.md)   
 [Replay Traces](../../tools/sql-server-profiler/replay-traces.md)   
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)  
  
  