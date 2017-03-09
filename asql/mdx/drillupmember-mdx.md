---
title: "DrillupMember (MDX) | Microsoft Docs"
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
  - "DRILLUPMEMBER"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "DrillupMember function"
ms.assetid: debcd966-ea4e-4ecf-8600-0a4d346d03f8
caps.latest.revision: 40
ms.author: "owend"
manager: "erikre"
---
# DrillupMember (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the members in a specified set that are not descendants of members in a second specified set.  
  
## Syntax  
  
```  
  
DrillupMember(Set_Expression1, Set_Expression2)   
```  
  
## Arguments  
 *Set_Expression1*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Set_Expression2*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
## Remarks  
 The **DrillupMember** function returns a set of members based on the members specified in the first set that are descendants of members in the second set. The first set can have any dimensionality, but the second set must contain a one-dimensional set. Order is preserved among the original members in the first set. The function constructs the set by including only those members in the first set that are immediate descendants of members in the second set. If the immediate ancestor of a member in the first set is not present in the second set, the member in the first set is included in the set returned by this function. Descendants in the first set that precede an ancestor member in the second set are also included.  
  
 The first set can contain tuples instead of members. Tuple drilldown is an extension of OLE DB, and returns a set of tuples instead of members.  
  
> [!IMPORTANT]  
>  A member will get drilled up only if it is immediately followed by a child or a descendant. The order of members in the set matters for both the Drilldown\* and Drillup\* families of functions. Consider using the **Hierarchize** function to appropriately order the members of the first set.  
  
## Example  
 The following three examples are identical except for the second set. In the first example, the second set is the United States. As a result, Colorado is excluded from the result set. It is a descendant of United States.  
  
```  
SELECT DrillUpMember (   
  { [Geography].[Geography].[Country].[Canada]   
   ,[Geography].[Geography].[Country].[United States]   
   ,[Geography].[Geography].[State-Province].[Colorado]   
   ,[Geography].[Geography].[State-Province].[Alberta]   
   ,[Geography].[Geography].[State-Province].[Brunswick]    
 }   
 , {[Geography].[Geography].[Country].[United States]}   
 ) ON 0   
FROM [Adventure Works]  
```  
  
 Example two shows us the importance of member order. Since **DrillupMember** only drills up on those members that are followed immediately by descendants in the first set, it does not drill up on the Canada member. Canada is separated from its descendants by United States and Colorado. If you reorder the members so that Canada is directly above Alberta, then both Alberta and Brunswick are excluded from the rowset.  
  
```  
SELECT DrillUpMember (   
 {  [Geography].[Geography].[Country].[Canada]   
   ,[Geography].[Geography].[Country].[United States]   
   ,[Geography].[Geography].[State-Province].[Colorado]   
   ,[Geography].[Geography].[State-Province].[Alberta]   
   ,[Geography].[Geography].[State-Province].[Brunswick]    
 }   
 , {[Geography].[Geography].[Country].[Canada]}   
 )   
ON 0   
FROM [Adventure Works]  
```  
  
 Example three shows how the use of **Hierarchize** can mitigate the effects of member order, and drills up on the Canada member.  
  
```  
SELECT DrillUpMember (   
 Hierarchize   
  (   
   { [Geography].[Geography].[Country].[Canada]   
    ,[Geography].[Geography].[Country].[United States]   
    ,[Geography].[Geography].[State-Province].[Colorado]   
    ,[Geography].[Geography].[State-Province].[Alberta]   
    ,[Geography].[Geography].[State-Province].[Brunswick]    
   }   
  ), {[Geography].[Geography].[Country].[Canada]}   
 )   
ON 0   
FROM [Adventure Works]  
  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  