---
title: "Head (MDX) | Microsoft Docs"
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
  - "HEAD"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "Head function"
ms.assetid: 2a909bda-1366-4537-93b0-c089554fc11f
caps.latest.revision: 35
ms.author: "owend"
manager: "erikre"
---
# Head (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the first specified number of elements in a set, while retaining duplicates.  
  
## Syntax  
  
```  
  
Head(Set_Expression [ ,Count ] )  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Count*  
 A valid numeric expression that specifies the number of tuples to be returned.  
  
## Remarks  
 The **Head** function returns the specified number of tuples from the beginning of the specified set. The order of elements is preserved. The default value of Count is 1. If the specified number of tuples is less than 1, the **Head** function returns an empty set. If the specified number of tuples exceeds the number of tuples in the set, the function returns the original set.  
  
## Example  
 The following example returns top five selling subcategories of products, irrespective of hierarchy, based on Reseller Gross Profit. The **Head** function is used to return only the first 5 sets in the result after the result is ordered using the **Order** function.  
  
```  
SELECT   
[Measures].[Reseller Gross Profit] ON 0,  
Head  
   (Order   
      ([Product].[Product Categories].[SubCategory].members  
         ,[Measures].[Reseller Gross Profit]  
         ,BDESC  
      )  
   ,5  
   ) ON 1  
FROM [Adventure Works]  
```  
  
## See Also  
 [Tail &#40;MDX&#41;](../mdx/tail-mdx.md)   
 [Item &#40;Tuple&#41; &#40;MDX&#41;](../mdx/item-tuple-mdx.md)   
 [Item &#40;Member&#41; &#40;MDX&#41;](../mdx/item-member-mdx.md)   
 [Rank &#40;MDX&#41;](../mdx/rank-mdx.md)   
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  