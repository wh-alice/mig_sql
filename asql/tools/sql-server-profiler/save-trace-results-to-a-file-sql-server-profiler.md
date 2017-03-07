---
title: "Save Trace Results to a File (SQL Server Profiler) | Microsoft Docs"
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
  - "saving traces"
  - "traces [SQL Server], saving"
ms.assetid: ac528747-0c19-4f3d-96f5-44c762a4abed
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# Save Trace Results to a File (SQL Server Profiler)
  This topic describes how to save trace results to a file by using [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)].  
  
### To save trace results to a file  
  
1.  On the **File** menu, click **New Trace**, and then connect to an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
     The **Trace Properties**dialog box appears.  
  
    > [!NOTE]  
    >  If **Start tracing immediately after making connection**is selected, the **Trace Properties**dialog box fails to appear and the trace begins instead. To turn off this setting, on the **Tools**menu, click **Options**, and clear the **Start tracing immediately after making connection** check box.  
  
2.  In the **Trace name** box, type a name for the trace.  
  
3.  Select the **Save to file** check box.  
  
     The **Save As**dialog box appears.  
  
4.  Specify a path and filename in the **Save As**dialog box. Click **Save.**  
  
    > [!NOTE]  
    >  Ensure that the SQL Server service has sufficient permissions to write to a file in the directory specified.  
  
5.  In the **Trace Properties** dialog box, enter the maximum file size in the **Set maximum file size (MB)** text box. The default value is 5 megabytes (MB).  
  
6.  Optionally, specify the following options:  
  
    -   Select the **Enable file rollover** check box to have [!INCLUDE[ssSqlProfiler](../../a9retired/includes/sssqlprofiler-md.md)] create new files for trace data once the maximum file size is reached. This option is selected by default.  
  
    -   Select the **Server processes trace data** check box to ensure that the server records each trace event.  
  
        > [!NOTE]  
        >  When **Server processes trace data**is cleared, the server does not record events if recording events significantly degrades performance.  
  
## See Also  
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)  
  
  