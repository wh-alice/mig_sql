---
title: "Upload a File or Report (Report Manager) | Microsoft Docs"
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
  - "publishing reports [Reporting Services], uploading files"
  - "reports [Reporting Services], publishing"
  - "uploading reports [Reporting Services]"
  - "uploading files [Reporting Services]"
  - "files [Reporting Services], uploading"
ms.assetid: 79027e11-f4ba-4bfd-bd8c-d334e3da02a1
caps.latest.revision: 42
ms.author: "asaxton"
manager: "erikre"
---
# Upload a File or Report (Report Manager)
  Report Manager provides an upload feature so that you can add reports, models, and other files to a report server without having to publish those items from a client application. Files that you upload from the file system are stored as items on the report server. The type of file you upload determines how it is stored:  
  
-   .rdl files are stored as reports.  
  
-   .smdl files are stored as report models.  
  
-   All other files, including shared data source (.rds) files, are uploaded as resources. Resources are not processed by a report server, but can be viewed in Report Manager if the report server supports the MIME type of the file.  
  
### To upload a file or report  
  
1.  Start [Report Manager  &#40;SSRS Native Mode&#41;](http://msdn.microsoft.com/en-US/library/ms157147(SQL.130).aspx).  
  
2.  In Report Manager, navigate to the **Contents** page. Navigate to the folder to which you want to add an item.  
  
3.  Click **Upload File**.  
  
4.  Click **Browse** to select a file to upload. You can upload a report definition file, an image, a document, or any file that you want to make available on the report server.  
  
5.  Type a name for the new item. An item name can include spaces, but cannot include the reserved characters: ; ? : @ & = + , $ / * \< > |.  
  
6.  If you want to replace an existing item with the new item, select **Overwrite item if it exists**.  
  
7.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)]  
  
## See Also  
 [Create, Delete, or Modify a Shared Data Source &#40;Report Manager&#41;](../Topic/Create,%20Delete,%20or%20Modify%20a%20Shared%20Data%20Source%20\(Report%20Manager\).md)   
 [Contents Page &#40;Report Manager&#41;](http://msdn.microsoft.com/en-US/library/ms186470(SQL.130).aspx)   
 [Upload File Page &#40;Report Manager&#41;](http://msdn.microsoft.com/en-US/library/ms187015(SQL.130).aspx)   
 [Upload Files to a Folder](../../reporting-services/report-server/upload-files-to-a-folder.md)  
  
  