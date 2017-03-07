---
title: "Create a Domain-based Attribute (MDS Add-in for Excel) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7b3e30dc-8f41-4a5d-8009-ae5a4426a64b
caps.latest.revision: 6
ms.author: "carlasab"
manager: "jhubbard"
---
# Create a Domain-based Attribute (MDS Add-in for Excel)
  In the [!INCLUDE[ssMDSshort](../../a9notintoc/includes/ssmdsshort-md.md)][!INCLUDE[ssMDSXLS](../../a9notintoc/includes/ssmdsxls-md.md)], administrators can create a domain-based attribute when they want to constrain the values in a column to a specific set of values.  
  
 The values can already be in the worksheet or they can come from an existing entity.  
  
> [!NOTE]  
>  If users type a value in the constrained column, rather than selecting from the list, errors are displayed in the **$InputStatus$** column when they publish.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **System Administration** and **Explorer** functional areas.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../../master-data-services/administrators-master-data-services.md).  
  
-   The model and entity must already exist.  
  
### To perform this procedure:  
  
1.  In Excel, load the entity that contains the column (attribute) you want to constrain. For more information, see [Export Data to Excel from Master Data Services](../../master-data-services/microsoft-excel-add-in/export-data-to-excel-from-master-data-services.md).  
  
2.  Click any cell in the column you want to constrain.  
  
3.  In the **Build Model** group, click **Attribute Properties**.  
  
4.  In the **Attribute Properties** dialog box, in the **Attribute type** list, choose **Constrained list (domain-based)**.  
  
5.  In the **Populate the attribute with values from** list:  
  
    -   To use values from the worksheet, choose **the selected column**. A new entity and new staging table will be created with the values from the selected column.  
  
    -   To use values from an existing entity, choose the name of the entity.  
  
6.  If you chose **the selected column** in the previous step, in the **New entity name** box, type a name for the new entity. This can be the same as the column (attribute) name.  
  
7.  Click **OK**. Each cell in the column now has a list of values for users to choose from.  
  
## Next Steps  
  
-   To add and delete values in the constrained list, load the entity that the attribute is based on. For more information on loading entities, see [Export Data to Excel from Master Data Services](../../master-data-services/microsoft-excel-add-in/export-data-to-excel-from-master-data-services.md).  
  
## See Also  
 [Domain-Based Attributes &#40;Master Data Services&#41;](../../master-data-services/domain-based-attributes-master-data-services.md)   
 [Create an Entity &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/create-an-entity-mds-add-in-for-excel.md)   
 [Building a Model &#40;MDS Add-in for Excel&#41;](../../master-data-services/microsoft-excel-add-in/building-a-model-mds-add-in-for-excel.md)  
  
  