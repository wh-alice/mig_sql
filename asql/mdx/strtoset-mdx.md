---
title: "StrToSet (MDX) | Microsoft Docs"
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
  - "STRTOSET"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "StrToSet function"
ms.assetid: 1700a563-6527-450a-8d3b-975c65bb6e51
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# StrToSet (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the set specified by a Multidimensional Expressions (MDX)–formatted string.  
  
## Syntax  
  
```  
  
StrToSet(Set_Specification [,CONSTRAINED] )   
```  
  
## Arguments  
 *Set_Specification*  
 A valid string expression specifying, directly or indirectly, a set.  
  
## Remarks  
 The **StrToSet** function returns the set specified in the string expression. The **StrToSet** function is typically used with user-defined functions to return a set specification from an external function back to an MDX statement, or when an MDX query is parameterized.  
  
-   When the CONSTRAINED flag is used, the set specification must contain qualified or unqualified member names or a set of tuples containing qualified or unqualified member names enclosed by braces {}. This flag is used to reduce the risk of injection attacks via the specified string. If a string is provided that is not directly resolvable to qualified or unqualified member names, the following error appears: "The restrictions imposed by the CONSTRAINED flag in the STRTOSET function were violated."  
  
-   When the CONSTRAINED flag is not used, the specified set specification can resolve to a valid Multidimensional Expressions (MDX) expression that returns a set.  
  
-   To better understand the differences between sets and members, see Using Set Expressions and Using Member Expressions.  
  
## Examples  
 The following example returns the set of members of the State-Province attribute hierarchy using the **StrToSet** function. The set specification provides a valid MDX set expression.  
  
```  
SELECT StrToSet ('[Geography].[State-Province].Members')  
ON 0  
FROM [Adventure Works]  
  
```  
  
 The following example returns an error due to the CONSTRAINED flag. While the set specification provides a valid MDX set expression, the CONSTRAINED flag requires qualified or unqualified member names in the set specification.  
  
```  
SELECT StrToSet ('[Geography].[State-Province].Members', CONSTRAINED)  
ON 0  
FROM [Adventure Works]  
  
```  
  
 The following example returns the Reseller Sales Amount measure for the countries of Germany and Canada. The set specification provided in the specified string contains qualified member names, as required by the CONSTRAINED flag.  
  
```  
SELECT StrToSet ('{[Geography].[Geography].[Country].[Germany],[Geography].[Geography].[Country].[Canada]}', CONSTRAINED)  
ON 0  
FROM [Adventure Works]  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  