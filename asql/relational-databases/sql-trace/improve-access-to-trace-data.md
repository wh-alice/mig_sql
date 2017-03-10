---
title: "Improve Access to Trace Data | Microsoft Docs"
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
  - "Profiler [SQL Server Profiler], space"
  - "SQL Server Profiler, space"
  - "space [SQL Server], SQL Server Profiler"
ms.assetid: c260c000-fd53-4831-993f-df6894f3228b
caps.latest.revision: 14
ms.author: "jhubbard"
manager: "jhubbard"
---
# Improve Access to Trace Data
  [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] uses space in the **temp** directory to improve access to trace data. [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] requires at least 10 megabytes (MB) of free space. If free space drops below 10 MB while you are using [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)], all [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] functions stop.  
  
 When [!INCLUDE[ssSqlProfiler](../../analysis-services/data-mining/includes/sssqlprofiler-md.md)] uses space in the **temp** directory, this space usage may cause the **temp** directory to grow rapidly. To avoid file-growth problems, you can place the **temp** directory on a drive that is not a system drive by changing the value for the TEMP environment variable.  
  
 The following procedure describes how to change the value for the TEMP environment variable in most Microsoft Windows operating systems. For more information about setting environment variables, see your Windows operating system documentation.  
  
### To change the TEMP environment variable in Windows operating systems  
  
1.  On the **Start** menu, choose **Control Panel**, and then click **System**.  
  
2.  In the **System Properties** dialog box, click the **Advanced** tab, and then click **Environment Variables**.  
  
3.  Scroll down the list of **System Variables**, select the row that corresponds to the **TEMP** variable, and click **Edit**.  
  
4.  In the **Edit System Variable** dialog box, enter the path and name of the drive and directory where you want the **temp** directory to be located.  
  
5.  Click **OK** to save the change.  
  
## See Also  
 [Start SQL Server Profiler](../../tools/sql-server-profiler/start-sql-server-profiler.md)   
 [SQL Server Profiler](../../tools/sql-server-profiler/sql-server-profiler.md)  
  
  