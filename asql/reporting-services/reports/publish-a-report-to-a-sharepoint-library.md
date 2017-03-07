---
title: "Publish a Report to a SharePoint Library | Microsoft Docs"
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
  - "deploying [Reporting Services], reports in SharePoint integrated mode"
  - "SharePoint integration [Reporting Services], publishing to a library"
  - "publishing reports [Reporting Services], to a SharePoint library"
ms.assetid: 3f6dfc28-50d8-4231-bd25-871b5f77cce6
caps.latest.revision: 15
ms.author: "asaxton"
manager: "erikre"
---
# Publish a Report to a SharePoint Library
  To publish a report to a SharePoint site configured for SharePoint integration, you must set the project properties in Report Designer. In the project properties, all references to servers, reports, and shared data sources must be fully qualified URLs. In the report definition, all references to subreports, drillthrough reports, and resources such as Web-based images, must be fully qualified URLS.  
  
 You must have **Member** or **Owner** permission on the SharePoint site to set the properties on the project. For more information, see [URL Examples for Published Report Items on a Report Server in SharePoint Mode &#40;SSRS&#41;](../../reporting-services/tools/54cb861a-8cec-445c-875d-599fb9bd1973.md).  
  
### To publish a report to a SharePoint site  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], open an existing or new Report Server project.  
  
2.  From the **Project** menu, click **Properties**. The *\<project>***Property Pages** dialog box opens.  
  
3.  In the **Configuration** list, select the name of a solution build configuration to use to build and publish your report. The current configuration is listed as **Active**(*\<configuration>*).  
  
4.  If you want to publish the shared data sources in your project and overwrite previously published shared data sources, set **OverwriteDataSources** to **True**.  
  
5.  (Optional) For **TargetDataSourceFolder**, type a URL to a SharePoint library or library folder (for example, *http://TestServer/TestSite/Documents/DataSources)*.  
  
     If you do not specify a value, the **TargetReportFolder** value is used.  
  
6.  For **TargetReportFolder**, type a URL to a library or library folder (for example, *http://TestServer/TestSite/Documents/Reports)*.  
  
7.  For **TargetServerURL**, type a URL to a SharePoint top-level site or subsite. If you do not specify a site, the default top-level site is used (for example, *http://servername*, *http://servername/site*, or *http://servername/site/subsite*).  
  
8.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
9. In Solution Explorer, right-click the report you want to publish, and click **Deploy**. The report is published to the location specified in **TargetReportFolder**. Deployment errors appear in the Output window.  
  
## See Also  
 [Project Property Pages Dialog Box](../../reporting-services/tools/project-property-pages-dialog-box.md)   
 [Set Deployment Properties &#40;Reporting Services&#41;](../../reporting-services/tools/set-deployment-properties-reporting-services.md)   
 [Publishing Reports to a Report Server](../../reporting-services/reports/publishing-reports-to-a-report-server.md)   
 [URL Examples for Published Report Items on a Report Server in SharePoint Mode &#40;SSRS&#41;](../../reporting-services/tools/54cb861a-8cec-445c-875d-599fb9bd1973.md)   
 [Use an Office Data Connection &#40;.odc&#41; with Reports &#40;Reporting Services in SharePoint Integrated Mode&#41;](../../reporting-services/report-data/e8d6896d-f886-4390-8b5d-96f0a50c250c.md)  
  
  