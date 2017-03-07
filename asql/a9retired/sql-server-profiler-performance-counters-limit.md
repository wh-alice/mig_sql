---
title: "SQL Server Profiler - Performance Counters Limit | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.pro.performancecounterlimit.f1"
helpviewer_keywords: 
  - "Performance Counters List dialog box"
ms.assetid: d10140ef-36c4-449c-b365-1cff1b2524e4
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# SQL Server Profiler - Performance Counters Limit
  Use the Performance Counters Limit dialog box to limit the information from a System Monitor performance log file when correlating it with a [!INCLUDE[ssSqlProfiler](../a9retired/includes/sssqlprofiler-md.md)] trace. You can use this dialog box to select counters that should be displayed and used for correlation.  
  
 The **Performance Counters Limit** dialog box is populated with the performance objects and counters that the performance log file contains.  
  
### To select performance objects and counters to correlate with a trace  
  
1.  Expand a performance object to see which counters are included in the performance log file.  
  
2.  Check the counters that you want to correlate with the [!INCLUDE[ssSqlProfiler](../a9retired/includes/sssqlprofiler-md.md)] trace file.  
  
     If you want to select all counters for a performance object, check the box that is adjacent to the performance object. Checking the topmost node, which indicates the computer, selects all performance objects and counters contained in the performance log file.  
  
## See Also  
 [Correlate a Trace with Windows Performance Log Data &#40;SQL Server Profiler&#41;](../tools/sql-server-profiler/correlate-a-trace-with-windows-performance-log-data-sql-server-profiler.md)  
  
  