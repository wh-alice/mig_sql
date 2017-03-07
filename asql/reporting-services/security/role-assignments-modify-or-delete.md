---
title: "Modify or Delete a Role Assignment (Report Manager) | Microsoft Docs"
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
  - "removing role assignments"
  - "roles [Reporting Services], assignments"
  - "system roles [Reporting Services]"
  - "modifying role assignments"
  - "deleting role assignments"
ms.assetid: 523bdd32-92cb-4b48-a3a9-d58b2385bde7
caps.latest.revision: 45
ms.author: "asaxton"
manager: "erikre"
---
# Role Assignments - Modify or Delete
  A role assignment maps a group or user account to a predefined role definition that includes tasks that can be performed. It determines the types of operations that a user can perform relative to a folder, report, model, or other content type. To create, modify, or delete role assignments, you use Report Manager. After you create a role assignment for a particular user or group, you can modify it later by selecting a different role. If you want to revoke permissions to a report server, you can delete a role assignment from the report server.  
  
 Depending on your objective, alternative approaches might be more appropriate. Examples include customizing or creating a new role definition, or modifying the membership of a group account in Active Directory.  
  
 For example, suppose you have a group of users who need to fully manage their content, but should not have the full set of permissions associated with Content Manager. In this case, you could create a new role definition called Department Content Manager that includes all of the tasks in Content Manager except **Set security policies for items**.  
  
 Similarly, if you are a system or network administrator and it is easier for you to manage Active Directory group accounts than role assignments in Report Manager, you could reduce the overhead of managing role assignments by creating a single role assignment for a group account, and then adjust group membership when users no longer require access to reports.  
  
 If you determine that modifying or deleting a role assignment is the best approach, remember to check for both system role assignments and item role assignments. Each type of role assignment is configured through different pages in Report Manager.  
  
### To modify or delete a system role assignment  
  
1.  Start [Report Manager  &#40;SSRS Native Mode&#41;](../../a9retired/report-manager-ssrs-native-mode.md).  
  
2.  Click **Site Settings**.  
  
3.  Click **Security**. All system-level role assignments currently defined for the server or scale-out deployment are listed by account name.  
  
4.  Find the role assignment that you want to modify or delete.  
  
5.  To add or remove the role for a particular user or group, click **Edit**.  
  
6.  To delete a role assignment, click the check box next to the user or group name, and then click **Delete**.  
  
### To modify or delete an item role assignment  
  
1.  Start **Report Manager** and locate the item for which you want to edit or delete a role assignment.  
  
2.  Hover over the item, and click the drop-down arrow.  
  
3.  In the drop-down menu, click **Security**.  
  
4.  Find the role assignment that you want to modify or delete.  
  
5.  To add or remove the role for a particular user or group, click **Edit**.  
  
6.  To delete a role assignment, click the check box next to the user or group name, and then click **Delete**.  
  
## See Also  
 [Create and Manage Role Assignments](../../reporting-services/security/create-and-manage-role-assignments.md)   
 [Role Assignments](../../reporting-services/security/role-assignments.md)   
 [Site Settings Page &#40;Report Manager&#41;](../../a9retired/site-settings-page-report-manager.md)   
 [New System Role Assignments: Edit System Role Assignments Page &#40;Report Manager&#41;](../../a9retired/new-system-role-assignments-edit-system-role-assignments-page-report-manager.md)  
  
  