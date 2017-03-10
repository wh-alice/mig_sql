---
title: "Install Reporting Services SharePoint Mode | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
helpviewer_keywords: 
  - "default configuration [Reporting Services]"
  - "installing Reporting Services, SharePoint integrated mode"
  - "installation options [Reporting Services]"
ms.assetid: ac6cba68-2665-4a39-8fa3-cb7d7e6723c0
caps.latest.revision: 35
ms.author: "asaxton"
manager: "erikre"
---
# Install Reporting Services SharePoint Mode
  [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in SharePoint, enables report creation and viewing in document libraries, [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] subscription delivery of reports through email,  [!INCLUDE[ssCrescent](../../../analysis-services/includes/sscrescent-md.md)], data alerting, and report management features, all in a deployment of based of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] SharePoint. For more information regarding features in SharePoint mode, see the section “Feature Support and Behavior Differences by Server Mode” in [Reporting Services Report Server](../../../reporting-services/report-server/sharepoint/reporting-services-report-server.md)  
  
 There are two core [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] components to install for [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in SharePoint mode:  
  
|Installation|Description|  
|------------------|-----------------|  
|**Report Sever:** The [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server installed in SharePoint Mode|The report server handles the data and report processing and rendering as well subscription and Data Alert processing. The SharePoint mode report server is designed and installed as a SharePoint Shared Service.<br /><br /> **How:** Use the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation media to install the report server.|  
|**Add-in:** The [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] add-in for SharePoint products, **rssharepoint.msi**.|The add-in installs the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] user interface (UI) pages and features on a SharePoint web front-end server. The UI features include [!INCLUDE[ssCrescent](../../../analysis-services/includes/sscrescent-md.md)], administration pages in SharePoint Central Administration, feature pages used within SharePoint document libraries, and [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Data Alerting pages.<br /><br /> **How:**  The add-in can be installed from either a Web download or the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation media. For more information,  see [Where to find the Reporting Services add-in for SharePoint Products](../../../reporting-services/install/windows/where-to-find-the-reporting-services-add-in-for-sharepoint-products.md).|  
  
## In This Section  
 [Supported Combinations of SharePoint and Reporting Services Server and Add-in &#40;SQL Server 2016&#41;](../../../reporting-services/install/windows/supported-combinations-of-sharepoint-and-reporting-services-server.md)  
  
 [Where to find the Reporting Services add-in for SharePoint Products](../../../reporting-services/install/windows/where-to-find-the-reporting-services-add-in-for-sharepoint-products.md)  
  
 [Install The First Report Server in SharePoint Mode](../../../reporting-services/install/windows/install-the-first-report-server-in-sharepoint-mode.md)  
  
 [Install or Uninstall the Reporting Services Add-in for SharePoint](../../../reporting-services/install/windows/install-or-uninstall-the-reporting-services-add-in-for-sharepoint.md)  
  
 [Add an Additional Report Server to a Farm &#40;SSRS Scale-out&#41;](../../../reporting-services/install/windows/add-an-additional-report-server-to-a-farm-ssrs-scale-out.md)  
  
 [Add an Additional Reporting Services Web Front-end to a Farm](../../../reporting-services/install/windows/add-an-additional-reporting-services-web-front-end-to-a-farm.md)  
  
 [Configure E-mail for a Reporting Services Service Application &#40;SharePoint 2013 and SharePoint 2016&#41;](http://msdn.microsoft.com/en-us/38fc34a6-aae7-4dde-9ad2-f1eee0c42a9f)  
  
 [Provision Subscriptions and Alerts for SSRS Service Applications](../../../reporting-services/install/windows/provision-subscriptions-and-alerts-for-ssrs-service-applications.md)  
  
 [Claims to Windows Token Service &#40;c2WTS&#41; and Reporting Services](../../../reporting-services/install/windows/claims-to-windows-token-service-c2wts-and-reporting-services.md)  
  
## See Also  
 [Data Alerts Architecture and Workflow](../../../reporting-services/reporting-services-data-alerts.md#AlertingWF)   
 [Data Alert Manager for Alerting Administrators](../../../reporting-services/data-alert-manager-for-alerting-administrators.md)  
  
  