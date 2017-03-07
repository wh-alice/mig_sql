---
title: "Publish and Republish Report Parts (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 92dce484-f39b-403c-9caf-d8772bc3aca3
caps.latest.revision: 9
ms.author: "maggies"
manager: "erikre"
---
# Publish and Republish Report Parts (Report Builder and SSRS)
  Report parts are paginated report items that have been published separately to a report server and that can be reused in other paginated reports. You can publish a report part with default settings in a default location, or you can edit report part metadata such as name and description, and save it somewhere else on a report server. You can also save it to a SharePoint site that is integrated with a report server if you have the correct permissions.  
  
 You can publish just the report part, with the dataset that it depends on embedded in it, or you can publish the dataset separately. If you publish the dataset separately, it becomes a shared dataset, and the report part links to it. For more information, see [Report Parts and Datasets in Report Builder](../../reporting-services/report-data/report-parts-and-datasets-in-report-builder.md).  
  
 You can republish an existing report part. If you have permissions, you can save over the original instance of the report part on the server, even if you didn't create it. You can also publish it as a new report part and save it either in the same or a different location.  
  
## To publish a report part  
  
1.  On the Report Builder menu, click **Publish Report Parts**.  
  
     If you are not connected to a report server, you will be prompted to connect. If you cannot connect to a report server, you cannot publish report parts.  
  
2.  To save your report parts with default settings to the default location, click **Publish all report parts with default settings**.  
  
     Otherwise, click **Review and modify report parts before publishing**.  
  
3.  Edit the report part name and description: Double-click the name to edit it and click in the **Description** field to add a description.  
  
    > [!NOTE]  
    >  It is a good idea to give the report part name and description, to help people identify it when searching. The maximum length for the name of a report part is 260 characters for the entire path, including the names of the folders on the server, followed by the actual name of the report part.  
  
4.  To save your report part to a folder other than the default, click the **Browse** button.  
  
5.  When you have set the options for all the report parts in the report, click **Publish**.  
  
     After you publish the report parts, the dialog box shows which were successfully published and which were not. You can view details in the **Publish Report Parts** dialog box for the report parts that failed to publish.  
  
6.  Click **Close**.  
  
## To republish a report part  
  
1.  Follow the previous procedure for publishing a report part.  
  
2.  In the **Publish Report Parts** dialog box, if you click **Publish as a New Copy of the Report Part**, Report Builder will not save over the existing report part on the server, but will create another report part instead.  
  
> [!NOTE]  
>  If you publish it as a new report part, it will have a new unique ID. It will no longer receive updates if the original report part changes.  
  
## See Also  
 [Report Parts &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/report-parts-report-builder-and-ssrs.md)   
 [Report Parts and Datasets in Report Builder](../../reporting-services/report-data/report-parts-and-datasets-in-report-builder.md)   
 [Troubleshoot Report Parts (Report Builder and SSRS)](http://msdn.microsoft.com/en-us/d9fe1932-46e7-421b-a8a9-4c54d9576e94)   
 [Check for Updates or Turn Updates Off (Report Builder and SSRS)](http://msdn.microsoft.com/en-us/9c69792d-d7c4-453b-ae2f-6d2d071d8606)   
 [Browse for Report Parts and Set a Default Folder &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/browse-for-report-parts-and-set-a-default-folder-report-builder-and-ssrs.md)  
  
  