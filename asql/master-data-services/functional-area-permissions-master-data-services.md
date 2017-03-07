---
title: "Functional Area Permissions (Master Data Services) | Microsoft Docs"
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
  - "functional area permissions [Master Data Services], about functional area permissions"
  - "functional area permissions [Master Data Services]"
  - "permissions [Master Data Services], functional areas"
ms.assetid: a80b87b3-b904-4cda-8582-0761c2617c57
caps.latest.revision: 10
ms.author: "carlasab"
manager: "jhubbard"
---
# Functional Area Permissions (Master Data Services)
  You can assign permission to each of the functional areas of the [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)] user interface (UI). The following are the functional areas:  
  
-   **Explorer**  
  
-   **Version Management**  
  
-   **Integration Management**  
  
-   **System Administration**  
  
-   **User and Group Permissions**  
  
-   **Super user**  
  
 When you assign permission to a functional area, you are making an area of the UI visible to the user or group.  
  
 Within the **Explorer** functional area, additional permissions assigned to model objects and hierarchy members determine which data a user can access. Within all other functional areas, a user must be a model administrator to view a model and act on it. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
> [!IMPORTANT]  
>  A user with Super User permissions effectively has Admin permission on all models and has all other functional permissions.  
  
 A user or group must have permission to at least one functional area and one model on the **Models** tab in order to access [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)].  
  
## See Also  
 [Assign Functional Area Permissions &#40;Master Data Services&#41;](../master-data-services/assign-functional-area-permissions-master-data-services.md)   
 [Model Object Permissions &#40;Master Data Services&#41;](../master-data-services/model-object-permissions-master-data-services.md)   
 [Hierarchy Member Permissions &#40;Master Data Services&#41;](../master-data-services/hierarchy-member-permissions-master-data-services.md)   
 [How Permissions Are Determined &#40;Master Data Services&#41;](../master-data-services/how-permissions-are-determined-master-data-services.md)  
  
  