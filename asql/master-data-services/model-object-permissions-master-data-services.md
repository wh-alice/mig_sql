---
title: "Model Object Permissions (Master Data Services) | Microsoft Docs"
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
  - "permissions [Master Data Services], model objects"
  - "models [Master Data Services], object permissions"
ms.assetid: fab6335b-4cae-47de-ae7c-6c4743e0680f
caps.latest.revision: 9
ms.author: "carlasab"
manager: "jhubbard"
---
# Model Object Permissions (Master Data Services)
  Model object permissions are mandatory. They determine the attributes a user can access in the **Explorer** functional area of the UI.  
  
 For example, if you assign a user **Update** permission to the Product entity, the user can update all of the attributes of the Product entity. If you assign **Update** permission to a single attribute, the user can update that attribute only.  
  
 To determine security assigned on each individual attribute value, model object permissions are combined with hierarchy member permissions, which determine the members a user can access.  
  
 To give a user access to a functional area other than **Explorer**, the user must be a model administrator, which also involves assigning Admin permissions on object model. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
 Model object permissions are assigned in the [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)] user interface (UI), in the **User and Group Permissions** functional area on the **Models** tab. On this tab, the model is represented as a tree structure. When you assign permission to an object in the tree, all objects below inherit that permission. You can override that inheritance by assigning permission to individual objects.  
  
 You can assign a combination of Read, Create, Update and Delete or Deny permissions to model objects. If you do not assign any permissions on the **Models** tab, the user cannot view any models or data in [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)].  
  
## Best Practice  
 In general, you should assign **ALL** permission to the model object, and then explicitly assign permission to objects underneath.  
  
## External Resources  
 Blog post, [Security Improvements](http://go.microsoft.com/fwlink/p/?LinkId=615376), on msdn.com.  
  
## See Also  
 [Assign Model Object Permissions &#40;Master Data Services&#41;](../master-data-services/assign-model-object-permissions-master-data-services.md)   
 [Model Permissions &#40;Master Data Services&#41;](../master-data-services/model-permissions-master-data-services.md)   
 [Functional Area Permissions &#40;Master Data Services&#41;](../master-data-services/functional-area-permissions-master-data-services.md)   
 [Hierarchy Member Permissions &#40;Master Data Services&#41;](../master-data-services/hierarchy-member-permissions-master-data-services.md)   
 [How Permissions Are Determined &#40;Master Data Services&#41;](../master-data-services/how-permissions-are-determined-master-data-services.md)  
  
  