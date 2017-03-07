---
title: "View Events for the Integration Services Service | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "events [Integration Services]"
  - "service [Integration Services], events"
  - "Integration Services service, events"
ms.assetid: 37e23946-10d1-4116-8568-8fd24067102e
caps.latest.revision: 21
ms.author: "douglasl"
manager: "jhubbard"
---
# View Events for the Integration Services Service
  There are two tools in which you can view events for the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service:  
  
-   The **Log File Viewer** dialog box in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]. The **Log File Viewer** dialog box includes options to export, filter, and search the log. For more information about the options in the **Log File Viewer**, see [Log File Viewer F1 Help](../../relational-databases/logs/log-file-viewer-f1-help.md).  
  
-   The Windows Event Viewer.  
  
 For descriptions of the events logged by the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service, see [Events Logged by the Integration Services Service](../../integration-services/service/events-logged-by-the-integration-services-service.md).  
  
### To view service events for Integration Services in SQL Server Management Studio  
  
1.  Open [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
2.  On the **File** menu, click **Connect Object Explorer**.  
  
3.  In the **Connect to Server** dialog box, select the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server type, select or locate the server to connect to, and then click **Connect**.  
  
4.  In Object Explorer, right-click [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] and click **View Logs**.  
  
5.  To view [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] events, select **SQL Server Integration Services**. The **NT Events** option is automatically selected and cleared with the **SQL Server Integration Services** option.  
  
### To view service events for Integration Services in Windows Event Viewer  
  
1.  In **Control Panel**, if you are using Classic View, click **Administrative Tools**, or, if you are using Category View, click **Performance and Maintenance** and then click **Administrative Tools**.  
  
2.  Click **Event Viewer**.  
  
3.  In the **Event Viewer** dialog box, click **Application**.  
  
4.  In the **Application** snap-in, locate an entry in the **Source** column that has the value **SQLISService**, right-click the entry, and then click **Properties**.  
  
5.  Optionally, click the up or down arrow to show the previous or next event.  
  
6.  Optionally, click the Copy to Clipboard icon to copy the event information.  
  
7.  Choose to display event data using bytes or words.  
  
8.  Click **OK**.  
  
9. On the **File** menu, click **Exit** to close the **Event Viewer** dialog box.  
  
## See Also  
 [Manage the Integration Services Service](../../integration-services/service/manage-the-integration-services-service.md)   
 [Add a Log for Data Flow Performance Counters](../../integration-services/performance/add-a-log-for-data-flow-performance-counters.md)  
  
  