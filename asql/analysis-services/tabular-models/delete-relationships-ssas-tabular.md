---
title: "Delete Relationships (SSAS Tabular) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d40e3f05-54e8-4c4b-807a-0b06f446079b
caps.latest.revision: 13
ms.author: "owend"
manager: "erikre"
---
# Delete Relationships (SSAS Tabular)
  You can delete existing relationships by using the model designer in Diagram View or by using the Manage Relationships dialog box. For information about how relationships are used in tabular models, see [Relationships &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/relationships-ssas-tabular.md).  
  
## Considerations for Deleting Relationships  
 Keep the following issues in mind when deciding whether to delete a relationship:  
  
-   There is no way to undo the deletion of a relationship. You can re-create the relationship, but this action requires a complete recalculation of formulas in the model. Therefore, always check first before deleting a relationship that is used in formulas.  
  
-   Deleting a relationship between two tables can cause errors in formulas that reference these tables.  
  
-   The Data Analysis Expression (DAX) RELATED function uses the relationships between tables to look up related values in another table. It will return different results after the relationship is deleted. For more information, see the RELATED Function (DAX).  
  
-   In addition to changing PivotTable and formula results, both the creation and deletion of relationships will cause the workbook to be recalculated, which can take some time.  
  
## Delete Relationships  
  
#### To delete a relationship by using Diagram View  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], click the **Model** menu, then point to **Model View**, and then click **Diagram View**.  
  
2.  Right-click a relationship line between two tables, and then click **Delete**.  
  
#### To delete a relationship by using the Manage Relationships dialog box  
  
1.  In [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)], click the **Table** menu, and then click **Manage Relationships**.  
  
2.  In the **Manage Relationships** dialog box, select one or more relationships from the list.  
  
     To select multiple relationships, hold down CTRL while you click each relationship.  
  
3.  Click **Delete Relationship**.  
  
4.  In the **Manage Relationships** dialog box, click **Close**.  
  
## See Also  
 [Relationships &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/relationships-ssas-tabular.md)   
 [Create a Relationship Between Two Tables &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/create-a-relationship-between-two-tables-ssas-tabular.md)  
  
  