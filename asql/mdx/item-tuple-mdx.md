---
title: "Item (Tuple) (MDX) | Microsoft Docs"
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
  - "ITEM"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "Item function"
ms.assetid: 9ee7af55-d5b5-47c8-a480-ef23878306af
caps.latest.revision: 37
ms.author: "owend"
manager: "erikre"
---
# Item (Tuple) (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a tuple from a set.  
  
## Syntax  
  
```  
  
Index syntax  
Set_Expression.Item(Index)  
  
String expression syntax  
Set_Expression.Item(String_Expression1 [ ,String_Expression2,...n])  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *String_Expression1*  
 A valid string expression that is a typically a tuple expressed in a string.  
  
 *String_Expression2*  
 A valid string expression that is a typically a tuple expressed in a string.  
  
 *Index*  
 A valid numeric expression that specifies the specific tuple by position within the set to be returned.  
  
## Remarks  
 The **Item** function returns a tuple from the specified set. There are three possible ways to call the **Item** function:  
  
-   If a single string expression is specified, the **Item** function returns the specified tuple. For example, "([2005].Q3, [Store05])".  
  
-   If more than one string expression is specified, the **Item** function returns the tuple defined by the specified coordinates. The number of strings must match the number of axis, and each string must identify a unique hierarchy. For example, "[2005].Q3", "[Store05]".  
  
-   If an integer is specified, the **Item** function returns the tuple that is in the zero-based position specified by *Index*.  
  
## Examples  
 The following example returns ([1996],Sales):  
  
 `{([1996],Sales), ([1997],Sales), ([1998],Sales)}.Item(0)`  
  
 The following example uses a level expression and returns the Internet Sales Amount for each State-Province in Australia and its percent of the total Internet Sales Amount for Australia. This example uses the Item function to extract the first (and only tuple) from the set returned by the **Ancestors** function.  
  
```  
WITH MEMBER Measures.x AS [Measures].[Internet Sales Amount] /   
   ( [Measures].[Internet Sales Amount],    
      Ancestors   
      ( [Customer].[Customer Geography].CurrentMember,  
        [Customer].[Customer Geography].[Country]  
      ).Item (0)  
   ), FORMAT_STRING = '0%'  
SELECT {[Measures].[Internet Sales Amount], Measures.x} ON 0,  
{ Descendants   
   ( [Customer].[Customer Geography].[Country].&[Australia],  
     [Customer].[Customer Geography].[State-Province], SELF   
   )   
} ON 1  
FROM [Adventure Works]  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  