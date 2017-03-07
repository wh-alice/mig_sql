---
title: "Reporting Services Report Server | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-14"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
helpviewer_keywords: 
  - "security [Reporting Services], extensions"
  - "report servers [Reporting Services], about report server"
  - "rendering extensions [Reporting Services], about extensions"
  - "extensions [Reporting Services], about extensions"
  - "storing data [Reporting Services]"
  - "report servers [Reporting Services]"
  - "data processing extensions [Reporting Services], about extensions"
  - "delivery extensions [Reporting Services], about extensions"
  - "data storage [Reporting Services]"
  - "components [Reporting Services], report server"
  - "report processing [Reporting Services], extensions"
  - "Web service [Reporting Services], report server"
  - "storage [Reporting Services]"
ms.assetid: 88ed5b97-1d28-4980-80e4-b36761f3c03a
caps.latest.revision: 93
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services Report Server
Learn about the central piece of a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] installation. It consists of a processing engine along with extensions to add functionality.

A [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report server runs in one of two deployment modes; Native mode or SharePoint mode. See the [Feature Comparison of SharePoint and Native Mode](#bkmk_featuresupport) section for a comparison of features.  
  
 **Installation:** For information on [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] installation, see the following:  
  
-   [Install Reporting Services native mode report server](assetid:///8f25e6dc-b753-400e-9e9a-50f4f35bf6c4)  
  
-   [Install SQL Server BI Features with SharePoint &#40;Power Pivot and Reporting Services&#41;](assetid:///ac6cba68-2665-4a39-8fa3-cb7d7e6723c0)  
  
 **Windows Azure**: For information on using [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] with Windows Azure Virtual Machines, see the following:  
  
-   [SQL Server Business Intelligence in Windows Azure Virtual Machines](http://msdn.microsoft.com/library/windowsazure/jj992719.aspx).  
  
-   [Use PowerShell to Create an Azure VM With a Native Mode Report Server](https://msdn.microsoft.com/library/azure/dn449661.aspx).   
  
##  <a name="bkmk_overview"></a> Overview of report server modes  
 Processing engines (processors) are the core of the report server. The processors support the integrity of the reporting system and cannot be modified or extended. Extensions are also processors, but they perform very specific functions. [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] includes one or more default extensions for every type of supported extension. You can add custom extensions to a report server. Doing so allows you to extend a report server to support features that are not supported out of the box; examples of custom functionality might include support for single sign-on technologies, report output in application formats that are not already handled by the default rendering extensions, and report delivery to a printer or application.  
  
 A single report server instance is defined by the complete collection of processors and extensions that provide end-to-end processing, from the handling of the initial request to the presentation of a finished report. Through its subcomponents, the report server processes report requests and makes reports available for on-demand access or scheduled distribution.  
  
 Functionally, a report server enables report authoring experiences, report rendering, and report delivery experiences for a variety of data sources as well as extensible authentication and authorization schemes. Additionally a report server contains report server databases that store published reports, shared data sources, shared datasets, report parts, shared schedules and subscriptions, report definition source files, model definitions, compiled reports, snapshots, parameters, and other resources. A report server also enables administration experiences for configuring the report server to process report requests, maintain snapshot histories, and manage permissions for reports, data sources, datasets, and subscriptions.  
  
 A [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report server supports two modes of deployment for report server instances:  
  
-   **Native mode**: including native mode with SharePoint Web Parts, where a report server runs as an application server that provides all processing and management capability exclusively through [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] components. You configure a native mode report server with [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] configuration manager and SQL Server Management Studio.  
  
-   **SharePoint mode**: where a report server is installed as part of a SharePoint server farm.  Deploy and configure SharePoint mode by using PowerShell commands or SharePoint content management pages.  
  
 In [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] you cannot switch a report server from one mode to the other. If you want to change the type of report server that your environment uses, you must install the desired mode of report server and then copy or move the report items or report server database from the older versioned report server to the new report server. This process is typically referred to as a ‘migration’. The steps needed to migrate depend on the mode you are migrating to and the version you are migrating from. For more information, see [Upgrade and Migrate Reporting Services](../../../reporting-services/install/windows/upgrade-and-migrate-reporting-services.md)  
  
##  <a name="bkmk_featuresupport"></a> Feature comparison of SharePoint and native mode  
  
|Feature or component|Native mode|SharePoint mode|  
|--------------------------|-----------------|---------------------|  
|**URL addressing**|Yes|URL addressing is different in SharePoint integrated mode. SharePoint URLs are used to reference reports, report models, shared data sources, and resources. The report server folder hierarchy is not used. If you have custom applications that rely on URL access as supported on a native mode report server, that functionality will no longer work when the report server is configured for SharePoint integration.<br /><br /> For more information on URL access, see [URL Access Parameter Reference](../../../reporting-services/url-access-parameter-reference.md)|  
|**Custom security extensions**|Yes|[!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] custom security extensions cannot be deployed or used on the report server. The report server includes a special-purpose security extension that is used whenever you configure a report server to run in SharePoint integrated mode. This security extension is an internal component, and it is required for integrated operations.|  
|**Configuration Manager**|Yes|**\*\* Important \*\*** Configuration Manager cannot be used to manage a SharePoint mode report server. Instead, use SharePoint central administration.|  
|**Report Manager**|Yes|Report Manager cannot be used to manage SharePoint mode. Use the SharePoint application pages. For more information, see [Reporting Services SharePoint Service and Service Applications](../../../reporting-services/report-server/sharepoint/reporting-services-sharepoint-service-and-service-applications.md).|  
|**Linked Reports**|Yes|No.|  
|**My Reports**|Yes|No|  
|**My Subscriptions** and batching methods.|Yes|No|  
|**Data Alerts**|No|Yes|  
|**Power View**|No|Yes<br /><br /> Requires Silverlight in the client browser. For more information on browser requirements, see [Browser Support for Reporting Services and Power View](../../../reporting-services/browser-support-for-reporting-services-and-power-view.md)|  
|**.RDL reports**|Yes|Yes<br /><br /> .RDL reports can run on [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report servers in native mode or in SharePoint mode.|  
|**.RDLX reports**|No|Yes<br /><br /> Power View .RDLX reports can only run on [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report servers in SharePoint mode.|  
|**SharePoint user token credentials for the SharePoint list extension**|No|Yes|  
|**AAM zones for internet facing deployments**|No|Yes|  
|**SharePoint backup and recovery**|No|Yes|  
|**ULS log support**|No|Yes|  
  
##  <a name="bkmk_nativemode"></a> Native mode  
 In native mode, a report server is a stand-alone application server that provides all viewing, management, processing, and delivery of reports and report models. This is the default mode for report server instances. You can install a native mode report server that is configured during setup or you can configure it for native mode operations once setup is complete.  
  
 The following diagram shows the three-tier architecture of a [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] Native mode deployment. It shows the report server database and data sources in the data tier, the report server components in the middle tier, and the client applications and built-in or custom tools in the presentation tier. It shows the flow of requests and data among the server components and which components send and retrieve content from a data store.  
  
 ![Reporting Services architecture](../../../reporting-services/report-server/sharepoint/media/reporting-serv-arch.gif "Reporting Services architecture")  
  
 The report server is implemented as a [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Windows service, called the "Report Server service", that hosts a Web service, background processing, and other operations. In the Services console application, the service is listed as SQL Server Reporting Services (MSSQLSERVER).  
  
 Third-party developers can create additional extensions to replace or extend the processing capability of the report server. To learn more about the programmatic interfaces available to application developers, see the [Technical Reference](../../../reporting-services/technical-reference-ssrs.md).  
  
###  <a name="bkmk_nativewithwebparts"></a> Native mode with SharePoint web parts  
 [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] provides two Web Parts that you can install and register on an instance of [!INCLUDE[winSPServ](../../../relational-databases/tables/includes/winspserv-md.md)] 2.0 or later, or [!INCLUDE[spPortalServ](../../../reporting-services/report-server/sharepoint/includes/spportalserv-md.md)] 2003 or later. From a SharePoint site, you can use the Web Parts to find and view reports that are stored and processed on a report server that runs in native mode. These Web parts were introduced in earlier releases of [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)].  
  
##  <a name="bkmk_sharepointmode"></a> SharePoint mode  
 In SharePoint mode, a report server must run within a SharePoint server farm. The report server processing, rendering, and management features are represented by a SharePoint application server running the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint shared service and one or more [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service applications. A SharePoint site provides the front-end access to report server content and operations.  
  
 SharePoint mode requires:  
  
-   [!INCLUDE[SPF2010](../../../a9retired/includes/spf2010-md.md)] or [!INCLUDE[SPS2010](../../../a9retired/includes/sps2010-md.md)].  
  
-   An appropriate version of the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] Add-in for SharePoint 2010 Products.  
  
-   A SharePoint application server with the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] shared service installed and at least one [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service application.  
  
 The following illustration shows a SharePoint mode [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] environment:  
  
 ![SSRS SharePoint Functional Architecture](../../../reporting-services/report-server/sharepoint/media/rs-sharepoint-architecture.gif "SSRS SharePoint Functional Architecture")  
  
||Description|  
|-|-----------------|  
|**(1)**|Web servers or web front-ends (WFE). The [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] add-in must be installed on each web server from which you want to utilize the web application features such as viewing reports or [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] management pages for tasks such as managing data sources or subscriptions.|  
|**(2)**|The add-in installs URL and SOAP endpoints for clients to communicate with the Application servers, through the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service proxy.|  
|**(3)**|Application servers running [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] shared service. Scale-out of report processing is managed as part of the SharePoint farm and by adding the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service to additional application servers.|  
|**(4)**|You can create more than one [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service application, with different configurations including permissions, e-mail, proxy, and subscriptions.|  
|**(5)**|Reports, data sources, and other items are stored in the SharePoint content databases.|  
|**(6)**|[!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] service applications create three databases for report server, temp, and data alerting features. Configuration settings that apply to all SSRS service applications are stored in the **RSReportserver.config** file.|  
  
##  <a name="bkmk_reportprocessor"></a> Report process and schedule and delivery process 
 The report server includes two processing engines that perform preliminary and intermediate report processing, and scheduled and delivery operations. The Report Processor retrieves the report definition or model, combines layout information with data from the data processing extension, and renders it in the requested format. The Scheduling and Delivery Process processes reports triggered from a schedule, and delivers reports to target destinations.  
  
##  <a name="bkmk_reportdatabase"></a> Report server database  
 The report server is a stateless server that stores all properties, objects, and metadata in a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database. Stored data includes published reports, compiled reports, report models, and the folder hierarchy that provides the addressing for all items managed by the report server. A report server database can provide internal storage for a single [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] installation or for multiple report servers that are part of a scale-out deployment. If you configure a report server to run within a larger deployment of a SharePoint product or technology, the report server uses the SharePoint databases in addition to the report server database. For more information about data stores used in Reporting Services installation, see [Report Server Database &#40;SSRS Native Mode&#41;](../../../reporting-services/report-server/report-server-database-ssrs-native-mode.md).  
  
##  <a name="bkmk_authentication"></a> Authentication, rendering, data, and delivery extensions  
 The report server supports the following types of extensions: authentication extensions, data processing extensions, report processing extensions, rendering extensions, and delivery extensions. A report server requires at least one authentication extension, data processing extension, and rendering extension. Delivery and custom report processing extensions are optional, but necessary if you want to support report distribution or custom controls.  
  
 Reporting Services provides default extensions so that you can use all of the server features without having to develop custom components. The following table describes the default extensions that contribute to a complete report server instance that provides ready-to-use functionality:  
  
|Type|Default|  
|----------|-------------|  
|Authentication|A default report server instance supports Windows Authentication, including impersonation and delegation features if they are enabled in your domain.|  
|Data processing|A default report server instance includes data processing extensions for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)], Oracle, Hyperion Essbase, SAPBW, OLE DB, Parallel Data Warehouse, and ODBC data sources.|  
|Rendering|A default report server instance includes rendering extensions for HTML, Excel, CSV, XML, Image, Word, SharePoint list, and PDF.|  
|Delivery|A default report server instance includes an e-mail delivery extension and a file share delivery extension. If the report server is configured for SharePoint integration, you can use a delivery extension that saves reports to a SharePoint library.|  
  
> [!NOTE]  
>  Reporting Services includes a complete set of tools and applications that you can use to administer the server, create content, and make that content available to users in your organization.  
  
##  <a name="bkmk_relatedtasks"></a> Related tasks  
 The following topics provide additional information on installing, using, and maintaining a report server:  
  
|Task|Link|  
|----------|----------|  
|Review Hardware and software requirements.|[Hardware and Software Requirements for Reporting Services in SharePoint Mode](../../../a9notintoc/hardware-and-software-requirements-for-reporting-services-in-sharepoint-mode.md).|  
|Install [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] in SharePoint mode.|[Install Reporting Services SharePoint Mode for SharePoint 2010](http://msdn.microsoft.com/en-us/47efa72e-1735-4387-8485-f8994fb08c8c)|  
|If you are a Web developer or have expertise in creating cascading style sheets, you can modify the default styles at your own risk to change the colors, fonts, and layout of the toolbar or Report Manager. Neither the default style sheets nor instructions for modifying the style sheets are documented in this release.|[Customize Style Sheets for HTML Viewer and Report Manager](../../../a9retired/customize-style-sheets-for-html-viewer-and-report-manager.md)|  
|Web developers who are familiar with HTML styles and Cascade Style Sheets (CSS) can use the information in this topic to determine which files can be modified to customize the appearance of Report Manager.|[Configure the Web Portal to Pass Custom Authentication Cookies](assetid:///91aeb053-149e-4562-ae4c-a688d0e1b2ba)|  
|Explains how to tune the memory settings for the Report Server Web service and Windows service.|[Configure Available Memory for Report Server Applications](../../../reporting-services/report-server/configure-available-memory-for-report-server-applications.md)|  
|Explains recommended steps to configure are report server for remote administration.|[Configure a Report Server for Remote Administration](../../../reporting-services/report-server/configure-a-report-server-for-remote-administration.md)|  
|Provides instructions for configuring the availability of **My Reports** on a Native report server instance.|[Enable and Disable My Reports](../../../reporting-services/report-server/enable-and-disable-my-reports.md)|  
|Provides instructions for setting up the RSClientPrint control that provides print functionality from within supported browsers. For more information on browser requirements, see [Browser Support for Reporting Services and Power View](../../../reporting-services/browser-support-for-reporting-services-and-power-view.md).|[Enable and Disable Client-Side Printing for Reporting Services](../../../reporting-services/report-server/enable-and-disable-client-side-printing-for-reporting-services.md)|  
  
## See Also  
 [Reporting Services Extensions](../../../reporting-services/extensions/reporting-services-extensions.md)   
 [Reporting Services Tools](../../../reporting-services/tools/reporting-services-tools.md)   
 [Subscriptions and Delivery &#40;Reporting Services&#41;](../../../reporting-services/subscriptions/subscriptions-and-delivery-reporting-services.md)   
 [Report Server Database &#40;SSRS Native Mode&#41;](../../../reporting-services/report-server/report-server-database-ssrs-native-mode.md)   
 [Implementing a Security Extension](../../../reporting-services/extensions/security-extension/implementing-a-security-extension.md)   
 [Implementing a Data Processing Extension](../../../reporting-services/extensions/data-processing/implementing-a-data-processing-extension.md)   
 [Data Sources Supported by Reporting Services &#40;SSRS&#41;](../../../reporting-services/report-data/data-sources-supported-by-reporting-services-ssrs.md)   
  