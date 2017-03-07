---
title: "Manage the Integration Services Service | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-26"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Integration Services service, configuring"
  - "services [Integration Services], configuring"
ms.assetid: 45554117-a0df-4830-b41c-5ebb33b764a5
caps.latest.revision: 63
ms.author: "douglasl"
manager: "jhubbard"
---
# Manage the Integration Services Service
    
> **IMPORTANT!!** This topic discusses the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service, a Windows service for managing [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages. [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] supports the service for backward compatibility with earlier releases of [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]. Starting in [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)], you can manage objects such as packages on the Integration Services server.  
  
 When you install the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] component of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is also installed. By default, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is started and the startup type of the service is set to automatic. However, you must also install [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to use the service to manage stored and running [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages.  
  
> **NOTE:** To connect directly to an instance of the legacy Integration Services Service, you have to use the version of SQL Server Management Studio (SSMS) aligned with the version of SQL Server on which the Integration Services Service is running. For example, to connect to the legacy Integration Services Service running on an instance of SQL Server 2016, you have to use the version of SSMS released for SQL Server 2016. [Download SQL Server Management Studio (SSMS)](https://msdn.microsoft.com/library/mt238290.aspx).
>
>   In the SSMS **Connect to Server** dialog box, you cannot enter the name of a server on which an earlier version of the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is running. However, to manage packages that are stored on a remote server, you do not have to connect to the instance of the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service on that remote server. Instead, edit the configuration file for the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service so that [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] displays the packages that are stored on the remote server. For more information, see [Configuring the Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/configuring-the-integration-services-service-ssis-service.md).  
  
 You can only install a single instance of the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service on a computer. The service is not specific to a particular instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. You connect to the service by using the name of the computer on which it is running.  
  
 You can manage the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service by using one of the following Microsoft Management Console (MMC) snap-ins: SQL Server Configuration Manager or Services. Before you can manage packages in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], you must make sure that the service is started.  
  
 By default, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is configured to manage packages in the msdb database of the instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] that is installed at the same time as [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]. If an instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] is not installed at the same time, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is configured to manage packages in the msdb database of the local, default instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. To manage packages that are stored in a named or remote instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)], or in multiple instances of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)], you have to modify the configuration file for the service. For more information, see [Configuring the Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/configuring-the-integration-services-service-ssis-service.md).  
  
 By default, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is configured to stop running packages when the service is stopped. However, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service does not wait for packages to stop and some packages may continue running after the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is stopped.  
  
 If the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is stopped, you can continue to run packages using the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Import and Export Wizard, the [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, the Execute Package Utility, and the **dtexec** command prompt utility (dtexec.exe). However, you cannot monitor the running packages.  
  
 By default, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service runs in the context of the NETWORK SERVICE account.  
  
 The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service writes to the Windows event log. You can view service events in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]. You can also view service events by using the Windows Event Viewer.  
  
### To set properties of Integration Services service using the Services snap-in  
  
-   [Set the Properties of the Integration Services Service](../../integration-services/service/set-the-properties-of-the-integration-services-service.md)  
  
### To view service events for Integration Services service  
  
-   [View Events for the Integration Services Service](../../integration-services/service/view-events-for-the-integration-services-service.md)  
  
## See Also  
 [Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/integration-services-service-ssis-service.md)   
 [Configuring the Integration Services Service &#40;SSIS Service&#41;](../../integration-services/service/configuring-the-integration-services-service-ssis-service.md)   
 [SQL Server Import and Export Wizard](../Topic/SQL%20Server%20Import%20and%20Export%20Wizard.md)   
 [dtexec Utility](../../integration-services/packages/dtexec-utility.md)   
 [Execution of Projects and Packages](https://msdn.microsoft.com/library/ms141708(v=sql.130).aspx)  
  
  