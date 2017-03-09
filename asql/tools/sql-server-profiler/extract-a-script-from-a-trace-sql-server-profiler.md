---
title: "Extract a Script from a Trace (SQL Server Profiler) | Microsoft Docs"
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
  - "scripts [SQL Server], traces"
  - "extracting script from trace [SQL Server]"
ms.assetid: 431126a6-ff91-4818-8763-4442152bd571
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# Extract a Script from a Trace (SQL Server Profiler)
  This topic describes how to extract [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] events from a trace file or table and save them as a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] script file by using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)].  
  
### To extract a Transact-SQL script from a trace file or table  
  
1.  Open a trace file or table that contains [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] events that you want to save to a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] script file. For more information, see [Open a Trace File &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/open-a-trace-file-sql-server-profiler.md) or [Open a Trace Table &#40;SQL Server Profiler&#41;](../../tools/sql-server-profiler/open-a-trace-table-sql-server-profiler.md).  
  
2.  On the **File** menu, point to **Export**, point to **Extract SQL Server Events**, and then click **Extract Transact-SQL Events**.  
  
3.  In the **Save As** dialog box, type a name for the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] file, and click **Save**.  
  
## See Also  
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)  
  
  