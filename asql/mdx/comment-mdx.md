---
title: "Comment (MDX) | Microsoft Docs"
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
  - "*/"
  - "/*"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "commenting characters"
  - "/*...*/ (comment)"
ms.assetid: 64434ae4-80ce-4634-86b8-4125dfaa7f61
caps.latest.revision: 40
ms.author: "owend"
manager: "erikre"
---
# Comment (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Indicates comment text that is provided by the user.  
  
## Syntax  
  
```  
  
/* Comment_Text */      
```  
  
#### Parameters  
 *Comment_Text*  
 The string that contains the text of the comment.  
  
## Remarks  
 The server does not evaluate the text between the comment characters, /* and \*/. Comments can be inserted on a separate line or within a Multidimensional Expressions (MDX) statement. Multiple-line comments must be indicated by /\* and \*/.  
  
 There is no maximum length for comments. Comments can be nested; for example, `/* Test /*Comment*/ Text*/` is an example of a nested comment.  
  
## Examples  
 The following example demonstrates the use of this operator.  
  
```  
/* This member returns the gross profit margin for product types  
  and reseller types crossjoined by year. */  
SELECT   
    [Date].[Calendar].[Calendar Year].Members *  
    [Reseller].[Reseller Type].Children ON 0,  
    [Product].[Category].[Category].Members ON 1  
FROM /* Select from the Adventure Works cube. */  
    [Adventure Works]  
WHERE  
    [Measures].[Gross Profit Margin]  
```  
  
## See Also  
 [&#40;Comment&#41; &#40;MDX&#41;](../Topic/\(Comment\)%20\(MDX\).md)   
 [-- &#40;Comment&#41; &#40;MDX&#41;](../Topic/--%20\(Comment\)%20\(MDX\).md)   
 [MDX Operator Reference &#40;MDX&#41;](../mdx/mdx-operator-reference-mdx.md)  
  
  