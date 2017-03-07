---
title: "Caching Page, Shared Datasets (Report Manager) | Microsoft Docs"
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
ms.assetid: eac372e9-d2a1-48a8-bbe5-09d101df16ea
caps.latest.revision: 7
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Caching Page, Shared Datasets (Report Manager)
  Use the Caching properties page to set the cache options for a shared dataset.  
  
> [!NOTE]  
>  This feature is not available in every edition of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface.  
  
### To open the Caching properties page for a shared dataset  
  
1.  Open Report Manager, and locate the report for which you want to configure shared dataset properties.  
  
2.  Point to the shared dataset, and click the drop-down arrow.  
  
3.  In the drop-down list, click **Manage**. The General properties page for the report opens.  
  
4.  Click the **Caching** tab.  
  
## Options  
 **Cache shared dataset**  
 Places a temporary copy of the data in a cache when a user first opens a report that uses this shared dataset. Subsequent users who run the report within the caching period receive the cached copy of the data. Caching usually improves performance because the data is returned from the cache instead of running the dataset query again.  
  
 **Expire the cache after a number of minutes**  
 Specify the number of minutes to save the cached copy of the data. As soon as a temporary copy expires, the data is no longer returned from the cache. The next time a user opens a report that uses this shared dataset, the dataset query runs and the report server places a copy of the refreshed data back in the cache.  
  
 **Expire the cache on the following schedule**  
 Schedule the time when the cached data is no longer valid and is removed from the cache. The schedule can be a shared schedule or one that is specific for only the current shared dataset.  
  
 **Dataset-specific schedule**  
 Specify a schedule that is used only by this dataset.  
  
 **Shared schedule**  
 Specify a schedule that is shared among reports, subscriptions, and other shared datasets.  
  
 **Apply**  
 Save your changes.  
  
## See Also  
 [Report Manager  &#40;SSRS Native Mode&#41;](../a9retired/report-manager-ssrs-native-mode.md)   
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)   
 [Cache Shared Datasets &#40;SSRS&#41;](../reporting-services/report-server/cache-shared-datasets-ssrs.md)   
 [Schedules](../reporting-services/subscriptions/schedules.md)  
  
  