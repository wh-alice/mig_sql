---
title: "Ancestor (MDX) | Microsoft Docs"
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
  - "ANCESTOR"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "Ancestor function"
ms.assetid: b5bf2ce4-20df-4ebc-97eb-e44a6f64cc50
caps.latest.revision: 46
ms.author: "owend"
manager: "erikre"
---
# Ancestor (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  A function that returns the ancestor of a specified member at a specified level or at a specified distance from the member.  
  
## Syntax  
  
```  
  
Level syntax  
Ancestor(Member_Expression, Level_Expression)  
  
Numeric syntax  
Ancestor(Member_Expression, Distance)  
```  
  
## Arguments  
 *Member_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a member.  
  
 *Level_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a level.  
  
 *Distance*  
 A valid numeric expression that specifies the distance from the specified member.  
  
## Remarks  
 With the **Ancestor** function, you provide the function with an MDX member expression and then provide either an MDX expression of a level that is an ancestor of the member or a numeric expression that represents the number of levels above that member. With this information, the **Ancestors** function returns the ancestor member at that level.  
  
> [!NOTE]  
>  To return a set containing the ancestor member, instead of just the ancestor member, use the [Ancestors &#40;MDX&#41;](../mdx/ancestors-mdx.md) function.  
  
 If a level expression is specified, the **Ancestor** function returns the ancestor of specified member at the specified level. If the specified member is not within the same hierarchy as specified level, the function returns an error.  
  
 If a distance is specified, the **Ancestor** function returns the ancestor of the specified member that is the number of steps specified up in the hierarchy specified by the member expression. A member may be specified as a member of an attribute hierarchy, a user-defined hierarchy, or in some cases, a parent-child hierarchy. A number of 1 returns a member's parent and a number of 2 returns a member's grandparent (if one exists). A number of 0 returns the member itself.  
  
> [!NOTE]  
>  Use this form of the **Ancestor** function for cases in which the level of the parent is unknown or cannot be named.  
  
## Examples  
 The following example uses a level expression and returns the Internet Sales Amount for each State-Province in Australia and its percent of the total Internet Sales Amount for Australia.  
  
```  
WITH MEMBER Measures.x AS [Measures].[Internet Sales Amount] /   
   (  
   [Measures].[Internet Sales Amount],    
      Ancestor   
         (  
         [Customer].[Customer Geography].CurrentMember,  
            [Customer].[Customer Geography].[Country]  
         )  
   ), FORMAT_STRING = '0%'  
SELECT {[Measures].[Internet Sales Amount], Measures.x} ON 0,  
{  
   Descendants   
      (  
        [Customer].[Customer Geography].[Country].&[Australia],  
           [Customer].[Customer Geography].[State-Province], SELF   
      )  
} ON 1  
FROM [Adventure Works]  
```  
  
 The following example uses a numeric expression and returns the Internet Sales Amount for each State-Province in Australia and its percent of the total Internet Sales Amount for all countries.  
  
```  
WITH MEMBER Measures.x AS [Measures].[Internet Sales Amount] /   
   (  
      [Measures].[Internet Sales Amount],  
         Ancestor   
            ([Customer].[Customer Geography].CurrentMember, 2)  
   ), FORMAT_STRING = '0%'  
SELECT {[Measures].[Internet Sales Amount], Measures.x} ON 0,  
{  
   Descendants   
      (  
         [Customer].[Customer Geography].[Country].&[Australia],  
            [Customer].[Customer Geography].[State-Province], SELF   
      )  
} ON 1  
FROM [Adventure Works]  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  