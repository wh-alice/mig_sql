---
title: "Create, Delete, or Modify a Folder (Report Manager) | Microsoft Docs"
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
  - "removing folders"
  - "modifying folders"
  - "deleting folders"
  - "folders [Reporting Services], creating"
  - "folders [Reporting Services], deleting"
  - "folders [Reporting Services], modifying"
ms.assetid: d62159a8-ec67-4e28-a9f1-05a9250065bb
caps.latest.revision: 49
ms.author: "asaxton"
manager: "erikre"
---
# Create, Delete, or Modify a Folder (Report Manager)
  You can create folders to organize and manage the items you publish to a report server. Creating folders can help users find reports of interest to them. For content managers, folders provide a framework for applying permissions. You can create role assignments on specific folders to restrict access to reports that are in development or that should not be widely distributed.  
  
### To create a folder  
  
1.  Start [Report Manager  &#40;SSRS Native Mode&#41;](http://msdn.microsoft.com/library/80949f9d-58f5-48e3-9342-9e9bf4e57896).  
  
2.  In Report Manager, select the Home folder and click **New Folder**. Or, to create a folder under an existing folder, navigate to that folder in the **Contents** page and click the folder to open it. Then click **New Folder**.  
  
     The **New Folder** page opens.  
  
3.  Type a folder name. A folder name can include spaces, but cannot include reserved characters that are used for URL encoding: ; ? : @ & = + , $ / * \< > |. You cannot type a series of folder names to create several folders at once.  
  
4.  Optionally type a description.  
  
5.  Select **Hide in list view** if you do not want to display the folder in the default view of the **Contents** page. The folder will be visible to users only when they click **Show Details** on the **Contents** page.  
  
6.  Click **OK**.  
  
### To delete a folder  
  
1.  In Report Manager, navigate to the **Contents** page, and locate the item that you want to modify.  
  
2.  Hover over the item, and click the drop-down arrow.  
  
3.  In the drop-down menu, click **Delete**.  
  
4.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)]  
  
### To modify or delete a folder  
  
1.  In Report Manager, navigate to the **Contents** page, and locate the item that you want to modify.  
  
2.  Hover over the item, and click the drop-down arrow.  
  
3.  In the drop-down menu, click **Manage**. The General Properties page opens.  
  
4.  To change the folder location, click **Move**. Type the location of the destination folder, or choose the destination folder from the tree, and then click **OK**.  
  
5.  Or, modify folder properties in the following ways:  
  
    -   To modify display text about the folder, type a name or description.  
  
    -   To display the folder in the default view on the **Contents** page, clear **Hide in list view**.  
  
6.  Or, to remove the folder and its contents, click **Delete**.  
  
7.  Click **Apply** to save changes.  
  
## See Also  
 [New Folder Page &#40;Report Manager&#41;](http://msdn.microsoft.com/library/9212fc68-f0a6-4f79-83c1-84baf4d1957e)   
 [Contents Page &#40;Report Manager&#41;](http://msdn.microsoft.com/library/6b16869b-158a-4934-9c85-bee934b35378)   
 [Finding, Viewing, and Managing Reports &#40;Report Builder and SSRS &#41;](../../reporting-services/report-builder/finding-viewing-and-managing-reports-report-builder-and-ssrs.md)  
  
  