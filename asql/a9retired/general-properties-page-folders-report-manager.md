---
title: "General Properties Page, Folders (Report Manager) | Microsoft Docs"
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
ms.assetid: 31d99d9b-2303-4bae-9466-fb67b97cf11a
caps.latest.revision: 25
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# General Properties Page, Folders (Report Manager)
  Use the General properties page for folders to view and set properties for the folders that you create. Information about who created or modified the folder and when the folder was modified appear at the top of the General properties page.  
  
 Folder properties also include security settings. For more information about folder security, see [Secure Folders](../reporting-services/security/secure-folders.md).  
  
 Special-purpose folders such as Home, My Reports, and Users folders cannot be renamed or moved within the report server namespace. The General properties page is not available for these folders.  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface (UI).  
  
###### To open the General properties page for a folder  
  
1.  Open Report Manager, and open the folder for which you want to view or configure properties.  
  
2.  Under the folder banner, in the toolbar, click **Folder Settings**.  
  
## Options  
 **Name**  
 Specify a name for the folder. A name must contain at least one alphanumeric character. It can also include spaces and some symbols. Do not use the characters ; ? : @ & = + , $ * \< > | " or / when specifying a name.  
  
 **Description**  
 Type a description of the folder contents. This description appears on the Contents page for users who have permission to access the folder.  
  
 **Hide in list view**  
 Select this option to hide the folder from users who are using list view mode in Report Manager. List view mode is the default view format when browsing the report server folder hierarchy. In list view, item names and descriptions flow across the page. The alternate format is details view. Details view omits descriptions, but includes other information about the item. Although you can hide an item in list view, you cannot hide an item in details view. If you want to restrict access to an item, you must create a role assignment.  
  
 **Apply**  
 Click to save your changes.  
  
 **Delete**  
 Click to remove the folder and its contents.  
  
 **Move**  
 Click to relocate a report or folder within the report server namespace. Clicking this button opens the Move Items page that allows you to browse folders for a new folder location.  
  
## See Also  
 [Report Manager  &#40;SSRS Native Mode&#41;](../a9retired/report-manager-ssrs-native-mode.md)   
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)  
  
  