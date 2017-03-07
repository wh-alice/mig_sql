---
title: "Merge Conflicts (Master Data Services) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 797219ad-5109-4666-94d3-dd1d59440a33
caps.latest.revision: 5
ms.author: "carlasab"
manager: "jhubbard"
---
# Merge Conflicts (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], if data that you are attempting to publish has been changed by another user, the publish will fail with a conflict error. To resolve this error, you can perform merge conflicts and republish the changes.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **Explorer** functional area.  
  
-   You must have a minimum of Update permission to the leaf model object for the entity you are updating.  
  
### To merge conflicts  
  
1.  In the **Explorer** page, update the member attribute.  
  
2.  If the same member attribute has been changed by another user, the **Merge Conflicts** dialog will appear.  
  
3.  In the **Merge Conflicts** dialog, you can either:  
  
    -   Choose **Latest** and click **Apply** to undo the pending changes and reload the latest version from the server.  
  
    -   Choose **Original** and click **Apply** to apply the original version in the worksheet.  
  
    -   Choose **Yours** and click **Apply** to keep the existing local changes.  
  
4.  After you click **Apply**, you can make additional changes and publish again. Or you can click **Cancel** to cancel the update and reload the latest version from the server.  
  
## See Also  
 [Members &#40;Master Data Services&#41;](../master-data-services/members-master-data-services.md)  
  
  