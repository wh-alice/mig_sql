---
title: "Set default options for Report Builder | Microsoft Docs"
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
f1_keywords: 
  - "10427"
ms.assetid: 423360de-9bed-462e-921f-60a5abab004f
caps.latest.revision: 15
ms.author: "maggies"
manager: "erikre"
---
# Set default options for Report Builder
  In Report Builder, you can set a number of useful defaults to make report authoring easier and faster.  For example, if you can set or change the default report server, Report Builder saves your reports to the same report server automatically, unless you specify otherwise.  
  
-   In Report Builder, click **File** > **Options**.  
  
## UIElement List  
 **Use this report server or SharePoint site by default**  
 Your administrator may have configured this. The value can be a well-formed URL starting with http:// or https://. This setting determines which data source connections appear by default in the Table/Matrix and Chart wizards. In addition, your reports will be processed on this server and you can reference resources from this server.  
  
 If you select a different report server, you may need to restart Report Builder in order for this change to take affect.  
  
 **Publish report parts to this folder by default**  
 Report Builder will save report parts that you publish to this folder. If the folder does not exist yet and you have permissions to create folders on the report server, Report Builder will create this folder.  
  
 You do not need to restart Report Builder for this setting to take effect.  
  
 **Show this number of recent sites and servers**  
 Specify the number of recent sites and connections to show in the **Open Report** and **Save As Report** dialog boxes.  
  
 **Show this number of recent shared datasets and data source connections**  
 Specify the number of recent shared datasets and data source connections to show in the **Dataset Properties** dialog box and the **Choose a connection to a data source** page of the Data Regions Wizard.  
  
 **Show this number of recent documents**  
 Specify the number of recent documents to show when you click the Report Builder button.  
  
 **Clear all recent item lists**  
 Clear the current lists of recent sites and servers, shared datasets, shared data source connections, and documents.  
  
## See Also  
 [Start Report Builder](../../reporting-services/report-builder/start-report-builder.md)  
  
  