---
title: "Save Trace Results to a File | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 74f80667-62f3-4e14-bb1a-f0c2b6ef3402
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# Save Trace Results to a File
  You can save trace results to a file. A trace file is a file where the trace results are written. A trace file can be located either in a local directory (such as C:\\*foldername*\\*filename.trc*) or a network directory (such as \\\computername\sharename\filename.trc).  
  
 You can use the trace files to do the following:  
  
-   Replay traces  
  
-   Audit [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]  
  
-   Conduct performance analysis  
  
-   Correlate trace events with performance counters to enhance problem detection  
  
-   Perform Database Engine Tuning Advisor analysis  
  
-   Carry out query optimization  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] saves trace results to a file when a path and file name are specified for the **@tracefile** argument of the stored procedure **sp_trace_create**.  
  
> [!NOTE]  
>  If a path is specified to the **sp_trace_create** stored procedure for saving the trace file, the directory must be accessible to the server. Also be aware that if a local directory is specified to **sp_trace_create**, it is a local directory on the server computer.  
  
 If [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] is used, it allows you to save trace results to a file or to a table. Saving trace results to a table allows the same access as saving the trace to a file plus you can query the table to search for specific events.  
  
 For more information about saving trace results, see [Save Trace Results to a Table &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/save-trace-results-to-a-table-sql-server-profiler.md) and [Save Trace Results to a File &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/save-trace-results-to-a-file-sql-server-profiler.md).  
  
## See Also  
 [sp_trace_create &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-trace-create-transact-sql.md)   
 [Create a Trace &#40;Transact-SQL&#41;](../../relational-databases/sql-trace/create-a-trace-transact-sql.md)   
 [Create a Trace &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/create-a-trace-sql-server-profiler.md)  
  
  