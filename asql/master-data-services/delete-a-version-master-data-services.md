---
title: "Delete a Version (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "versions [Master Data Services], deleting"
  - "deleting versions [Master Data Services]"
ms.assetid: 2a4eeffe-8379-4744-ad44-c27d8c8ac9a8
caps.latest.revision: 6
ms.author: "carlasab"
manager: "jhubbard"
---
# Delete a Version (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], delete a version when you are sure you no longer need the master data associated with the version. After you delete a version, you cannot retrieve the associated master data.  
  
> [!WARNING]  
>  If a model has only one version and you delete it, the model becomes unusable.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to view the mdm.viw_SYSTEM_SCHEMA_VERSION view and to execute the mds.udpVersionDelete stored procedure in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database. For more information, see [Database Object Security &#40;Master Data Services&#41;](../master-data-services/database-object-security-master-data-services.md).  
  
### To delete a version  
  
1.  Open [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] and connect to the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] instance for your [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
2.  Open the mdm.viw_SYSTEM_SCHEMA_VERSION view.  
  
3.  Find the version of the model you want to delete and copy the value in the **ID** field.  
  
4.  Create a new query.  
  
5.  Type the following text, replacing *version_ID* with the value you copied in step 2.  
  
    ```  
    EXEC [mdm].[udpVersionDelete] @Version_ID='version_ID'  
    ```  
  
6.  Run the query.  
  
    > [!NOTE]  
    >  You may have to wait a few minutes before the Web application reflects the change.  
  
## See Also  
 [Versions &#40;Master Data Services&#41;](../master-data-services/versions-master-data-services.md)   
 [Copy a Version &#40;Master Data Services&#41;](../master-data-services/copy-a-version-master-data-services.md)  
  
  