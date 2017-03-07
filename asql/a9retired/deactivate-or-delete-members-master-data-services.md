---
title: "Deactivate or Delete Members (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "attributes [Master Data Services], updating attribute values with staging"
  - "staging process [Master Data Services], updating attribute values"
ms.assetid: 7034280e-4eee-4f67-87a0-19d62c2271a1
caps.latest.revision: 8
ms.author: "carlasab"
manager: "jhubbard"
robots: noindex,nofollow
---
# Deactivate or Delete Members (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], you can deactivate members or delete them completely.  
  
 Deactivating means the member can be reactivated. If you reactivate a member, its attributes and its membership in hierarchies and collections are restored. All previous transactions are intact. Deactivation transactions are visible to administrators in the **Version Management** functional area of the [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)] web application.  
  
 Deleting means purging the member from the system permanently. All transactions for the member, all relationships, and all attributes are permanently deleted.  
  
 **Notes:**  
  
-   You cannot use staging to reactivate members. You must do it manually in the [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)] web application. For more information, see [Reactivate a Member or Collection &#40;Master Data Services&#41;](../master-data-services/reactivate-a-member-or-collection-master-data-services.md).  
  
-   You cannot use staging to delete or deactivate collections. For more information on manually deactivating collections, see [Delete a Member or Collection &#40;Master Data Services&#41;](../master-data-services/delete-a-member-or-collection-master-data-services.md).  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to insert data into the stg.name_Leaf (for leaf members) or stg.name_Consolidated (for consolidated members) table in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
-   You must have permission to execute either the stg.udp_name_Leaf (for leaf members) or stg.udp_name_Consolidated (for consolidated members) stored procedure in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
-   The model must not have a status of **Committed**.  
  
### To deactivate or delete members  
  
-   Follow the procedure to load or update members. For more information, see [Load or Update Members &#40;Master Data Services&#41;](../a9retired/load-or-update-members-master-data-services.md). For the **ImportType** field, use **3** to deactivate members, and **4** to permanently delete.  
  
## See Also  
 [Reactivate a Member or Collection &#40;Master Data Services&#41;](../master-data-services/reactivate-a-member-or-collection-master-data-services.md)   
 [Create a Leaf Member &#40;Master Data Services&#41;](../master-data-services/create-a-leaf-member-master-data-services.md)   
 [Delete a Member or Collection &#40;Master Data Services&#41;](../master-data-services/delete-a-member-or-collection-master-data-services.md)  
  
  