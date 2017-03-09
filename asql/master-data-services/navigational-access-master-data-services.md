---
title: "Navigational Access (Master Data Services) | Microsoft Docs"
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
  - "navigational access [Master Data Services]"
  - "security [Master Data Services], navigational access"
ms.assetid: 3403b7b0-44e2-48c3-a1b7-9c4612b874b8
caps.latest.revision: 5
ms.author: "carlasab"
manager: "jhubbard"
---
# Navigational Access (Master Data Services)
  Navigational access applies to model object security, which is assigned on the **Models** tab.  
  
 Navigational access is the access you get to levels higher than where you’ve assigned security.  
  
 In this example, permissions are assigned to an entity, and so navigational access is granted at the model level.  
  
 ![mds_conc_inheritance_model](../master-data-services/media/mds-conc-inheritance-model.gif "mds_conc_inheritance_model")  
  
 **Entities**  
  
 When you assign permission to an entity, its leaf members, or its consolidated members, navigational access means you can read or update the name and code for all members. You can also read the model name.  
  
 **Attributes**  
  
 When you assign permission to an attribute, navigational access means you can read or update the name and code for all members in the entity. You can also read the model name.  
  
 **Collections**  
  
 When you assign permissions to collections, you can read or update the name, code, description and owner ID. You can also read the model name.  
  
## See Also  
 [How Permissions Are Determined &#40;Master Data Services&#41;](../master-data-services/how-permissions-are-determined-master-data-services.md)  
  
  