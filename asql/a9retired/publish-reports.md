---
title: "Publish Reports | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "reports [Reporting Services], publishing"
  - "publishing reports [Reporting Services]"
ms.assetid: ef5a514e-e818-4041-a8b0-15835f9a046b
caps.latest.revision: 39
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Publish Reports
  From[!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], you can publish either all the reports and shared data sources in a Report Server project to a report server by deploying the project, or you can publish a single report. Before you can publish a report you must specify the URL of the target report server. For more information, see [Set Deployment Properties &#40;Reporting Services&#41;](../reporting-services/tools/set-deployment-properties-reporting-services.md).  
  
 You can use the [!INCLUDE[ssKilimanjaro](../a9notintoc/includes/sskilimanjaro-md.md)] version of [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] to open, modify, preview, save, and publish both [!INCLUDE[ssRSversion2005](../a9retired/includes/ssrsversion2005-md.md)] and [!INCLUDE[ssRSversion10](../a9retired/includes/ssrsversion10-md.md)] reports. For more information, see [Deployment and Version Support in SQL Server Data Tools &#40;SSRS&#41;](../reporting-services/tools/deployment-and-version-support-in-sql-server-data-tools-ssrs.md).  
  
### To publish all reports in a project  
  
-   On the **Build** menu, click **Deploy \<report project name>**. Alternatively, in Solution Explorer, right-click the report project and then click **Deploy**. You can view the status of the publishing process in the Output window.  
  
    > [!NOTE]  
    >  When you deploy a Report Server project, the shared data sources in the report project are also deployed.  
  
### To publish a single report  
  
-   In Solution Explorer, right-click the report and then click **Deploy**. You can view the status of the publishing process in the Output window.  
  
    > [!NOTE]  
    >  When you publish a report, you must also deploy the shared data sources that the report uses.  
  
## See Also  
 [Publishing Data Sources and Reports](../reporting-services/reports/publishing-data-sources-and-reports.md)   
 [Previewing Reports](../reporting-services/reports/previewing-reports.md)   
 [Publishing Reports to a Report Server](../reporting-services/reports/publishing-reports-to-a-report-server.md)   
 [Finding, Viewing, and Managing Reports &#40;Report Builder and SSRS &#41;](../reporting-services/report-builder/finding-viewing-and-managing-reports-report-builder-and-ssrs.md)   
 [Export Reports &#40;Report Builder and SSRS&#41;](../reporting-services/report-builder/export-reports-report-builder-and-ssrs.md)  
  
  