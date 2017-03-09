---
title: "Native to SharePoint Migration (SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
  - "reporting-services-sharepoint"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c5b15bec-6fde-4174-bcde-d043307244dd
caps.latest.revision: 8
ms.author: "asaxton"
manager: "erikre"
---
# Native to SharePoint Migration (SSRS)
  You cannot upgrade or convert from one [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] server mode to another. For example, you cannot upgrade or convert a Native mode report server to SharePoint mode. You cannot copy the report server databases between modes because they use different database schemas. You can migrate the content from one report server to another. The tools you use depend on the type of report server mode that is configured for the source and destination servers.  
  
 **[!INCLUDE[applies](../../../analysis-services/includes/applies-md.md)]**  [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Native mode | [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] SharePoint mode  
  
##  <a name="bkmk_native_to_sharepoint"></a> Reporting Services Migration tool  
 The tool supports content migration from a native mode Deployment to a SharePoint mode deployment. The tool does not support migration from SharePoint mode to SharePoint mode or from SharePoint mode to Native mode.  
  
 For more information, see [Reporting Services Migration Tool](http://www.microsoft.com/download/details.aspx?id=29560) (http://www.microsoft.com/download/details.aspx?id=29560).  
  
## Use Script to migrate content  
 If the migration tool does not meet your needs, you can manually migrate the report server data. The following is a summary of the steps to complete to migrate report items from a one [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] deployment ot another. The approach supports either Native or SharePoint mode as the source or destination servers.  
  
1.  Backup and restore encryption keys. This is the key that is used to encrypt data. The encryption key is also used to encrypt passwords such as the passwords stored for data source connections. However, passwords cannot be migrated and you will need to enter them again in the destination environment.  
  
2.  **[!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] RSS scripts:** Write a Visual Basic script that calls Report Server Web service SOAP methods to copy data between databases. Use the **RS.exe** utility to run the script. Rs.exe is installed with [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
    -   [Sample Reporting Services rs.exe Script to Copy Content between Report Servers](../../../reporting-services/tools/sample-reporting-services-rs.exe-script-to-copy-content-between-report-servers.md). The topics explains how to use the sample script you can download from CodePlex.  
  
    -   The sample rss script on CodePlex, [Reporting Services RS.exe script that migrates content from one report server to another](http://azuresql.codeplex.com/releases/view/115207)  
  
    -   [Scripting and PowerShell with Reporting Services](../../../reporting-services/tools/scripting-and-powershell-with-reporting-services.md)  
  
 The following table summarizes the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] objects you can migrate with scripts:  
  
|Object|Can be Scripted|Comments|  
|------------|---------------------|--------------|  
|Reports|Yes|Following migration, to re-enter passwords for datasources.|  
|Datasources|Yes|Following migration, Re-link reports to datasources.|  
|Models|Yes||  
|Datasets|Yes||  
|Report Parts||Following migration, verify or update the path to the report parts.|  
|Schedules|Yes|See the ListSchedules method [Subscription and Delivery Methods](../../../reporting-services/report-server-web-service/methods/subscription-and-delivery-methods.md)|  
|Subscriptions|yes|See the List Subscriptions method [Subscription and Delivery Methods](../../../reporting-services/report-server-web-service/methods/subscription-and-delivery-methods.md) and the <xref:ReportService2010.ReportingService2010.ChangeSubscriptionOwner%2A> method.|  
|Snapshots|||  
  
  