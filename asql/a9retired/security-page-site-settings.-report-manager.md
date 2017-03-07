---
title: "Security Page (Site Settings. Report Manager) | Microsoft Docs"
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
ms.assetid: acc9a905-90f8-4544-aec6-b2ab3a1b0015
caps.latest.revision: 26
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Security Page (Site Settings. Report Manager)
  Use the Security page to view the system role assignments that control access to the report server site. System role assignments exist outside of the scope of the report server namespace or folder hierarchy. System role assignments are global and cannot vary for specific items. Operations that are supported through system role assignments include creating and using shared schedules, using Report Builder, and setting default values for some server features.  
  
 A default system role assignment is created when the report server is installed. This system role assignment grants permissions to local system administrators to manage the report server environment. A local system administrator can always set security for a local report server, even if system role assignments are deleted.  
  
 All other users who require access to Report Builder or shared schedules must be assigned to a system role assignment.  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface (UI).  
  
###### To open the Security page for Site Settings  
  
1.  Open Report Manager.  
  
2.  At the top of the page, click **Site Settings**. This opens the General Properties page of the site.  
  
3.  Select the **Security** tab.  
  
## Options  
 **Delete**  
 Click to delete an existing role assignment. Before clicking **Delete**, select the check box next to the group or user name that you want to remove. You cannot delete a role assignment if it is the only one remaining. Deleting a role assignment does not delete a group or user account or role definitions.  
  
 **New Role Assignment**  
 Click to open the New System Role Assignments page, which is used to create additional system role assignments for the report server site. For more information, see [New System Role Assignments: Edit System Role Assignments Page &#40;Report Manager&#41;](../a9retired/new-system-role-assignments-edit-system-role-assignments-page-report-manager.md).  
  
 **Edit**  
 Click to open the Edit System Role Assignments page, which is used to edit individual system role assignments for the report server site. For more information, see [New System Role Assignments: Edit System Role Assignments Page &#40;Report Manager&#41;](../a9retired/new-system-role-assignments-edit-system-role-assignments-page-report-manager.md).  
  
 **Group or User**  
 Lists the groups and users that are part of an existing role assignment. Existing role assignments for the current folder are defined for the groups and users that appear in this column. Click **Edit** next to a group or user name to view or edit role assignment details.  
  
 **Roles**  
 Lists one or more role definitions that are part of an existing role assignment. If multiple roles are assigned to a group or user account, that group or user can perform all tasks that belong to all roles. To view the set of tasks that each role supports, use [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)]. You cannot view, create, modify, or delete roles in Report Manager. For instructions, see [Create, Delete, or Modify a Role &#40;Management Studio&#41;](../reporting-services/security/role-definitions-create-delete-or-modify.md).  
  
## See Also  
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)   
 [Granting Permissions on a Native Mode Report Server](../reporting-services/security/granting-permissions-on-a-native-mode-report-server.md)  
  
  