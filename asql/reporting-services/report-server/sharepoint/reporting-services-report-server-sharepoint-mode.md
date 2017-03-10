---
title: "Reporting Services Report Server (SharePoint Mode) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 10778ec9-5fe4-4b4e-89b0-ade1f06b781d
caps.latest.revision: 17
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services Report Server (SharePoint Mode)
  A [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server configured for **SharePoint Mode** can run within a deployment of a SharePoint product. A report server in SharePoint mode can use the collaboration and management features of SharePoint for reports and other [!INCLUDE[ssRSnfoversion_md](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] content types. SharePoint mode requires installing the appropriate version of the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] add-in for SharePoint products on your SharePoint Web Front Ends.  
  
 For more information on installing and configuring, see the following:  
  
-   [Install Reporting Services SharePoint Mode for SharePoint 2010](http://msdn.microsoft.com/en-us/47efa72e-1735-4387-8485-f8994fb08c8c).  
  
-   [Add an Additional Report Server to a Farm &#40;SSRS Scale-out&#41;](../../../reporting-services/install/windows/add-an-additional-report-server-to-a-farm-ssrs-scale-out.md).  
  
 For information on what’s new in this release, see the ‘SharePoint’ section in [What's New in Reporting Services &#40;SSRS&#41;](../Topic/What's%20New%20in%20Reporting%20Services%20\(SSRS\).md).  
  
 In this topic:  
  
-   [Feature Summary](#bkmk_featuresum)  
  
-   [Connected Mode and Local Mode](#bkmk_connectedandlocal)  
  
-   [Unsupported SharePoint Features](#bkmk_unsupportedsharepoint)  
  
-   [Supported combinations of the SharePoint add-in and Report Server](#bkmk_supportedcombinations)  
  
-   [Components That Provide Integration](#bkmk_components)  
  
-   [Language Considerations](#bkmk_language)  
  
-   [Related Tasks](#bkmk_relatedtasks)  
  
##  <a name="bkmk_featuresum"></a> Feature Summary  
 Configuring a report server to run in SharePoint integrated mode provides the following additional functionality that is only available when you deploy a report server in this mode:  
  
-   Use SharePoint document management and collaboration features, including alerts. A SharePoint site provides a unified portal for accessing and managing all report items in one place.  
  
-   Use SharePoint permissions and authentication providers to control access to reports, models, and other items.  
  
-   Use SharePoint deployment topologies to distribute reports over an Internet connection outside the firewall. A report server provides report and data processing services in the context of a larger SharePoint deployment that is configured for Internet access.  
  
-   Manage reports, models, data sources, schedules, and report history in custom application pages on a SharePoint site. You can set properties, define schedules and subscriptions, and create and manage report history on a SharePoint site the same way you create and manage them from other tools in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
-   Publish or upload reports, report models, resources, and shared data source files to a SharePoint library, including Report Center in Office SharePoint Server.  
  
     Use Report Designer, Model Designer, and Report Builder to create reports and data sources to be published directly to a SharePoint library. You can also use the Upload action on a SharePoint site to add any report definitions and report models to a SharePoint library.  
  
     Because the report server processes report definitions in the same way regardless of the server mode you use, the report data and layout is unaffected by server mode. Any report that you can run in a native mode report server can run on a report server that is configured for SharePoint integrated mode.  
  
-   Subscribe to and deliver reports to a SharePoint library using a new SharePoint delivery extension. You can also deliver reports through e-mail or to a shared folder. The report server delivery extensions are used to deliver reports. You can create data-driven subscriptions for large-scale report distribution using subscriber data queried at run time.  
  
-   A Report Viewer Web Part you can add to SharePoint pages to view a report inside your SharePoint web application. The Web Part includes page navigation, search, print, and export features.  
  
-   Program against a new SOAP endpoint to create custom applications that integrate with a SharePoint site. You can also use the updated Windows Management Instrumentation (WMI) provider to programmatically configure a report server instance that runs in SharePoint integrated mode.  
  
-   Microsoft Access services reporting, in connected mode.  
  
-   AAM zones, internet facing deployments, and SharePoint user tokens for SharePoint lists.  
  
##  <a name="bkmk_connectedandlocal"></a> Connected Mode and Local Mode  
 The SQL Server 2008 R2 release introduced a new *local mode* for viewing reports from a SharePoint 2010 server that has the Microsoft SQL Server 2008 R2 or later Reporting Services Add-In for SharePoint 2010 products installed.  
  
-   *Local Mode*: Local mode allows reports to be rendered locally from the SharePoint document library, without integration with a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server. The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] add-in for SharePoint products is required but a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server is not. The add-in can be installed several different ways, including the SharePoint 2010 products preparation tool. For more information on local mode, see [Local Mode vs. Connected Mode Reports in the Report Viewer &#40;Reporting Services in SharePoint Mode&#41;](../../../reporting-services/report-server/sharepoint/local-mode-vs.-connected-mode-reports-in-the-report-viewer.md) and [Where to find the Reporting Services add-in for SharePoint Products](../../../reporting-services/install/windows/where-to-find-the-reporting-services-add-in-for-sharepoint-products.md).  
  
-   *Connected Mode*: Connected mode is supported by integrating a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server into the SharePoint farm using SharePoint Central Administration. The integration with a report server enables full end-to-end reporting, providing the collaboration features of SharePoint 2010 and the server based features of a report server including: Subscriptions, Snapshots, and server based processing.  
  
##  <a name="bkmk_unsupportedsharepoint"></a> Unsupported SharePoint Features  
 Not all SharePoint features are available for integrated operations. The following is a list of the SharePoint features [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] does not directly integrate with:  
  
-   Secure Store Service.  
  
-   You cannot use the SharePoint Outlook Calendar integration or the SharePoint scheduling for reporting services files in a document library.  
  
-   SharePoint Business Data catalog.  
  
-   SharePoint personalization is also not supported on the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] pages. Report Server integration is not supported if the SharePoint Web application is enabled for Anonymous access.  
  
-   SQL Server Reporting Services does **not** support SharePoint document library version control. If you save report items in a document library that is configured with “Document Version History” enabled, Reporting Services features will not function correctly and generate errors in the ULS log. The following is an example of an error in the ULS log:  
  
    -   “…a data source associated with the report has been disabled”.  
  
     Document library version history is configured on the ”Versioning Settings” page of “Library Settings”.  
  
##  <a name="bkmk_supportedcombinations"></a> Supported combinations of the SharePoint add-in and Report Server  
 Not all features are supported in all combinations of report server, Reporting Services add-in for SharePoint, and SharePoint Products. For more information, see [Supported Combinations of SharePoint and Reporting Services Server and Add-in &#40;SQL Server 2016&#41;](../../../reporting-services/install/windows/supported-combinations-of-sharepoint-and-reporting-services-server.md)  
  
> [!NOTE]  
>  The correct version of the Reporting Services add-in must be used with the corresponding version of SharePoint Products.  
  
##  <a name="bkmk_components"></a> Components That Provide Integration  
 To combine the servers in a single deployment, you integrate an installation of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] with an instance of SharePoint products  
  
 Integration is provided through [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Add-in for SharePoint Products. The [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Add-in is a freely distributable component that you can download and then install on a server that is running the appropriate version of SharePoint.  
  
> [!TIP]  
>  Not all features are supported in all combinations of report server, Reporting Services add-in for SharePoint, and SharePoint Products. For more information see, [Supported Combinations of SharePoint and Reporting Services Server and Add-in &#40;SQL Server 2016&#41;](../../../reporting-services/install/windows/supported-combinations-of-sharepoint-and-reporting-services-server.md).  
  
-   On SharePoint, the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Add-in provides the ReportServer proxy endpoint, a Report Viewer Web part, and application pages so that you can view, store, and manage report server content on a SharePoint site or farm.  
  
-   On [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] provides updated program files, a SOAP endpoint, and custom security and delivery extensions. The report server must be configured to run in SharePoint integrated mode, dedicated exclusively to supporting report access and delivery through your SharePoint site.  
  
 After you install the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Add-in on SharePoint and configure the two servers for integration, you can upload or publish report server content types to a SharePoint library, and then view and manage those documents from a SharePoint site. Uploading or publishing report server content is an important first step; the Web Part and pages become available when you select report definitions (.rdl), report models (.smdl) and shared data sources (.rsds) on a SharePoint site.  
  
##  <a name="bkmk_language"></a> Language Considerations  
 [!INCLUDE[SPF2010](../../../reporting-services/report-data/includes/spf2010-md.md)] and [!INCLUDE[SPS2010](../../../database-engine/install/windows/includes/sps2010-md.md)] products are available in many more languages than [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]  
  
 When you configure a report server to run within a deployment of a SharePoint product, you might see a combination of languages. The user interface, documentation, and messages will appear in the following languages:  
  
-   All application pages, tools, errors, warnings, and messages that originate from [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] will appear in the language used by the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] instance in one of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] languages.  
  
-   Application pages that you open on a SharePoint site, the Report Viewer Web Part, and Report Builder will appear in one of the supported languages for the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Add-in. To view the list of supported languages, go to [SQL Server Downloads](http://msdn.microsoft.com/sql/downloads/) and find the download page for the [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Add-in.  
  
-   SharePoint sites, SharePoint Central Administration, online help, and messages are available in the languages supported by Office Server products.  
  
 If the language of your SharePoint product or technology differs from the report server language, [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] will try to use a language from the same language family that provides the closest match. If a close substitute is not available, the report server uses English.  
  
##  <a name="bkmk_relatedtasks"></a> Related Tasks  
 The following table summarizes tasks related to a [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] SharePoint mode report server:  
  
|**Task**|**Link**|  
|--------------|--------------|  
|Detailed steps for installing and configuring [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in SharePoint mode.|[Install Reporting Services SharePoint Mode for SharePoint 2010](http://msdn.microsoft.com/en-us/47efa72e-1735-4387-8485-f8994fb08c8c) and [Add an Additional Report Server to a Farm &#40;SSRS Scale-out&#41;](../../../reporting-services/install/windows/add-an-additional-report-server-to-a-farm-ssrs-scale-out.md).|  
|Scale-out your [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] SharePoint deployment by adding additional report servers.|[Add an Additional Report Server to a Farm &#40;SSRS Scale-out&#41;](../../../reporting-services/install/windows/add-an-additional-report-server-to-a-farm-ssrs-scale-out.md) and [Deployment Topologies for SQL Server BI Features in SharePoint](http://msdn.microsoft.com/en-US/library/hh231674(SQL.130).aspx).|  
|Add additional SharePoint web front-ends that have the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] components installed for viewing and report items.|[Add an Additional Reporting Services Web Front-end to a Farm](../../../reporting-services/install/windows/add-an-additional-reporting-services-web-front-end-to-a-farm.md)|  
|Configure e-mail for [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] data alerting and subscription features.|[Configure E-mail for a Reporting Services Service Application &#40;SharePoint 2010 and SharePoint 2013&#41;](https://msdn.microsoft.com/library/hh231673.aspx)|  
|Recent information for this release, found on the TechNet Wiki.|[SQL Server 2012 Reporting Services Tips, Tricks, and Troubleshooting](http://go.microsoft.com/fwlink/?LinkId=221297).|  
  
## See Also  
 [Install or Uninstall the Reporting Services Add-in for SharePoint](../../../reporting-services/install/windows/install-or-uninstall-the-reporting-services-add-in-for-sharepoint.md)   
 [Report Viewer Web Part on a SharePoint Site](../../../reporting-services/report-server/sharepoint/report-viewer-web-part-on-a-sharepoint-site.md)   
 [Quiz: Configuring SSRS 2012 for SharePoint Integration](http://go.microsoft.com/fwlink/?LinkId=306443)  
  
  