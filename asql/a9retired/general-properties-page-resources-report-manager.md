---
title: "General Properties Page, Resources (Report Manager) | Microsoft Docs"
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
ms.assetid: 23eed41b-283a-49df-a3aa-062dde8d6354
caps.latest.revision: 25
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# General Properties Page, Resources (Report Manager)
  Use the General properties page for resources to rename, delete, move, or replace a resource. Information about who added the resource or modified the properties appears at the top of the page.  
  
 To open this page, select a resource and then click the **Properties** tab at the top of the page.  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface (UI).  
  
###### To open the General properties page for a resource  
  
1.  Open Report Manager, and locate the resource for which you want to view or configure properties.  
  
2.  Hover over the resource, and click the drop-down arrow.  
  
3.  In the drop-down menu, click **Manage**. This opens the General properties page for the resource.  
  
## Options  
 **Name**  
 Specify a name for the resource. A name must contain at least one alphanumeric character. It can also include spaces and some symbols. Do not use the characters ; ? : @ & = + , $ / * \< > | " or / when specifying a name.  
  
 **Description**  
 Type a description of the resource. This description appears in the Contents page to users who have permission to access the resource.  
  
 **Hide in list view**  
 Select this option to hide the resource from users who are using list view mode in Report Manager. List view mode is the default view format when browsing the report server folder hierarchy. In list view, item names and descriptions flow across the page. The alternate format is details view. Details view omits descriptions, but includes other information about the item. Although you can hide an item in list view, you cannot hide an item in details view. If you want to restrict access to an item, you must create a role assignment.  
  
 **Type**  
 Specifies the MIME type of the resource. This property is read-only.  
  
 **Apply**  
 Click to save your changes.  
  
 **Delete**  
 Click to remove the resource from the report server database.  
  
 **Move**  
 Click to relocate a resource within the report server folder hierarchy. Clicking this button opens the Move Items page, on which you can browse through folders for a new folder location.  
  
 **Replace**  
 Click to open the Import Resource page, which is used to select a resource file from a file share.  
  
## See Also  
 [Report Manager  &#40;SSRS Native Mode&#41;](../a9retired/report-manager-ssrs-native-mode.md)   
 [View Page, Resources &#40;Report Manager&#41;](../a9retired/view-page-resources-report-manager.md)   
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)   
 [Security Properties Page, Items &#40;Report Manager&#41;](../a9retired/security-properties-page-items-report-manager.md)  
  
  