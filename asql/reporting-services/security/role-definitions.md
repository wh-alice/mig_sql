---
title: "Role Definitions | Microsoft Docs"
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
  - "roles [Reporting Services], security"
  - "security [Reporting Services], role definitions"
  - "role-based security [Reporting Services], role definitions"
ms.assetid: d1b8dbf0-4462-402e-92dd-0e4835002b6e
caps.latest.revision: 44
ms.author: "asaxton"
manager: "erikre"
---
# Role Definitions
  In [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], a *role**definition* is a named collection of tasks that define the operations available on a report server. Role definitions provide the rules used by the report server to enforce security. When a user attempts to perform a task, such as publishing a report, the report server checks the user's role assignment to determine whether the task is included in their role definition. If the task is included in the role definition, the request is submitted.  
  
## Using Roles to Authorize Access to a Report Server  
 A role becomes operative only when it is used in a role assignment. For more information about how roles provide security, see [Role Assignments](../../reporting-services/security/role-assignments.md).  
  
## Types of Role Definitions  
 Role definitions are either item-level or system-level definitions. An *item-level role definition* describes tasks that relate to items that are stored and managed on a report server, such as reports, folder, and models. Manage reports, View folders, and Manage individual subscriptions are examples of tasks you can include in an item-level role definitions. A *system role definition* includes tasks that apply to the site as a whole. View report server properties is an example of a task you might include in a system role.  
  
## Predefined Roles  
 [!INCLUDE[ssRSnoversion](../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] includes predefined roles that correspond to different levels of user interaction. The following list contains the predefined roles you can use:  
  
-   Content Manager, Publisher, Browser, Report Builder, and My Reports are item-level role definitions that you can use when creating role assignments for accessing report server content.  
  
-   System Administrator and System User are system-level role definitions that you can use to authorize access to site operations.  
  
 For more information, see [Predefined Roles](../Topic/Predefined%20Roles.md).  
  
## Creating a Role Definition  
 To create a role, you use Management Studio to specify a name and tasks it contains. You must create separate role definition for item and system tasks. Roles can include item-level tasks or system-level tasks, but not both. Creating a role definition consists of providing a name and choosing a set of tasks for the definition. To create a role definition, you must have permission to do so. The "Set security for individual items" task provides these permissions. By default, administrators and users who are assigned to the predefined **Content Manager** role can perform this task.  
  
 A role must have a unique name. To be valid, the role definition must contain at least one task. For more information, see [Tasks and Permissions](../../reporting-services/security/tasks-and-permissions.md).  
  
 To create a role definition, use [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)]. For more information, see [Create, Delete, or Modify a Role &#40;Management Studio&#41;](../Topic/Create,%20Delete,%20or%20Modify%20a%20Role%20\(Management%20Studio\).md).  
  
 After you create a role definition, you can use it by selecting it in a role assignment. For more information, see [Grant User Access to a Report Server &#40;Report Manager&#41;](../../reporting-services/security/grant-user-access-to-a-report-server-report-manager.md).  
  
## Customize or Delete a Role Definition  
 Predefined roles can be modified or replaced with custom roles. To modify a role, you add to or remove tasks from the role definition. You cannot rename a role. Any changes you make are applied immediately to all role assignments that include the role definition.  
  
 You can delete a role definition if you are no longer using it. You cannot delete the role definition that is selected for the My Reports feature as long as that feature is enabled. Before you can delete the role definition used for My Reports, you must first disable the feature or select a different role definition to use with it.  
  
## See Also  
 [Tasks and Permissions](../../reporting-services/security/tasks-and-permissions.md)   
 [Granting Permissions on a Native Mode Report Server](../../reporting-services/security/granting-permissions-on-a-native-mode-report-server.md)   
 [Create, Delete, or Modify a Role &#40;Management Studio&#41;](../Topic/Create,%20Delete,%20or%20Modify%20a%20Role%20\(Management%20Studio\).md)   
 [Grant User Access to a Report Server &#40;Report Manager&#41;](../../reporting-services/security/grant-user-access-to-a-report-server-report-manager.md)   
 [Modify or Delete a Role Assignment &#40;Report Manager&#41;](../Topic/Modify%20or%20Delete%20a%20Role%20Assignment%20\(Report%20Manager\).md)   
 [Set Permissions for Report Server Items on a SharePoint Site &#40;Reporting Services in SharePoint Integrated Mode&#41;](../../reporting-services/security/2467c657-a3bf-4ec3-a88c-8877df19823d.md)  
  
  