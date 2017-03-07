---
title: "VarP (MDX) | Microsoft Docs"
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
  - "VARP"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "VarP function [MDX]"
ms.assetid: feca648d-bbc8-44c8-9a0e-38f66d914c72
caps.latest.revision: 30
ms.author: "owend"
manager: "erikre"
---
# VarP (MDX)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the population variance of a numeric expression evaluated over a set, using the biased population formula (dividing by *n*-1).  
  
## Syntax  
  
```  
  
VarP(Set_Expression [ ,Numeric_Expression ] )  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Numeric_Expression*  
 A valid numeric expression that is typically a Multidimensional Expressions (MDX) expression of cell coordinates that return a number.  
  
## Remarks  
 The **VarP** function returns the biased variance of a specified numeric expression, evaluated over a specified set.  
  
 The **VarP** function uses the biased population formula, while the [Var](../mdx/var-mdx.md) function uses the unbiased population formula.  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  