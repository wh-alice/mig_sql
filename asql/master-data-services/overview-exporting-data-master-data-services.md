---
title: "Overview: Exporting Data (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "exporting data [Master Data Services]"
  - "subscription views [Master Data Services]"
  - "subscription views [Master Data Services], about subscription views"
ms.assetid: 8b74409a-ea70-45f8-84c7-da6905e4901a
caps.latest.revision: 12
ms.author: "carlasab"
manager: "jhubbard"
---
# Overview: Exporting Data (Master Data Services)
  This article introduces the types of subscription view formats and how to determine when views need to be edited due to changes to model objects.  
  
 You create a subscription view to export [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] data to a subscribing system such as [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)]. You  use the subscribing system to view the data in the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] database.  For information on how to create the subscription view, see [Create a Subscription View to Export Data &#40;Master Data Services&#41;](../master-data-services/create-a-subscription-view-to-export-data-master-data-services.md)  
  
 For more information about views, see [Views](../relational-databases/views/views.md).  
  
## Subscription View Formats  
 When you create a view in [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)], you choose from a set of standard view formats that [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] provides. You can use these formats to create views that show:  
  
-   All leaf members and their attributes.  
  
-   All consolidated members and their attributes.  
  
-   All collections and their attributes.  
  
-   The members explicitly added to a collection.  
  
-   The members in a derived hierarchy, in either a parent child or level format.  
  
-   The members in all explicit hierarchies for an entity, in either a parent child or level format.  
  
## Subscription Views Can Become Out-of-Date  
 After you create a subscription view for an entity or hierarchy, changes to the associated model objects are not automatically reflected in the view. You might need to regenerate a subscription view in [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] to reflect changes to model objects. The **Changed** column on the **Export** page is updated to **True** when model objects change. **True** indicates that you should edit the subscription view and save it, which regenerates the view.  
  
## Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Create a subscription view of your master data.|[Create a Subscription View to Export Data &#40;Master Data Services&#41;](../master-data-services/create-a-subscription-view-to-export-data-master-data-services.md)|  
|Delete an existing subscription view.|[Delete a Subscription View &#40;Master Data Services&#41;](../master-data-services/delete-a-subscription-view-master-data-services.md)|  
  
## Related Content  
  
-   [Subscription View Formats &#40;Master Data Services&#41;](../master-data-services/subscription-view-formats-master-data-services.md)  
  
-   [Views](../relational-databases/views/views.md)  
  
  