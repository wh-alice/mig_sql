---
title: "Publish a Shared Data Source to a SharePoint Library | Microsoft Docs"
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
helpviewer_keywords: 
  - "data sources [Reporting Services], publishing to a SharePoint library"
  - "SharePoint integration [Reporting Services], publishing to a library"
  - "publishing reports [Reporting Services], to a SharePoint library"
ms.assetid: 966ed425-3ce2-4e76-8237-3c1c977954ae
caps.latest.revision: 14
ms.author: "asaxton"
manager: "erikre"
---
# Publish a Shared Data Source to a SharePoint Library
  To publish a shared data source to a report server that is running in SharePoint integrated mode, you must set the report project properties in Report Designer. In the project properties, all references to servers, reports, and shared data sources must be fully qualified URLs.  
  
 You must have **Member** or **Owner** permission on the SharePoint site. For more information, see [URL Examples for Published Report Items on a Report Server in SharePoint Mode &#40;SSRS&#41;](../../reporting-services/tools/url-examples-for-items-on-a-report-server-sharepoint-mode.md).  
  
### To publish a shared data source to a SharePoint site  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], open your existing or new Report Server project.  
  
2.  On the **Project** menu, click **Properties**. The *\<project>***Property Pages** dialog box opens.  
  
3.  Choose the **Configuration** you use to publish to a SharePoint site.  
  
4.  If you want to publish the shared data sources in your project and overwrite previously published shared data sources, set **OverwriteDataSources** to **True**.  
  
5.  (Optional) For **TargetDataSourceFolder**, type a URL to a SharePoint library or library folder. For example, *http://TestServer/TestSite/Documents/DataSources*.  
  
     If you do not specify a value, the **TargetReportFolder** value is used.  
  
6.  For **TargetReportFolder**, type a URL to a library or library folder. For example, http:*//TestServer/TestSite/Documents/Reports*.  
  
7.  For **TargetServerURL**, type a URL to a SharePoint top-level site or subsite. If you do not specify a site, the default top-level site is used. For example, http://*servername*, http://*servername*/*site*, or http://*servername*/*site*/*subsite*.  
  
8.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)]  
  
9. In Solution Explorer, right-click the shared data source you want to publish, and click **Deploy**. The data source is published to the location specified in **TargetDataSourceFolder**. Deployment errors appear in the Output window.  
  
    > [!NOTE]  
    >  After you publish a shared data source to a SharePoint site, the file name extension is changed to .rsds. You can edit and manage a shared data source directly on the SharePoint site. For more information, see [Create and Manage Shared Data Sources &#40;Reporting Services in SharePoint Integrated Mode&#41;](http://msdn.microsoft.com/library/2d3428e4-a810-4e66-a287-ff18e57fad76).  
  
## See Also  
 [Publish a Report to a SharePoint Library](../../reporting-services/reports/publish-a-report-to-a-sharepoint-library.md)   
 [URL Examples for Published Report Items on a Report Server in SharePoint Mode &#40;SSRS&#41;](../../reporting-services/tools/url-examples-for-items-on-a-report-server-sharepoint-mode.md)   
 [Project Property Pages Dialog Box](../../reporting-services/tools/project-property-pages-dialog-box.md)   
 [Set Deployment Properties &#40;Reporting Services&#41;](../../reporting-services/tools/set-deployment-properties-reporting-services.md)   
 [Publishing Reports to a Report Server](../../reporting-services/reports/publishing-reports-to-a-report-server.md)   
 [Use an Office Data Connection &#40;.odc&#41; with Reports &#40;Reporting Services in SharePoint Integrated Mode&#41;](../../reporting-services/report-data/use-an-office-data-connection-.odc-with-reports.md)  
  
  