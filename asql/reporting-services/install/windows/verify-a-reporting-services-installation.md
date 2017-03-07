---
title: "Verify a Reporting Services Installation | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-03"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "checking report server installations"
  - "verifying report server installations"
  - "Report Designer [Reporting Services], verifying installations"
  - "installing Reporting Services, verifying installations"
  - "Report Manager [Reporting Services], verifying installations"
  - "report servers [Reporting Services], verifying installations"
  - "Setup [Reporting Services], verifying installations"
ms.assetid: 82a51a99-66f0-4b0c-b05b-07d22387adb0
caps.latest.revision: 45
ms.author: "asaxton"
manager: "erikre"
---
# Verify a Reporting Services Installation
  [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report servers can be installed in one of two modes, Native or SharePoint. The steps you should follow for verifying the installation depend on the report server mode.  
  
##  <a name="bkmk_sharepointmode"></a> Verify SharePoint Mode Installation  
  
### To verify the Reporting Services Service  
  
1.  From SharePoint central administration, click **Manage services on server** in the **System Settings** group.  
  
2.  Verify the **SQL Server Reporting Services Service** is installed and in the **Running** state.  
  
     If you do not see the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service in the list, verify the service is installed. For more information, see [Install The First Report Server in SharePoint Mode](http://msdn.microsoft.com/en-us/b29d0f45-0068-4c84-bd7e-5b8a9cd1b538).  
  
### To verify the Service Application  
  
1.  To verify from Central Administration you have at least one [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service application, click **Manage Service Applications** in the **Application Management** group.  
  
2.  Verify there is a service application of type **SQL Server Reporting Services Service Application** and a corresponding application proxy.  
  
3.  Click **near** the name of the service application and then click **Properties** in the SharePoint toolbar.  If you click the name of the service application it will open the Management pages of the service application, not the properties page.  
  
4.  Verify the **Web Application Association** is configured to point to the desired web application.  
  
### To verify the Site collection Feature  
  
1.  In site settings, click **Site collection Features** in the **Site Collection Administration** group.  
  
2.  Verify the **Report Server Integration Feature** is active.  
  
### To Verify Reporting Server content types  
  
1.  To verify or add [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report server content types, see [Add Reporting Services Content Types to a SharePoint Library](../../../reporting-services/report-server/sharepoint/add-reporting-services-content-types-to-a-sharepoint-library.md).  
  
### To verify you can launch Report Builder  
  
1.  From a document library, click **Documents** in the SharePoint ribbon.  
  
2.  Click **New Document** and click **Report Builder Report**. If you do not see this option, review the previous procedure on adding the report server content types to a library.  
  
### Create a basic report  
  
1.  In a SharePoint document library, create a basic [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report that only contains a text box, for example a title. The report does not contain any data sources or datasets. The goal is to verify you can open Report Builder and a basic report will preview.  
  
2.  Save the report to the document library and the run the report from the library. For more information on creating reports with Report Builder, see [Start Report Builder](http://msdn.microsoft.com/en-us/8c8c7d2e-b315-418d-bf65-90e7685e4259).  
  
### Reporting Services samples  
  
1.  Complete one of the Reporting Services tutorials. For more information, see [Reporting Services Tutorials &#40;SSRS&#41;](../../../reporting-services/tutorials/reporting-services-tutorials-ssrs.md).  
  
2.  Download the Adventure works sample database and the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] sample reports from CodePlex. For more information, see [AdventureWorks Report Samples](https://msftrsprodsamples.codeplex.com/wikipage?title=SS2012!AdventureWorks2012%20Report%20Samples&referringTitle=Home).  
  
##  <a name="bkmk_nativemode"></a> Verify a Native Mode Installation  
 When you install a Native mode report server using the default configuration, Setup installs and deploys the server. You can verify whether Setup deployed the report server by performing a few simple tests. You must be a local administrator to perform these steps. To enable other users to perform testing, you must configure report server access for those users.  
  
### To verify that the report server is installed and running  
  
1.  Run the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] Configuration tool and connect to the report server instance you just installed. The Web Service URL page includes a link to the Report Server Web service. Click the link to verify you can access the server. If the report server database is not configured, do that first before clicking the link.  
  
2.  Open the Services console applications and verify that the Report Server service is running. To view the status of the Report Server service, click **Start**, point to **Control Panel**, double-click **Administrative Tools**, and then double-click **Services**. When the list of services appears, scroll to **Report Server (MSSQLSERVER)**. The status should be **Started**.  
  
3.  Open a browser and type the report server URL in the address bar. The address consists of the server name and the virtual directory name that you specified for the report server during setup. By default, the report server virtual directory is named **ReportServer**. You can use the following URL to verify report server installation: http://*\<computer name>*/ReportServer*\<_instance name>*. The URL will be different if you installed the report server as a named instance. For more information about the URL format, see [Configure Report Server URLs  &#40;SSRS Configuration Manager&#41;](../../../reporting-services/install/windows/configure-report-server-urls-ssrs-configuration-manager.md). If you are a local administrator on Windows Vista or Windows Server 2008, see [Configure a Native Mode Report Server for Local Administration &#40;SSRS&#41;](../../../reporting-services/report-server/configure-a-native-mode-report-server-for-local-administration-ssrs.md).  
  
4.  Run reports to test report server operations. For this step, you can create a sample report from a tutorial. For more information, see [Create a Basic Table Report &#40;SSRS Tutorial&#41;](../../../reporting-services/tutorials/create-a-basic-table-report-ssrs-tutorial.md).  
  
### To verify that the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] is installed and running  
  
1.  Open a browser and type the Web Portal URL in the address bar. The address consists of the server name and the virtual directory name that you specified for the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] during setup or in the Web Portal URL page in the Reporting Services Configuration tool. By default, the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] virtual directory is **Reports**. You can use the following URL to verify the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] installation:  
  
     http://*\<computer name>*/Reports*\<_instance name>*.  
  
2.  Use the [!INCLUDE[ssRSWebPortal](../../../reporting-services/includes/ssrswebportal.md)] to create a new folder or upload a file to test whether definitions are passed back to the report server database. If these operations are successful, the connection is functional.  
  
     For more information, see [Web Portal &#40;SSRS Native Mode&#41;](http://msdn.microsoft.com/en-us/7349e626-6ed5-4d21-b05f-cf042ad9ad70).  
  
### To verify that Report Designer is installed and running  
  
1.  Open [!INCLUDE[ssBIDevStudioFull](../../../a9notintoc/includes/ssbidevstudiofull-md.md)], and create a new project based on a Report Server project type. For more information on using the Report Server Project Wizard, see [Reporting Services in SQL Server Data Tools &#40;SSDT&#41;](../../../reporting-services/tools/reporting-services-in-sql-server-data-tools-ssdt.md) in SQL Server Books Online.  
  
2.  If you installed report samples, open the sample report project files and publish the reports to a report server.  
  
## See Also  
 [Troubleshoot a Reporting Services Installation](../../../reporting-services/install/windows/troubleshoot-a-reporting-services-installation.md)   
 [Cause and Resolution of Reporting Services Errors](../../../reporting-services/troubleshooting/cause-and-resolution-of-reporting-services-errors.md)  
  
  