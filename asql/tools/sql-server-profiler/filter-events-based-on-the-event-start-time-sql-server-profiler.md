---
title: "Filter Events Based on the Event Start Time (SQL Server Profiler) | Microsoft Docs"
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
  - "event start times [SQL Server]"
  - "filters [SQL Server], traces"
  - "traces [SQL Server], filters"
  - "traces [SQL Server], events"
ms.assetid: e965579e-d006-41a3-89ec-cfd5398c67d2
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# Filter Events Based on the Event Start Time (SQL Server Profiler)
  This topic describes how to filter trace events based on the event start time by using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)].  
  
### To filter an event based on the event start time  
  
1.  On the **File** menu, click **New Trace**, and then connect to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     The **Trace Properties**dialog box appears.  
  
    > [!NOTE]  
    >  If **Start tracing immediately after making connection**is selected, the **Trace Properties**dialog box fails to appear, and the trace begins instead. To turn off this setting, on the **Tools**menu, click **Options**, and clear the **Start tracing immediately after making connection** check box.  
  
2.  In the **Trace name** box, type a name for the trace.  
  
3.  In the **Use the template**name list, select a trace template.  
  
4.  Optionally specify a destination for the trace results.  
  
5.  On the **Events Selection**tab, click the **StartTime** column heading. You can also right-click the column heading, and then click **Edit Column Filter** to launch the **Edit Filter** dialog box.  
  
6.  Expand **Greater than** or **Less than**, and then enter a **datetime** value in the field that appears beneath the comparison operator.  
  
## See Also  
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)  
  
  