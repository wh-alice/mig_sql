---
title: "Apply Business Rules (MDS Add-in for Excel) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: cd106345-f561-4966-88d3-a69139b2bd78
caps.latest.revision: 7
ms.author: "carlasab"
manager: "jhubbard"
---
# Apply Business Rules (MDS Add-in for Excel)
  In the [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)][!INCLUDE[ssMDSXLS](../../a9notintoc/includes/ssmdsxls-md.md)] apply business rules when you want to validate data and confirm that it is valid. You can correct validations and re-publish the data.  
  
> [!NOTE]  
>  Data validation occurs automatically when you publish data. For more information, see [Validation &#40;Master Data Services&#41;](../../master-data-services/validation-master-data-services.md).  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have access to the **Explorer** functional area.  
  
-   You must have an active worksheet that contains MDS-managed data.  
  
### To apply business rules  
  
1.  In the **Publish and Validate** group, click **Apply Rules**.  
  
    > [!NOTE]  
    >  The number of members (rows) that are validated at one time depends on a setting in [!INCLUDE[ssMDScfgmgr](../../a9retired/includes/ssmdscfgmgr-md.md)]. For more information, see [Business Rule Settings](../../master-data-services/system-settings-master-data-services.md#BusinessRules).  
  
2.  The data is validated against business rules and two status columns are displayed. If these columns are not displayed automatically, in the **Publish and Validate** group, click **Show Status** to view them.  
  
## See Also  
 [Overview: Importing Data from Excel &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/overview-importing-data-from-excel-mds-add-in-for-excel.md)  
  
  