---
title: "Change an Attribute Name and Data Type (Master Data Services) | Microsoft Docs"
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
  - "attributes [Master Data Services], changing name"
ms.assetid: d348f238-f59d-41c7-ad20-3ccd55bfd9e5
caps.latest.revision: 9
ms.author: "carlasab"
manager: "erikre"
---
# Change an Attribute Name and Data Type (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], you can change the name of an attribute.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **System Administration** functional area.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
### To change an attribute name and type  
  
1.  In [!INCLUDE[ssMDSmdm](../a9notintoc/includes/ssmdsmdm-md.md)], click **System Administration**.  
  
2.  On the **Manage Model** page, select a model from the grid and then click **Entities**.  
  
3.  On the **Manage Entity** page, select the row for the entity that you want to create an attribute for.  
  
4.  Click **Attributes**.  
  
5.  On the **Manage Attributes** page, do one of the following.  
  
    -   If the attribute is for leaf members, select **Leaf** from the **Member Types** list box.  
  
    -   If the attribute is for consolidated members, select **Consolidated** from the **Member Types** list box.  
  
    -   If the attribute is for collections, select **Collection** from the **Member Types** list box.  
  
6.  Select the row for the attribute you want to edit, and then click **Edit**.  
  
7.  In the **Name** box, type the updated name of the attribute. For a list of words that should not be used as attribute names, see [Reserved Words &#40;Master Data Services&#41;](../master-data-services/reserved-words-master-data-services.md).  
  
8.  From the **Attribute type** list, select another type.  
  
9. Click **Save**.  
  
## See Also  
 [Create a Text Attribute &#40;Master Data Services&#41;](../master-data-services/create-a-text-attribute-master-data-services.md)   
 [Delete an Attribute &#40;Master Data Services&#41;](../master-data-services/delete-an-attribute-master-data-services.md)   
 [Attributes &#40;Master Data Services&#41;](../master-data-services/attributes-master-data-services.md)  
  
  