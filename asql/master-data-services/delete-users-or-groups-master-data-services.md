---
title: "Delete Users or Groups (Master Data Services) | Microsoft Docs"
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
  - "deleting groups [Master Data Services]"
  - "groups [Master Data Services], deleting"
  - "users [Master Data Services], deleting"
  - "deleting users [Master Data Services]"
ms.assetid: 0bbf9d2c-b826-48bb-8aa9-9905db6e717f
caps.latest.revision: 7
ms.author: "carlasab"
manager: "jhubbard"
---
# Delete Users or Groups (Master Data Services)
  Delete users or groups when you no longer want them to access [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)].  
  
 Note the following behavior when deleting users and groups:  
  
-   If you delete a user who is a member of a group that has access to [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)], then the user can still access [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] until you remove the user from the Active Directory or local group.  
  
-   If you delete a group, all users from the group who have accessed [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] are displayed in the **Users** list until you delete them.  
  
-   Changes to security are not propagated to the MDS [!INCLUDE[ssMDSXLS](../analysis-services/includes/ssmdsxls-md.md)] for 20 minutes.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **Users and Group Permissions** functional area.  
  
### To delete users or groups  
  
1.  In [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)], click **User and Group Permissions**.  
  
2.  To delete a user, remain on the **Users** page. To delete a group, from the menu bar, click **ManageGroups.**  
  
3.  In the grid,select the row for the user or group that you want to delete.  
  
4.  Click **Delete selected user** or **Delete selected group**.  
  
5.  On the confirmation dialog box, click **OK**.  
  
## See Also  
 [Security &#40;Master Data Services&#41;](../master-data-services/security-master-data-services.md)  
  
  