---
title: "Start and Stop the Report Server Service | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "stopping Report Server service"
  - "Report Server Windows service, starting"
  - "Report Server service, starting"
  - "starting Report Server service"
ms.assetid: 6ec69ac3-27b0-472d-91e1-733af9078ed2
caps.latest.revision: 55
ms.author: "asaxton"
manager: "erikre"
---
# Start and Stop the Report Server Service
  A report server is implemented as a Windows service that contains the Report Server Web service, Report Manager, and a background processing application. The service must be running if you want to use any report server functionality. Stopping the service stops all report server operations.  
  
 While the service is stopped, requests for scheduled report and subscription processing that would have occurred had the service been running are added to the queue. This is because jobs that are run by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent create the events. If you want to avoid a backlog of operations while the service is off, consider stopping [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent as well.  
  
 You can use a variety of tools to start or stop the Report Server service, including the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, and the Services tool provided in [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows.  
  
 If you are doing more than starting or stopping the service, such as changing the service account, you must use the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool. Using other tools to change the service account can break your [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installation. For more information, see [Configure the Report Server Service Account &#40;SSRS Configuration Manager&#41;](../../reporting-services/install/windows/configure-the-report-server-service-account-ssrs-configuration-manager.md).  
  
 You cannot pause and resume the service. There are no start parameters. Although there are no explicit dependencies, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent must be running if you support any subscriptions or scheduled report operations on the report server.  
  
### To start or stop the service using the Reporting Services Configuration tool  
  
1.  Start [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool and connect to the report server.  
  
2.  On the Report Server Status page, click **Stop** or **Start**.  
  
### To start or stop the service using Services in Administrative Tools  
  
-   In Administrative Tools, open Services, right-click **SQL Server Reporting Services (MSSQLSERVER)**, and click **Stop** or **Restart**.  
  
 If you are running multiple instance or if the report server is running as a named instance, verify that the instance name in parentheses corresponds to the report server instance you want to stop or restart.  
  
### To start or stop the service using SQL Server Configuration Manager  
  
1.  Start [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager.  
  
2.  Select SQL Server Services, right-click **SQL Server Reporting Services**, and click **Stop** or **Restart**.  
  
## See Also  
 [Reporting Services Configuration Manager &#40;Native Mode&#41;](../../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md)   
 [Start, Stop, or Pause the SQL Server Agent Service](../Topic/Start,%20Stop,%20or%20Pause%20the%20SQL%20Server%20Agent%20Service.md)  
  
  