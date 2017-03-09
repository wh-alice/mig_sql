---
title: "Entity Permissions (Master Data Services) | Microsoft Docs"
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
  - "entities [Master Data Services], permissions"
  - "permissions [Master Data Services], entities"
ms.assetid: 22785062-4faf-46ee-bffa-01cbd6d5a5b3
caps.latest.revision: 6
ms.author: "carlasab"
manager: "jhubbard"
---
# Entity Permissions (Master Data Services)
  Entity permissions apply to:  
  
-   All of the entity's attributes, including **Name** and **Code**, for both leaf and consolidated members.  
  
-   All of the entity’s collections.  
  
-   Explicit hierarchy memberships and relationships.  
  
 When you have permission to an entity, you can add and remove members from the entity, its explicit hierarchies, and its collections.  
  
> [!NOTE]  
>  These permissions apply to the **Explorer** functional area of the user interface only.  
  
|Permission|Description|  
|----------------|-----------------|  
|**Read**|User can read members, attributes, hierarchy memberships, or collection memberships.|  
|**Create**|User can create members, and assign attribute values during create.|  
|**Update**|User can update members, attributes, hierarchy memberships, or collection memberships.|  
|**Delete**|User can delete members.|  
|**Deny**|Deny all access to the entity.|  
  
 The Read, Create, Update, and Delete permissions can be combined with each other. When Create, Update and Delete permissions are assigned, the read permission will be assigned automatically.  
  
## See Also  
 [Assign Model Object Permissions &#40;Master Data Services&#41;](../master-data-services/assign-model-object-permissions-master-data-services.md)   
 [Model Object Permissions &#40;Master Data Services&#41;](../master-data-services/model-object-permissions-master-data-services.md)   
 [Entities &#40;Master Data Services&#41;](../master-data-services/entities-master-data-services.md)  
  
  