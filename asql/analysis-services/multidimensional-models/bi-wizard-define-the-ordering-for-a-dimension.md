---
title: "Define the Ordering for a Dimension | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "OrderBy property"
  - "dimensions [Analysis Services], ordering"
  - "Business Intelligence enhancements [Analysis Services], ordering"
  - "dimensions [Analysis Services], Business Intelligence enhancements"
  - "ordering dimensions [Analysis Services]"
  - "OrderByAttributeID property"
ms.assetid: c42fbd58-244d-4e0a-b715-6f919cbc3ad9
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# BI Wizard - Define the Ordering for a Dimension
  Add the attribute ordering enhancement to a cube or dimension to specify how the members of an attribute are ordered. Members can be ordered by the name or the key of the attribute, or by the name or the key of another attribute (based on an attribute relationship). By default, members are ordered by the name. This enhancement changes the **OrderBy** and **OrderByAttributeID** property settings for attributes in a dimension.  
  
 To add attribute ordering, you use the Business Intelligence Wizard, and select the **Specify attribute ordering** option on the **Choose Enhancement** page. This wizard then guides you through the steps of selecting a dimension to which you want to apply attribute ordering and specifying how to order the attributes for the selected dimension.  
  
## Selecting a Dimension  
 On the first **Specify Attribute Ordering** page of the wizard, you specify the dimension to which you want to apply attribute ordering. The attribute ordering enhancement added to this selected dimension will result in changes to the dimension. These changes will be inherited by all cubes that include the selected dimension.  
  
## Specifying Ordering  
 On the second **Specify Attribute Ordering** page of the wizard, you specify how all the attributes in the dimension will be ordered.  
  
 In the **Ordering Attribute** column, you can change the attribute used to do the ordering. If the attribute that you want to use to order members is not in the list, scroll down the list, and then select **\<New attribute...>** to open the **Select a Column** dialog box, where you can select a column in a dimension table. Selecting a column by using the **Select a Column** dialog box creates an additional attribute with which to order members of an attribute.  
  
 In the **Criteria** column, you can then select whether to order the members of the attribute by either **Key** or **Name**.  
  
  