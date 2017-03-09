---
title: "Start Report Builder | Microsoft Docs"
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
  - "Report Builder, launching"
  - "launching Report Builder"
  - "SharePoint integration [Reporting Services], starting Report Builder"
  - "starting Report Builder"
ms.assetid: 8c8c7d2e-b315-418d-bf65-90e7685e4259
caps.latest.revision: 56
ms.author: "maggies"
manager: "erikre"
---
# Start Report Builder
  Microsoft [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] is a stand-alone report authoring environment. With it, you can create paginated reports and publish them to [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installed in native or SharePoint integrated mode.  
  
 The first time you start [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] from the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] web portal or [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in SharePoint integrated mode, you're prompted to download it from the Microsoft Download Center. 
 
![report-builder-get-report-builder](../../reporting-services/report-builder/media/report-builder-get-report-builder.png) 
 
 You or an administrator can also [install Report Builder on your computer from the Microsoft Download Center](http://go.microsoft.com/fwlink/?LinkID=219138). See "Install Report Builder with Systems Manager Server" in [Install Report Builder](../../reporting-services/install/windows/install-report-builder.md) for more details.
 
 [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] isn't installed when you install [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]; you need to  download and install it separately.  
  
 When you start [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] from the web portal or SharePoint site, if an earlier version of [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] opens, contact your administrator, who can update the version on the web portal or SharePoint site.  
  
## To start [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] from the [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] web portal  
  
1.  In your Web browser, type the URL for your report server in the address bar. By default, the URL is http://\<*servername*>/reports.  
  
2.  In the top bar of the web portal, select **New** > **Paginated Report**.  
  
     ![PBI_SSMRP_NewMenu](../../reporting-services/mobile-reports/media/pbi-ssmrp-newmenu.png "PBI_SSMRP_NewMenu")  
  
     The first time, you're prompted to [install Report Builder](../../reporting-services/install/windows/install-report-builder.md). 
  
     After that first time, [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] opens, and you can create a paginated report or open a report from the report server.  
  
## To start [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] in SharePoint integrated mode  
  
1.  Navigate to the SharePoint site that contains the library you want.  
  
2.  Open the library.  
  
3.  Click **Documents**.  
  
4.  On the **New Document** menu, click **Report Builder Report**.  
  
     The first time, this launches the SQL Server [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] Wizard. See [Install Report Builder](../../reporting-services/install/windows/install-report-builder.md) for more details.  
  
     [!INCLUDE[ssRBnoversion](../../database-engine/availability-groups/windows/includes/ssrbnoversion-md.md)] opens, and you can create a paginated report or open a report on the report server.  
  
     **Note** If the **New Document** menu does not list **Report Builder Report**, **Report Builder Model**, or **Report Data Source**, their content types need to be added to the SharePoint library. For more information, see [Add Reporting Services Content Types to a SharePoint Library](../../reporting-services/report-server/sharepoint/add-reporting-services-content-types-to-a-sharepoint-library.md).  
  
## See Also  
 [Report Builder in SQL Server 2016](../../reporting-services/report-builder/report-builder-in-sql-server-2016.md)   
 [Set default options for Report Builder](../../reporting-services/report-builder/set-default-options-for-report-builder.md)  
  
  