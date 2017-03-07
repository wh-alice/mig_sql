---
title: "Upload File Page (Report Manager) | Microsoft Docs"
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
ms.assetid: 7bb3166f-9374-4449-b66a-ffb77298507d
caps.latest.revision: 27
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Upload File Page (Report Manager)
  Use the Upload File page to publish a file from the file system into the report server database. Uploaded files are represented as items in the report server folder hierarchy.  
  
-   Uploaded .rdl files are published to a report server as reports.  
  
-   Uploaded .smdl files are published as report models if they contain data source view information. If they are missing a data source view reference, an error occurs during the upload. Data source view information might be missing if you upload an .smdl file from a [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vsprvs](../a9retired/includes/vsprvs-md.md)] report model project. In report model projects, data source view information is stored in a separate file rather than in the .smdl file itself.  
  
     Model files that do contain data source view information (and can therefore be successfully uploaded) are those that have been previously published to a report server and then saved from the server to a file on the file system. If you open the General Properties page of a model and click **Edit** to open the model, you can save it to a file and then upload it as a new model on the report server. The .smdl file that you subsequently upload will have all of information that is necessary for model publication.  
  
-   All other file types that you upload are stored as resources. This includes .rds files that contain report data source connection information. Uploading an .rds file does not produce a shared data source item on the report server.  
  
 When you upload an item, it is placed in the current folder. After the upload is complete, you can move the item to a different location.  
  
> [!NOTE]  
>  This feature is not available in every edition of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface (UI).  
  
### To open the Upload File page  
  
1.  Open Report Manager, and navigate to the folder in which you want to upload a file.  
  
2.  In the toolbar, click **Upload File**.  
  
## Options  
 **File to Upload**  
 Displays the fully qualified path to the file you are copying from the file system.  
  
 **Browse**  
 Click to choose a file from the file system.  
  
 **Name**  
 Type the name of the file, as it will appear in the report server namespace. A name must contain at least one alphanumeric character. It can also include spaces and certain symbols. Do not use the characters ; ? : @ & = + , $ * \< > | " or / when specifying an item name.  
  
 **Overwrite item if it exists**  
 Select this check box if you want to replace an existing item with a newer version. To overwrite an existing version, the name of the new item and the existing item must be an exact match.  
  
## See Also  
 [Report Manager  &#40;SSRS Native Mode&#41;](../a9retired/report-manager-ssrs-native-mode.md)   
 [Contents Page &#40;Report Manager&#41;](../a9retired/contents-page-report-manager.md)   
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)   
 [Upload Files to a Folder](../reporting-services/report-server/upload-files-to-a-folder.md)  
  
  