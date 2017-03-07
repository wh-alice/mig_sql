---
title: "Reporting Services Configuration Manager (Native Mode) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Reporting Services Configuration tool"
  - "configuration options [Reporting Services]"
  - "report servers [Reporting Services], configuring"
  - "components [Reporting Services], Reporting Services Configuration tool"
ms.assetid: 379eab68-7f13-4997-8d64-38810240756e
caps.latest.revision: 49
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services Configuration Manager (Native Mode)
  Use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager to configure a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Native Mode installation. If you installed a report server by using the files-only installation option, you must use the Configuration Manager to configure the server before you can use it. If you installed a report server by using the default configuration installation option, you can use the Configuration Manager to verify or modify the settings that were specified during setup. [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager can be used to configure a local or remote report server instance.  
  
 [!INCLUDE[applies](../../../analysis-services/includes/applies-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Native mode.  
  
> [!NOTE]
> Starting with the [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] release, the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager is not designed to manage SharePoint mode report servers. SharePoint mode is managed and configured by using SharePoint Central Administration and PowerShell scripts.  
  
##  <a name="bkmk_scenarios"></a> Scenarios to use Reporting Services Configuration Manager  
 You can use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager to perform the following tasks:  
  
-   Configure the Report Server service account. The account is initially configured during setup, but can be modified by using the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager if you update the password or want to use a different account.  
  
-   Create and configure URLs. The report server and the [!INCLUDE[ssRSWebPortal-Non-Markdown](../../../database-engine/availability-groups/windows/includes/ssrswebportal-non-markdown-md.md)] are [!INCLUDE[vstecasp](../../../database-engine/configure/windows/includes/vstecasp-md.md)] applications accessed through URLs. The report server URL provides access to the SOAP endpoints of the report server. The [!INCLUDE[ssRSWebPortal-Non-Markdown](../../../database-engine/availability-groups/windows/includes/ssrswebportal-non-markdown-md.md)] URL is used to open the [!INCLUDE[ssRSWebPortal-Non-Markdown](../../../database-engine/availability-groups/windows/includes/ssrswebportal-non-markdown-md.md)] You can configure a single URL or multiple URLs for each application.  
  
-   Create and configure the report server database. The report server is a stateless server that requires a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database for internal storage. You can use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager to create and configure a connection to the report server database. You can also select an existing report server database that already contains the content you want to use.  
  
-   Configure a Native mode scale-out deployment. [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] supports a deployment topology that allows multiple report server instances use a single, shared report server database. To deploy a report server scale-out deployment, you use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager to connect each report server to the shared report server database.  
  
-   Backup, restore, or replace the symmetric key that is used to encrypt stored connection strings and credentials. You must have a backup of the symmetric key if you change the service account, or move a report server database to another computer.  
  
-   Configure the unattended execution account. This account is used for remote connections during scheduled operations or when user credentials are not available.  
  
-   Configure report server e-mail. [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] includes a report server e-mail delivery extension that uses a Simple Mail Transfer Protocol (SMTP) to deliver reports or report processing notification to an electronic mailbox. You can use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager to specify which SMTP server or gateway on your network to use for e-mail delivery.  
  
 The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager does not help you manage report server content, enable additional features, or grant access to the server. Full deployment requires that you also use [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)] to enable additional features or modify default values, and Report Manager to grant user access to the server.  
  
##  <a name="bkmk_requirements"></a> Requirements  
 The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager is version-specific. The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager that installs with this version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cannot be used to configure an earlier version of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]. If you are running older and newer versions of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] side-by-side on the same computer, you must use the Reporting Service Configuration manager that comes with each version to configure each instance.  
  
 To use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration manager, you must have the following:  
  
-   Local system administrator permissions on the computer that hosts the report server you want to configure. If you are configuring a remote computer, you must have local system administrator permissions on that computer as well.  
  
-   You must have permission to create databases on the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] used to host the report server database.  
  
-   Windows Management Instrumentation (WMI) service must be enabled and running on any report server you are configuring. The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager uses the report server WMI provider to connect to local and remote report servers. If you are configuring a remote report server, the computer must allow remote WMI access. For more information, see [Configure a Report Server for Remote Administration](../../../reporting-services/report-server/configure-a-report-server-for-remote-administration.md).  
  
-   Before you can connect to and configure a remote report server instance, you must enable remote Windows Management Instrumentation (WMI) calls to pass through Windows Firewall. For more information, see [Configure a Report Server for Remote Administration](../../../reporting-services/report-server/configure-a-report-server-for-remote-administration.md) in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.  
  
 The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration Manager is installed automatically when you install [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]  
  
##  <a name="bkmk_start_configuration_manager"></a> To Start the Reporting Services Configuration Manager  
  
1.  Use the following step that is appropriate for your version of Microsoft Windows:  
  
    -   From the Windows start screen, type **Reporting** and select **Reporting Services Configuration Manager** from the search results.  
  
    -   Select **Start**, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], and then point to **Configuration Tools**.  
  
         If you want to configure a report server instance from a previous version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], open the program folder for that version. For example, point to [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] instead of [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)] to open the configuration tools for [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] server components.  
  
         Select **Reporting Services Configuration Manager**.  
  
2.  The **Reporting Services Configuration Connection** dialog box appears so that you can select the report server instance you want to configure. Select **Connect**.  
  
3.  In **Server Name**, specify the name of the computer on which the report server instance is installed. The name of the local computer appears by default, but you can type the name of a remote [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance if you want to connect to a report server that is installed on a remote computer.  
  
4.  If you specify a remote computer, select **Find** to establish a connection.  
  
5.  In **Report Server Instance**, select the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] instance that you want to configure. Only report server instances for this version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] appear in the list. You cannot configure earlier versions of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
6.  Select **Connect**.  
  
## See Also  
 [Web portal (SSRS Native Mode)](../../../reporting-services/web-portal-ssrs-native-mode.md)   
 [Reporting Services Tools](../../../reporting-services/tools/reporting-services-tools.md)   
 [Configure a Report Server Database Connection  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-a-report-server-database-connection-ssrs-configuration-manager.md)   
 [SQL Server Configuration Manager](../../../relational-databases/sql-server-configuration-manager.md)   
 [Configure and Administer a Report Server &#40;SSRS Native Mode&#41;](../../../reporting-services/report-server/configure-and-administer-a-report-server-ssrs-native-mode.md)  
  
  