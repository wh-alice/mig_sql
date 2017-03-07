---
title: "Reporting Services Site Collection Features | Microsoft Docs"
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
ms.assetid: e05ae162-a4b2-489d-9853-d6b09414e632
caps.latest.revision: 8
ms.author: "asaxton"
manager: "erikre"
---
# Site Collection Features - Reporting Services
  [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint mode provides three SharePoint site collection features. The features support the general [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] SharePoint mode reporting environment, [!INCLUDE[ssCrescent](../../../a9notintoc/includes/sscrescent-md.md)], a feature of the [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)][!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] Add-in for [!INCLUDE[SPS2010](../../../a9retired/includes/sps2010-md.md)] Enterprise Edition, and management operations for [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] in SharePoint Central Administration.  
  
## Site Collection Features  
 The following table describes the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] site collection features.  
  
|Feature|Description|  
|-------------|-----------------|  
|**Report Server Central Administration Feature**|Enables Features for managing integration with a [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] report server. This feature is only installed and used in the SharePoint Central Administration site collection.<br /><br /> The Report server integration feature is automatically activated in SharePoint Central Administration Site collection after you install the [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssRSCurrent](../../../a9notintoc/includes/ssrscurrent-md.md)] Add-in for SharePoint products. In some situations you will need to manually activate the feature. To activate the report server feature, use the [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] pages in SharePoint Central Administration's Site Settings page.<br /><br /> The [!INCLUDE[ssKilimanjaro](../../../a9notintoc/includes/sskilimanjaro-md.md)][!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)] version and later of the Add-in for SharePoint products will activate the report server integration feature for all existing site collections when the Add-in is installed. Additionally, the feature will be automatically active for new site collections.|  
|**Report Server Integration Feature**|Enables rich reporting using [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssRSnoversion](../../../a9notintoc/includes/ssrsnoversion-md.md)]<br /><br /> This feature is Active by default.|  
|**Power View Integration Feature**|Enables interactive data exploration and visual presentation against [!INCLUDE[ssGemini](../../../a9notintoc/includes/ssgemini-md.md)] work books and Analysis services tabular databases.<br /><br /> The feature can be accessed by the context menus of the following data sources:<br /><br /> **.rdlx**<br /><br /> **.rsds**<br /><br /> **.bism** connection file<br /><br /> <br /><br /> If [!INCLUDE[ssCrescent](../../../a9notintoc/includes/sscrescent-md.md)] does not appear in the context menus, verify the **Power View Integration Feature** is activated.<br /><br /> This feature is deactivated by default.|  
  
## See Also  
 [Activate the Report Server and Power View Integration Features in SharePoint](../../../reporting-services/report-server/sharepoint/site-collection-features-report-server-and-power-view.md)   
 [Reporting Services Site Settings and Site Features&#40;SharePoint Mode&#41;](../../../reporting-services/report-server/sharepoint/site-settings-and-features-reporting-services.md)   
 [Activate the Report Server File Sync Feature in SharePoint Central Administration](../../../reporting-services/report-server/sharepoint/site-settings-and-features-server-file-sync-in-sharepoint.md)  
  
  