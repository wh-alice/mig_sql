---
title: "Delete an Attribute (Master Data Services) | Microsoft Docs"
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
helpviewer_keywords: 
  - "attributes [Master Data Services], deleting"
  - "deleting attributes [Master Data Services]"
ms.assetid: ec3e66f7-0e35-43d7-a80d-64899948ebfe
caps.latest.revision: 6
ms.author: "carlasab"
manager: "jhubbard"
---
# Delete an Attribute (Master Data Services)
  In [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)], delete an attribute when you want to permanently delete the attribute and all associated attribute values.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **System Administration** functional area.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
### To delete an attribute  
  
1.  In [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)], click **System Administration**.  
  
2.  On the **Manage Model** page, select a model from the grid and then click **Entities**.  
  
3.  On the **Manage Entity** page, select the row for the entity that you want to create an attribute for.  
  
4.  Click **Attributes**.  
  
5.  On the **Manage Attributes** page, do one of the following.  
  
    -   If the attribute is for leaf members, select **Leaf** from the **Member Types** list box.  
  
    -   If the attribute is for consolidated members, select **Consolidated** from the **Member Types** list box.  
  
    -   If the attribute is for collections, select **Collection** from the **Member Types** list box.  
  
6.  Select the row for the attribute you want to delete.  
  
    > [!NOTE]  
    >  You cannot delete the Name or Code attributes.  
  
7.  Click **Delete**.  
  
8.  In the confirmation dialog box, click **OK**.  
  
## See Also  
 [Attributes &#40;Master Data Services&#41;](../master-data-services/attributes-master-data-services.md)   
 [Domain-Based Attributes &#40;Master Data Services&#41;](../master-data-services/domain-based-attributes-master-data-services.md)   
 [Create a Text Attribute &#40;Master Data Services&#41;](../master-data-services/create-a-text-attribute-master-data-services.md)   
 [Create a Domain-Based Attribute &#40;Master Data Services&#41;](../master-data-services/create-a-domain-based-attribute-master-data-services.md)  
  
  