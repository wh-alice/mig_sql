---
title: "Median (MDX) | Microsoft Docs"
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
  - "MEDIAN"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "Median function"
ms.assetid: 7a326a3f-0123-45c4-9b18-31f83b90d986
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# Median (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the median value of a numeric expression that is evaluated over a set.  
  
## Syntax  
  
```  
  
Median(Set_Expression [ ,Numeric_Expression ] )  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Numeric_Expression*  
 A valid numeric expression that is typically a Multidimensional Expressions (MDX) expression of cell coordinates that return a number.  
  
## Remarks  
 If a numeric expression is specified, the specified numeric expression is evaluated across the set and then returns the median value from that evaluation. If a numeric expression is not specified, the specified set is evaluated in the current context of the members of the set and returns the median value from the evaluation.  
  
 The median value is the middle value in a set of ordered numbers. (The medial value is unlike the mean value, which is the sum of a set of numbers divided by the count of numbers in the set). The median value is determined by choosing the smallest value such that at least half of the values in the set are no greater than the chosen value. If the number of values within the set is odd, the median value corresponds to a single value. If the number of values within the set is even, the median value corresponds to the sum of the two middle values divided by two.  
  
> [!NOTE]  
>  [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] ignores nulls when calculating the median value in a set of ordered numbers.  
  
## Example  
 The following example returns the median monthly sales for each quarter, each subcategory, and each country in the Adventure Works cube.  
  
```  
WITH MEMBER Measures.x AS Median   
   ([Date].[Calendar].CurrentMember.Children  
      , [Measures].[Reseller Order Quantity]  
   )  
SELECT Measures.x ON 0  
,NON EMPTY [Date].[Calendar].[Calendar Quarter]*   
   [Product].[Product Categories].[Subcategory].members *  
   [Geography].[Geography].[Country].Members  
ON 1  
FROM [Adventure Works]  
  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  