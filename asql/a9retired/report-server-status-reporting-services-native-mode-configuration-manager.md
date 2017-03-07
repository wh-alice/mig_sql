---
title: "Report Server Status  - Reporting Services Native mode (Configuration Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "SQL13.rsconfigtool.serverstatus.F1"
ms.assetid: 2f63ad1c-1bc2-449d-b451-fb39a0060838
caps.latest.revision: 17
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Report Server Status  - Reporting Services Native mode (Configuration Manager)
  Use this page to view information about the report server instance to which you are currently connected. This page is the start page for report server configuration. Additional pages are available to configure URLs, the service account, the report server database, report server e-mail delivery, scale-out deployment, and encryption keys.  
  
 [!INCLUDE[applies](../a9retired/includes/applies-md.md)] [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Native mode.  
  
 To open this page, start the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager and connect to the report server instance. For more information, see [Reporting Services Configuration Manager (SSRS Native Mode)](http://msdn.microsoft.com/en-us/63519ef4-e68a-42fb-9cf7-31228ea4e434).  
  
> [!TIP]  
>  The[!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager (RSConfigTool.exe) is installed with a privilege level of “highestAvailable”. This behavior is by design. The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] Configuration Manager requires communication with [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] WMI APIs. Some of the [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] WMI communication requires a higher level or administrative of privileges.  
  
 If you connect to the report server and all of the page links are grayed out, verify that the Report Server service is started. The **Report Service Status:** Should be “Started”. You can also use the Services console application in Administrator Tools to check service status.  
  
## Options  
 **SQL Server Instance**  
 Displays information about the report server instance to which you are currently connected. Report server instance names are based on [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] named instances. The default instance is MSSQLSERVER. A named instance will be a value that you specified during setup. For more information about instances, see [Work with Multiple Versions and Instances of SQL Server](../sql-server/install/work-with-multiple-versions-and-instances-of-sql-server.md) in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
> [!NOTE]  
>  In SQL Server Express with Advanced Services, the default instance is SQLExpress.  
  
 **Instance ID**  
 Corresponds to a folder on the file system that stores program files for the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] instance to which you are connected. The **Instance ID** value is assigned by Setup in the format *component*.*instance*, where *component* is a value that signifies a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] component and *instance* is an instance name. The default instance name is MSSQLSERVER. For example, if you install default instances of the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)], [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], and [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] components, the corresponding folder names are the following:  
  
-   MSSQL13.MSSQLSERVER  
  
-   MSAS13.MSSQLSERVER  
  
-   MSRS13.MSSQLSERVER  
  
 If you install a second instance of a component that you already installed, such as the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)], and you name the instance Contoso, the **Instance ID** is MSSQL13.Contoso.  
  
 **Edition**  
 Displays edition information. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server](http://go.microsoft.com/fwlink/?linkid=232473).  
  
 **Product Version**  
 Displays the version of [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] that you installed.  
  
 **Report Server Database**  
 Displays the name of the report server database that stores application data for the current report server instance.  
  
 **Report Server Mode**  
 This should always show a value of **Native**. The [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] configuration manager only supports Native mode report servers. If you see a value of **SharePoint integrated mode**, it may indicate your Native mode deployment is not configured correctly, and you need to connect to a Native mode report catalog. Use the **Database** page of Configuration Manager to change the database and either create a new database or connect to an existing native mode report server database catalog.  
  
 **Server Status**  
 Shows whether the Report Server service is running.  
  
 **Start**  
 Starts the Report Server service. Restarting the service is necessary after some configuration changes (for example, when reconfiguring a report server after a computer name change). If you reconfigure the URL reservations, the service will restart automatically. The restart is required to pick up the changes.  
  
 **Stop**  
 Stops the Report Server service. Stopping the service causes the report server to stop working. For more information, see [Start and Stop the Report Server Service](../reporting-services/report-server/start-and-stop-the-report-server-service.md) in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
## See Also  
 [Reporting Services Configuration Manager Help Topics](../a9retired/reporting-services-configuration-manager-help-topics.md)   
 [Reporting Services Configuration Manager &#40;Native Mode&#41;](../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md)   
 [Initialize a Report Server &#40;SSRS Configuration Manager&#41;](../reporting-services/install/windows/ssrs-encryption-keys-initialize-a-report-server.md)  
  
  