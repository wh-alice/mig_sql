---
title: "StrToMember (MDX) | Microsoft Docs"
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
  - "STRTOMEMBER"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "StrToMember function"
ms.assetid: eb8a3dc0-5ae4-434e-b321-680a81a59e67
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# StrToMember (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the member specified by a Multidimensional Expressions (MDX)–formatted string.  
  
## Syntax  
  
```  
  
StrToMember(Member_Name [,CONSTRAINED] )   
```  
  
## Arguments  
 *Member_Name*  
 A valid string expression specifying, directly or indirectly, a member.  
  
## Remarks  
 The **StrToMember** function returns the member specified in the string expression. The **StrToMember** function is typically used with user-defined functions to return a member specification from an external function back to an MDX statement, or when an MDX query is parameterized.  
  
-   When the CONSTRAINED flag is used, the member name must be directly resolvable to a qualified or unqualified member name. This flag is used to reduce the risk of injection attacks via the specified string. If a string is provided that is not directly resolvable to a qualified or unqualified member name, the following error appears: "The restrictions imposed by the CONSTRAINED flag in the STRTOMEMBER function were violated."  
  
-   When the CONSTRAINED flag is not used, the specified member can resolve either directly to a member name or can resolve to an MDX expression that resolves to a name.  
  
-   To better understand the differences between sets and members, see Using Set Expressions and Using Member Expressions.  
  
## Examples  
 The following example returns the Reseller Sales Amount measure for the Bayern member in the State-Province attribute hierarchy using the **StrToMember** function. The specified string provided the qualified member name.  
  
```  
SELECT {StrToMember ('[Geography].[State-Province].[Bayern]')}  
ON 0,  
{[Measures].[Reseller Sales Amount]} ON 1  
FROM [Adventure Works]  
  
```  
  
 The following example returns the Reseller Sales Amount measure for the Bayern member using the **StrToMember** function. Since the member name string provided only an unqualified member name, the query returns the first instance of the specified member, which happens to be in the Customer Geography hierarchy in the Customer dimension, which does not intersect with the Reseller Sales. Best practices dictate specifying the qualified name to ensure expected results.  
  
```  
SELECT {StrToMember ('[Bayern]').Parent}  
ON 0,  
{[Measures].[Reseller Sales Amount]} ON 1  
FROM [Adventure Works]  
  
```  
  
 The following example returns the Reseller Sales Amount measure for the Bayern member in the State-Province attribute hierarchy using the **StrToMember** function. The member name string provided resolves to a qualified member name.  
  
```  
SELECT {StrToMember('[Geography].[Geography].[Country].[Germany].FirstChild', CONSTRAINED)}  
ON 0,  
{[Measures].[Reseller Sales Amount]} ON 1  
FROM [Adventure Works]  
  
```  
  
 The following example returns an error due to the CONSTRAINED flag. While the member name string provided contains a valid MDX member expression that resolves to a qualified member name, the CONSTRAINED flag requires qualified or unqualified member names in the member name string.  
  
```  
SELECT StrToMember ('[Geography].[Geography].[Country].[Germany].FirstChild', CONSTRAINED)  
ON 0  
FROM [Adventure Works]  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  