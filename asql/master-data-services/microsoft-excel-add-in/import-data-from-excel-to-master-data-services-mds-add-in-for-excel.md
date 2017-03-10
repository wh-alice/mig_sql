---
title: "Import Data from Excel to Master Data Services (MDS Add-in for Excel) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 89fce454-a816-4b33-a26a-d1b9741d269b
caps.latest.revision: 10
ms.author: "carlasab"
manager: "jhubbard"
---
# Import Data from Excel to Master Data Services (MDS Add-in for Excel)
  In the [!INCLUDE[ssMDSshort](../../analysis-services/includes/ssmdsshort-md.md)][!INCLUDE[ssMDSXLS](../../analysis-services/includes/ssmdsxls-md.md)], publish data to the MDS repository when you are finished working in Excel and want to save your changes so other users have access to them.  
  
> [!NOTE]  
>  -   When you publish changes, comments on MDS-managed cells are deleted.  
> -   A formula is not supported in an MDS-managed cell. A formula in an MDS-managed cell is handled as a text value.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **Explorer** functional area.  
  
-   The active worksheet must contain MDS-managed data and you must have made changes or additions to the MDS-managed data.  
  
-   If you are adding members, you do not have to specify a **Code** value if codes for the entity are being automatically generated. For more information, see [Automatic Code Creation &#40;Master Data Services&#41;](../../master-data-services/automatic-code-creation-master-data-services.md).  
  
### To publish data to the MDS repository  
  
1.  In the **Publish and Validate** group, click **Publish**.  
  
2.  Optional. If the **Publish and Annotate** dialog box is displayed, choose to share the same annotation (comment) for all updates, or to annotate each change individually.  
  
3.  Optional. Select the **Do not show this dialog box again** check box. You can always show the dialog box in the future by choosing **Settings** and selecting the **Show Publish and Annotate dialog box when publishing** check box.  
  
4.  Click **Publish**.  
  
> [!NOTE]  
>  If you are adding new members (rows) to your worksheet and you cannot successfully publish them to the MDS repository, you may not have **Update** permission to all of the attributes in the worksheet. On the **Review** tab, in the **Changes** group, click **Unprotect Sheet** and try to publish again.  
  
## Next Steps  
 [Apply Business Rules &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/apply-business-rules-mds-add-in-for-excel.md)  
  
## See Also  
 [Overview: Importing Data from Excel &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/overview-importing-data-from-excel-mds-add-in-for-excel.md)   
 [Validating Data &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/validating-data-mds-add-in-for-excel.md)  
  
  