---
title: "Files-Only Installation (Reporting Services) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-30"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "files-only installation [Reporting Services]"
  - "installation options [Reporting Services]"
ms.assetid: bdc74a8f-046c-4aa0-bfbd-4f1711dfb9ce
caps.latest.revision: 22
ms.author: "asaxton"
manager: "erikre"
---
# Files-Only Installation (Reporting Services)
  *Files-only installation* refers to a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installation where Setup creates the folder structure for [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] program files, copies the files to disk, registers the Report Server service on the local computer, configures the service account, grants files permissions to the service account, and registers the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] WMI provider.  
  
 A files-only installation includes the following [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] features: Report Server service (which hosts the Report Server Web service, background processing application, and Report Manager), Report Builder, the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration tool, and the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] command line utilities (rsconfig.exe, rskeymgmt.exe and rs.exe). It does not apply to shared features such as [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)] or [!INCLUDE[ssBIDevStudioFull](../../../analysis-services/includes/ssbidevstudiofull-md.md)], which must be specified as separate items if you want to install them.  
  
 In contrast with other installation modes, a report server that is installed in files-only mode is not operational when Setup is finished. Additional configuration will be required to bring the report server online by using the [Reporting Services Configuration Manager &#40;Native Mode&#41;](../../../reporting-services/install/windows/reporting-services-configuration-manager-native-mode.md).  
  
## When to Select Files-Only Installation Mode  
 A files-only installation must be performed when:  
  
-   You want to connect the report server to a remote report server database.  
  
-   You want to install the report server as a named instance.  
  
-   You have deployment requirements that include using custom settings or functionality, and you want full control over when and how the server is configured.  
  
-   Installing a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster that includes [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
## How to Perform a Files-Only Installation  
 Files-only installation is the default for [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
 You can specify a files-only installation through the command line or in the Installation wizard. The following topics provide step-by-step instructions:  
  
-   [Install SQL Server 2016 from the Installation Wizard &#40;Setup&#41;](../../../database-engine/install/windows/install-sql-server-from-the-installation-wizard-setup.md).  
  
-   [Install SQL Server 2016 from the Command Prompt](../../../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md).  
  
#### Example Command Line Script  
 For clarity, the example includes /RSINSTALLMODE="FilesOnlyMode". However, because files-only mode is the default, you can omit this and still get a files-only mode installation.  
  
```  
setup /q /ACTION=install /FEATURES=RS /InstanceName=MSSQLSERVER /RSSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /RSINSTALLMODE="FilesOnlyMode"  
```  
  
#### Installation Wizard  
 When you select [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in the Feature Selection page, Setup provides a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration page that enables you to specify the installation mode. To specify a files-only installation, select **Install but do not configure the report server** on the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration page.  
  
## See Also  
 [Verify a Reporting Services Installation](../../../reporting-services/install/windows/verify-a-reporting-services-installation.md)   
 [Configure the Report Server Service Account &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-the-report-server-service-account-ssrs-configuration-manager.md)   
 [Configure Report Server URLs  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-report-server-urls-ssrs-configuration-manager.md)   
 [Configure a Report Server Database Connection  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-a-report-server-database-connection-ssrs-configuration-manager.md)   
 [Install Reporting Services SharePoint Mode](../../../reporting-services/install/windows/install-reporting-services-sharepoint-mode.md)   
 [Install Reporting Services Native Mode Report Server](../Topic/Install%20Reporting%20Services%20Native%20Mode%20Report%20Server.md)   
 [Reporting Services Tools](../../../reporting-services/tools/reporting-services-tools.md)  
  
  