---
title: "Create a Currency type Dimension | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "dimensions [Analysis Services], currency"
  - "currency [Analysis Services]"
  - "converting currency"
  - "currency dimensions [Analysis Services]"
ms.assetid: b1f037d1-ce47-4e47-a1c2-5ec9e781cff6
caps.latest.revision: 16
ms.author: "owend"
manager: "erikre"
---
# Database Dimensions - Create a Currency type Dimension
  In [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], a currency type dimension is a dimension whose attributes represent a list of currencies for financial reporting purposes.  
  
 A currency dimension lets you add currency conversion capabilities to a cube in [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)]. To add currency conversion to a cube, you use the Business Intelligence Wizard define a Multidimensional Expressions (MDX) script command that converts currency measures to values that are appropriate for the locale of the client application. To create this MDX script, the Business Intelligence Wizard needs the following information:  
  
-   A currency dimension that represents source currencies. (This dimension is the source currency dimension.)  
  
-   A measure group that represents the exchange rates that will be used.  
  
 From this information, the Business Intelligence Wizard will design a currency conversion process that identifies the appropriate destination currency dimension (the currency dimension that represents destination currencies). Depending on the number of currency conversions that your business intelligence solution requires, the Business Intelligence Wizard can define multiple destination currency dimensions. For more information about defining currency conversions, see [Currency Conversions &#40;Analysis Services&#41;](../../analysis-services/currency-conversions-analysis-services.md).  
  
 To identify a dimension as a currency dimension, set the **Type** property of the dimension to **Currency**.  
  
## Dimension Structure  
 A currency dimension contains, at least, a key attribute identifying individual currencies in the dimension table for the currency dimension. The value of the key attribute is different in both source and destination currency dimensions:  
  
-   To identify an attribute as the key attribute of a source currency dimension, set the **Type** property of the attribute to **CurrencySource**.  
  
-   To identify an attribute as the destination currency dimension, set the **Type** property of the attribute to **CurrencyDestination**.  
  
 For reporting purposes, both source and destination currency dimensions can optionally contain the following attributes:  
  
-   A currency name attribute.  
  
     To identify an attribute as a currency name attribute, set the **Type** property of the attribute to **CurrencyName**.  
  
-   A currency source attribute.  
  
     To identify an attribute as a currency source attribute, set the **Type** property of the attribute to **CurrencySource**.  
  
-   A currency International Standards Organization (ISO) code.  
  
     To identify an attribute as a currency ISO code attribute, set the **Type** property of the attribute to **CurrencyIsoCode**.  
  
 For more information about attribute types, see [Configure Attribute Types](../Topic/Configure%20Attribute%20Types.md).  
  
## Defining Account Intelligence with the Business Intelligence Wizard  
 After you have defined an account dimension and added that dimension to a cube, you can use the Business Intelligence Wizard to add account intelligence functionality, such as identifying and mapping account types, to the dimension. For more information, see [Add Account Intelligence to a Dimension](../Topic/Add%20Account%20Intelligence%20to%20a%20Dimension.md).  
  
## See Also  
 [Attributes and Attribute Hierarchies](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/attributes-and-attribute-hierarchies.md)   
 [Business Intelligence Wizard F1 Help](../Topic/Business%20Intelligence%20Wizard%20F1%20Help.md)   
 [Dimension Types](../Topic/Dimension%20Types.md)  
  
  