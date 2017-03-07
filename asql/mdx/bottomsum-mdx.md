---
title: "BottomSum (MDX) | Microsoft Docs"
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
  - "BOTTOMSUM"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "BottomSum function"
ms.assetid: b3b10e68-2a36-4c38-85f4-3bb7917d5ae8
caps.latest.revision: 39
ms.author: "owend"
manager: "erikre"
---
# BottomSum (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Sorts a specified set in ascending order, and returns a set of tuples with the lowest values whose sum is equal to or less than a specified value.  
  
## Syntax  
  
```  
  
BottomSum(Set_Expression, Value, Numeric_Expression)  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Value*  
 A valid numeric expression that specifies the value against which each tuple is compared.  
  
 *Numeric_Expression*  
 A valid numeric expression that is typically a Multidimensional Expressions (MDX) expression of cell coordinates that return a number.  
  
## Remarks  
 The **BottomSum** function calculates the sum of a specified measure evaluated over a specified set, sorting the set in ascending order. The function then returns the elements with the lowest values whose total of the specified numeric expression is at least the specified value (sum). This function returns the smallest subset of a set whose cumulative total is at least the specified value. The returned elements are ordered smallest to largest.  
  
> [!IMPORTANT]  
>  The **BottomSum** function, like the [TopSum](../mdx/topsum-mdx.md) function, always breaks the hierarchy.  
  
## Examples  
 The following example returns, for the Bike category, the smallest set of members of the City level in the Geography hierarchy in the Geography dimension for fiscal year 2003, and whose cumulative total, using the Reseller Sales Amount measure, is at least the sum of 50,000 (beginning with the members of this set with the smallest number of sales):  
  
 `SELECT`  
  
 `[Product].[Product Categories].Bikes ON 0,`  
  
 `BottomSum`  
  
 `({[Geography].[Geography].[City].Members}`  
  
 `, 50000`  
  
 `, ([Measures].[Reseller Sales Amount],[Product].[Product Categories].Bikes)`  
  
 `) ON 1`  
  
 `FROM [Adventure Works]`  
  
 `WHERE([Measures].[Reseller Sales Amount],[Date].[Fiscal].[Fiscal Year].[FY 2003])`  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  