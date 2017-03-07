---
title: "Set Operators | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "set operators [MDX]"
ms.assetid: 83500d2e-44b3-49eb-a221-3ce5a58277a5
caps.latest.revision: 27
ms.author: "owend"
manager: "erikre"
---
# Set Operators
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  In Multidimensional Expressions (MDX), set operators perform operations on members or sets, and return a set. You often use set operators as an alternate to several set functions in MDX expressions.  
  
 MDX supports the set operators listed in the following table.  
  
|Operator|Description|  
|--------------|-----------------|  
|[- (Except)](../Topic/-%20\(Except\)%20\(MDX\).md)|Returns the difference between two sets, removing duplicate members.<br /><br /> This operator is functionally equivalent to the [Except](../Topic/Except%20\(MDX\).md) function.|  
|[* (Crossjoin)](../Topic/*%20\(Crossjoin\)%20\(MDX\).md)|Returns the cross product of two sets.<br /><br /> This operator is functionally equivalent to the [Crossjoin](../mdx/crossjoin-mdx.md) function.|  
|[: (Range)](../mdx/range-mdx.md)|Returns a naturally ordered set, with the two specified members as endpoints and all members between the two specified members included as members of the set.|  
|[+ (Union)](../Topic/+%20\(Union\)%20\(MDX\).md)|Returns a union of two sets, excluding duplicate members.<br /><br /> This operator is functionally equivalent to the [Union  &#40;MDX&#41;](../mdx/union-mdx.md) function.|  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)   
 [MDX Operator Reference &#40;MDX&#41;](../mdx/mdx-operator-reference-mdx.md)   
 [Operators &#40;MDX Syntax&#41;](../mdx/operators-mdx-syntax.md)  
  
  