---
title: "Leaves (MDX) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "LEAVES"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "Leaves function"
ms.assetid: 09f908aa-1b2d-4af9-8c8d-c023915241b2
caps.latest.revision: 32
ms.author: "owend"
manager: "erikre"
---
# Leaves (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a set composed of all attributes (optionally limited to those belonging to a specific dimension). For each attribute x in the return set, if x is the granularity attribute or is directly or indirectly related to the granularity attribute, the granularity is set on attribute x without affecting the slice. The **Leaves** function is designed for use inside a SCOPE statement or at the left side of an assignment.  
  
## Syntax  
  
```  
  
Leaves( [ Dimension_expression ] )  
```  
  
## Arguments  
 *Dimension_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a dimension.  
  
## Remarks  
 Leaf members are tuples that are formed by the cross join of the lowest level of all attribute hierarchies. Calculated members are excluded.  
  
-   If a dimension name is specified, the **Leaves** function returns a set that contains the leaf members of the key attribute for the specified dimension.  
  
-   If the dimension is associated with multiple measure groups, that of the measure in the current scope is used.  
  
-   If a dimension name is not specified, the function returns a set that contains the leaf members of the entire cube.  
  
    > [!NOTE]  
    >  If the dimension expression resolves to a hierarchy, and the hierarchy unique name is the same as the dimension unique name (cube dimension property HierarchyUniqueNameStyle=ExcludeDimensionName, and the hierarchy name=dimension name), then the dimension is used.  
  
    > [!IMPORTANT]  
    >  An error is generated if not all attributes have same granularity on measure groups in current scope.  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  