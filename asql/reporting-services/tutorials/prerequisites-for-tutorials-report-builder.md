---
title: "Prerequisites for Tutorials (Report Builder) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-15"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: 9b8346a6-f4f4-4ad3-bc98-8f2be342ef2d
caps.latest.revision: 11
ms.author: "maggies"
manager: "erikre"
---
# Prerequisites for Tutorials (Report Builder)
To do the Report Builder tutorials, you need to be able to view and save [!INCLUDE[ssRSCurrent](../../a9notintoc/includes/ssrscurrent-md.md)] paginated reports on a report server or SharePoint site that is integrated with a report server. For data, all tutorials use literal queries that must be processed by an instance of [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].  
  
If you do not have access to a report server or site or to a data source, you can learn about Report Builder by building an offline report. See [Tutorial: Create a Quick Chart Report Offline &#40;Report Builder&#41;](../../reporting-services/report-builder/tutorial-create-a-quick-chart-report-offline-report-builder.md).  
  
## Requirements  
You must have the following prerequisites to complete Report Builder tutorials:  
  
-   Access to [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] Report Builder. You can run Report Builder from a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] report server or a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] report server in SharePoint integrated mode. Only the first step, how to open Report Builder, is different on the different servers.  
  
    On a report server, select **New** > **Paginated Report**.
  
    On a report server in SharePoint integrated mode, on the **Documents** tab, select **New Document**, and from the drop-down list, select **Report Builder Report**. For example, `http://<servername>/sites/mySite/reports`. The SharePoint administrator must enable the Report Builder Report feature for each document library.  
  
-   The URL to a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] report server or a SharePoint site that is integrated with a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] report server. You must have permission to save and view reports, shared data sources, shared datasets, report parts, and models. By default, the URL for a report server is `http://<servername>/reportserver`. By default, the URL for a SharePoint site is `http://<sitename>` or `http://<server>/site`.  
  
-   The name of a [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] instance and credentials sufficient for read-only access to any database. The dataset queries in the tutorials use literal data, but each query must be processed by a [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] instance to return the metadata that is required for a report dataset. For example, the following connection string specifies only a server: `data source=<servername>`. You must have read access to the default database that is assigned to you by the system administrator who grants you permission to access the server. You can also specify a database, as shown in the following connection string: `data source=<servername>;initial catalog=<database>`.  
  
-   For the [Tutorial: Map Report (Report Builder)](Tutorial:%20Map%20Report%20\(Report%20Builder\).md), the report server must be configured to support Bing maps as a background. For more information, see [Plan for Map Report Support](http://msdn.microsoft.com/en-us/5ddc97a7-7ee5-475d-bc49-3b814dce7e19).   

-   The [Tutorial: Creating Drillthrough and Main Reports (Report Builder)](Tutorial:%20Creating%20Drillthrough%20and%20Main%20Reports%20\(Report%20Builder\).md) tutorial requires access to the Contoso Sales cube. See the tutorial for more information. 
  
The report server administrator must grant you the necessary permissions on the report server, configure [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] folder locations, and configure Report Builder default options. For more information, see [Install and Uninstall Report Builder](../../a9retired/install-and-uninstall-report-builder.md).  
  
## See Also  
[Report Builder tutorials](../../reporting-services/tutorials/report-builder-tutorials.md)  
  
