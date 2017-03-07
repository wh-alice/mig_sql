---
title: "Create, Delete, or Modify a Role (Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "roles [Reporting Services], creating"
  - "deleting roles"
  - "removing roles"
  - "roles [Reporting Services], definitions"
  - "modifying roles"
  - "roles [Reporting Services], deleting"
  - "roles [Reporting Services], modifying"
ms.assetid: 3d1d56e6-a283-44a7-8417-36cb4d2c74d1
caps.latest.revision: 42
ms.author: "asaxton"
manager: "erikre"
---
# Role Definitions - Create, Delete, or Modify
  Reporting Services provides predefined roles that define a level of access to a report server. Each user or group who requires access to report server does so through a role that describes the tasks that can be performed. Roles are defined for the report server as a whole. You cannot vary a role definition for specific parts of the report server, or specify that a role be used differently depending on the circumstances.  
  
 To create, modify, or delete roles, use [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. You can only delete roles that are not used.  
  
 To assign users and groups to the roles that you create, use Report Manager. For more information, see [Grant User Access to a Report Server &#40;Report Manager&#41;](../../reporting-services/security/grant-user-access-to-a-report-server-report-manager.md).  
  
> [!NOTE]  
>  If the report server is configured for SharePoint integrated mode, and you connected to the SharePoint site that the report server is integrated with, you can view and modify the permission levels that control access to report server content and operations.  
  
### To create a role definition  
  
1.  In Object Explorer, expand a report server node.  
  
2.  Expand the Security folder.  
  
3.  If you are creating an item-level role definition, right-click **Roles**, and point to **New Role**.  
  
     Or, if you are creating a system-level role definition, right-click **System Roles**, and point to **New System Role**.  
  
4.  Type a unique name for the role. A name must contain at least one character. It can also include spaces and certain symbols, but not the characters ; ? : @ & = + , $ / * \< > | " or /.  
  
5.  Optionally type a description. In [!INCLUDE[ssManStudio](../../a9notintoc/includes/ssmanstudio-md.md)] this description is visible only on this page. Users who view this item through Report Manager can see this description in that tool.  
  
6.  Select the tasks that members of this role can perform.  
  
7.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
### To delete or modify a role definition  
  
1.  In Object Explorer, expand a report server node.  
  
2.  Expand the Security folder.  
  
3.  To delete or modify an item-level role definition, expand the Roles folder. Perform one of the following:  
  
    1.  To delete a role definition, right-click the item and click **Delete**. The **Delete Object** dialog box is displayed. [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
    2.  To modify a role definition, right-click the item and click **Properties**. The General page of the **User Role Properties** dialog box is displayed.  
  
         Select the tasks that members of this role can perform, and click **OK**.  
  
4.  To delete or modify a system-level role definition, expand the **System Roles** folder. Perform one of the following:  
  
    1.  To delete a system role definition, right-click the item and click **Delete**. The **Delete Object** dialog box is displayed. [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
    2.  To modify a system role definition, right-click the item and click **Properties**. The General page of the **System Role Properties** dialog box is displayed.  
  
         Select the tasks that members of this role can perform, and click **OK** to apply the changes.  
  
## See Also  
 [Connect to a Report Server in Management Studio](../../reporting-services/tools/connect-to-a-report-server-in-management-studio.md)   
 [Create and Manage Role Assignments](../../reporting-services/security/create-and-manage-role-assignments.md)   
 [Reporting Services in SQL Server Management Studio &#40;SSRS&#41;](../../reporting-services/tools/reporting-services-in-sql-server-management-studio-ssrs.md)  
  
  