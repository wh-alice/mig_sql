---
title: "Create a Link Attribute (Master Data Services) | Microsoft Docs"
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
  - "attributes [Master Data Services], creating link attributes"
  - "creating link attributes [Master Data Services]"
ms.assetid: e6658e9c-5b08-4b8d-b556-17ec2dd041d2
caps.latest.revision: 9
ms.author: "carlasab"
manager: "jhubbard"
---
# Create a Link Attribute (Master Data Services)
  In [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)], create a link attribute when you want users to enter a hyperlink as an attribute value, such as http://www.contoso.com.  
  
> [!NOTE]  
>  When users enter a value for a link attribute, the string must begin with **http://** or an error will be displayed.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to access the **System Administration** functional area.  
  
-   You must be a model administrator. For more information, see [Administrators &#40;Master Data Services&#41;](../master-data-services/administrators-master-data-services.md).  
  
-   An entity must exist to create the attribute for. For more information, see [Create an Entity &#40;Master Data Services&#41;](../master-data-services/create-an-entity-master-data-services.md).  
  
## Attribute Information  
 For each created attribute, a row with seven columns is added to the grid. The following table describes the columns.  
  
|Column|Description|  
|------------|-----------------|  
|Status|The attribute status.<br /><br /> When you click Save, the ![Icon for updating status](../master-data-services/media/mds-statusicon-updating.png "Icon for updating status") image displays, indicating that the attribute is updating.<br /><br /> If there are errors when creating or editing an attribute, the ![Icon for error status](../master-data-services/media/mds-statusicon-error.png "Icon for error status") image displays.<br /><br /> Otherwise, the status is OK and the ![Icon for OK status](../master-data-services/media/mds-statusicon-ok.png "Icon for OK status") image displays.|  
|Name|The attribute name.|  
|Display Name|The attribute display name.|  
|Description|The attribute description.|  
|Display Pixel Width|The attribute width.|  
|Type and Properties|The type and data type information of the attribute.|  
|Enable Change Tracking|Specifies whether the attribute is enabled for change tracking and shows the group number in parentheses.|  
  
 When you click an attribute, the following information displays.  
  
-   **Created By**: The name of the user who created the attribute.  
  
-   **On**: The date and time when the attribute was created.  
  
-   **Updated By**: the name of the user who last updated the attribute.  
  
-   **On**: The date and time when the attribute was last updated.  
  
### To create a link attribute  
  
1.  In [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)], click **System Administration**.  
  
2.  On the **Manage Model** page, select a model from the grid and then click **Entities**.  
  
3.  On the **Manage Entity** page, select the row for the entity that you want to create an attribute for.  
  
4.  Click **Attributes**.  
  
5.  On the **Manage Attributes** page, do one of the following and then click **Add**.  
  
    -   If the attribute is for leaf members, select **Leaf** from the **Member Types** list box.  
  
    -   If the attribute is for consolidated members, select **Consolidated** from the **Member Types** list box.  
  
    -   If the attribute is for collections, select **Collection** from the **Member Types** list box.  
  
6.  In the **Name** box, type a name for the attribute. For a list of words that should not be used as attribute names, see [Reserved Words &#40;Master Data Services&#41;](../master-data-services/reserved-words-master-data-services.md).  
  
7.  Optionally, type a display name, and type a description for the attribute in the **Description** box.  
  
8.  In the **Display pixel width** box, type the width of the attribute column to be displayed in the **Explorer** grid.  
  
9. From the **Attribute type** list, select **Free-form**.  
  
10. From the **Data type** list, select **Link**.  
  
11. In the **Length** box, type the maximum number of characters allowed.  
  
12. Optionally, select **Enable change tracking** to track changes to groups of attributes. For more information, see [Add Attributes to a Change Tracking Group &#40;Master Data Services&#41;](http://msdn.microsoft.com/library/e153eb5f-70ca-4c6f-89d8-1f937ed3917d).  
  
13. Click **Save**.  
  
## See Also  
 [Attributes &#40;Master Data Services&#41;](../master-data-services/attributes-master-data-services.md)   
 [Change an Attribute Name and Data Type &#40;Master Data Services&#41;](../master-data-services/change-an-attribute-name-and-data-type-master-data-services.md)   
 [Create a Domain-Based Attribute &#40;Master Data Services&#41;](../master-data-services/create-a-domain-based-attribute-master-data-services.md)   
 [Create a File Attribute &#40;Master Data Services&#41;](../master-data-services/create-a-file-attribute-master-data-services.md)  
  
  