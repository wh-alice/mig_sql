---
title: "Filter Events Based on the Event End Time (SQL Server Profiler) | Microsoft Docs"
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
  - "event end times [SQL Server]"
  - "filters [SQL Server], traces"
  - "traces [SQL Server], filters"
  - "traces [SQL Server], events"
ms.assetid: 74628f9e-2d39-496a-a443-0a3887db223d
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
---
# Filter Events Based on the Event End Time (SQL Server Profiler)
  This topic describes how to filter trace events based on the event ending time by using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)].  
  
### To filter events based on the event end time  
  
1.  On the **File** menu, click **New Trace**, and then connect to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     The **Trace Properties**dialog box appears.  
  
    > [!NOTE]  
    >  If **Start tracing immediately after making connection**is selected, the **Trace Properties**dialog box fails to appear and the trace begins instead. To turn off this setting, on the **Tools**menu, click **Options**, and clear the **Start tracing immediately after making connection** check box.  
  
2.  In the **Trace Properties** dialog box, make sure the **General** tab is selected, and enter a name in the **TraceName** text box.  
  
3.  From the **Use the template**list, select a trace template.  
  
4.  Optionally, specify a destination file or table in which to save the trace results.  
  
5.  On the **Events Selection**tab, click the **EndTime** data column to launch the **Edit Filter** dialog box. You can also right-click the column heading, and select **Edit Column Filter**.  
  
6.  Expand **Greater than** or **Less than**, and enter a **datetime**value in the field that appears beneath the comparison operator.  
  
## See Also  
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)   
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)  
  
  