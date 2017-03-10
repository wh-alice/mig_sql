---
title: "Create Named Sets | Microsoft Docs"
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
  - "calculations [Analysis Services], named sets"
  - "named sets [Analysis Services]"
  - "members [Analysis Services], named sets"
ms.assetid: 03cf97a4-1a18-45f3-acb0-35123bd619be
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# Create Named Sets
  A named set is a set of dimension members or a set expression that is created for reuse, for example in Multidimensional Expressions (MDX) queries. You can create named sets by combining cube data, arithmetic operators, numbers, and functions. For example, you can create a named set called Top Ten Factories that contains the ten members of the Factories dimension that have the highest values for the Production measure. Top Ten Factories can then be used in queries by end users. For example, an end user can place Top Ten Factories on one axis and the Measures dimension, including Production, on another axis. For more information, see [Calculations in Multidimensional Models](../../analysis-services/multidimensional-models/calculations-in-multidimensional-models.md), and [Building Named Sets in MDX &#40;MDX&#41;](../../analysis-services/multidimensional-models/mdx/mdx-named-sets-building-named-sets.md).  
  
 To create a named set, use the **New Named Set** command on the **Calculations** tab of Cube Designer. This command can be invoked on the **Cube** menu on the **Calculations** tab toolbar. This command displays a form to specify the following options for the named set:  
  
 **Name**  
 Select the name of the named set. This name appears to end users when they browse the cube.  
  
 **Expression**  
 Specify the expression that produces the named set. This expression can be written in MDX. The expression can contain any of the following:  
  
-   Data expressions that represent cube components such as dimensions, levels, measures, and so on.  
  
-   Arithmetic operators.  
  
-   Numbers.  
  
-   Functions.  
  
 You can copy or drag cube components from the **Metadata** tab of the **Calculation Tools** pane to the **Expression** box in the **Named Set Form Editor** pane. You can copy or drag functions from the **Functions** tab in the **Calculation Tools** pane to the **Expression** box in the **Named Set Form Editor** pane.  
  
> [!IMPORTANT]  
>  If you create the set expression by explicitly naming the members in the set, enclose the list of members in a pair of braces ({}).  
  
## See Also  
 [Calculations in Multidimensional Models](../../analysis-services/multidimensional-models/calculations-in-multidimensional-models.md)  
  
  