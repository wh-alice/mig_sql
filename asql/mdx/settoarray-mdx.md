---
title: "SetToArray (MDX) | Microsoft Docs"
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
  - "SETTOARRAY"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "SetToArray function"
ms.assetid: e408c626-3a2a-4ce9-aeb4-247301334893
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# SetToArray (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Converts one or more sets to an array for use in a user-defined function.  
  
## Syntax  
  
```  
  
SetToArray(Set_Expression1 [ ,Set_Expression2,...n ][ ,Numeric_Expression ] )  
```  
  
## Arguments  
 *Set_Expression1*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Set_Expression2*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Numeric_Expression*  
 A valid numeric expression that is typically a Multidimensional Expressions (MDX) expression of cell coordinates that return a number.  
  
## Remarks  
 The **SetToArray** function converts one or more sets to an array for use in a user-defined function. The number of dimensions in the resulting array is the same as the number of sets specified.  
  
 The optional numeric expression can provide the values in the array cells. If a numeric expression is not specified, the cross join of the sets is evaluated in the current context.  
  
 The cell coordinates in the resulting array correspond to the position of the sets in the list. For example, there are three sets, `SA`, `SB`, and `SC`. Each of these sets has two elements. The MDX statement, `SetToArray(SA, SB, SC)`, creates the following three-dimensional array:  
  
```  
(SA1, SB1, SC1) (SA2, SB1, SC1) (SA1, SB2, SC1) (SA2, SB2, SC1)   
(SA1, SB1, SC2) (SA2, SB1, SC2) (SA1, SB2, SC2) (SA2, SB2, SC2)   
```  
  
> [!NOTE]  
>  The return type of the **SetToArray** function is the VARIANT type, VT_ARRAY. Therefore, the output of the **SetToArray** function should be used only as input to a user-defined function.  
  
## Example  
 The following example returns an array.  
  
```  
SetToArray([Geography].[Geography].Members, [Measures].[Internet Sales Amount])  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  