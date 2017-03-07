---
title: "Add an  Attribute to a Dimension | Microsoft Docs"
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
  - "adding attributes"
  - "automatic attribute creation"
  - "attributes [Analysis Services], creating"
  - "attributes [Analysis Services], adding"
  - "manual attribute creation [Analysis Services]"
ms.assetid: 25826ba1-2b38-4b34-bd3a-7eba116093ae
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# Attribute Properties - Add an  Attribute to a Dimension
  You can add an attribute to a dimension either automatically or manually in [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)].  
  
 To create an attribute automatically, on the **Dimension Structure** tab of Dimension Designer in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], select the column that you want to map to an attribute, and then drag that column from the **Data Source View** pane to the **Attributes** pane. This creates an attribute that is mapped to the column, and assigns the same name to the attribute as the name of the column. If an attribute that uses that name already exists, [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] adds an ordinal number suffix, starting with "1" for the first duplicate name.  
  
 To create an attribute manually, set the **Attributes** pane to grid view. In the name column of the last row in the grid, click the **\<new attribute>** item. Type a name for the new attribute. This creates an attribute that is not mapped to a column and that has default settings for all its properties. You can set the mapping in the **Properties** window of [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)] by configuring the **KeyColumns** property for the new attribute.  
  
 For more information, see [Define a New Attribute Automatically](../../analysis-services/multidimensional-models/attribute-properties-define-a-new-attribute-automatically.md), [Define a New Attribute Manually](../Topic/Define%20a%20New%20Attribute%20Manually.md), [Bind an Attribute to a Name Column](../../analysis-services/multidimensional-models/attribute-properties-bind-an-attribute-to-a-name-column.md), and [Modify the KeyColumn Property of an Attribute](../../analysis-services/multidimensional-models/attribute-properties-modify-the-keycolumn-property.md).  
  
## See Also  
 [Dimension Attribute Properties Reference](../../analysis-services/multidimensional-models/dimension-attribute-properties-reference.md)  
  
  