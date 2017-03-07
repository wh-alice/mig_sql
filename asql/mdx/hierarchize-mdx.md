---
title: "Hierarchize (MDX) | Microsoft Docs"
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
  - "HIERARCHIZE"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "Hierarchize function"
ms.assetid: e9795003-70e7-4b4c-9074-45b5b9b817fa
caps.latest.revision: 33
ms.author: "owend"
manager: "erikre"
---
# Hierarchize (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Orders the members of a set in a hierarchy.  
  
## Syntax  
  
```  
  
Hierarchize(Set_Expression [ , POST ] )  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
## Remarks  
 The **Hierarchize** function organizes the members of specified set into hierarchical order. The function always retains duplicates.  
  
-   If **POST** is not specified, the function sorts members in a level in their natural order. Their natural order is the default ordering of the members along the hierarchy when no other sort conditions are specified. Child members immediately follow their parent members.  
  
-   If **POST** is specified, the **Hierarchize** function sorts the members in a level using a post-natural order. In other words, child members precede their parents.  
  
## Example  
 The following example drills up on the Canada member. The **Hierarchize** function is used to organize the specified set members in hierarchical order, which is required by the **DrillUpMember** function.  
  
```  
SELECT DrillUpMember   
   (  
      Hierarchize  
         (  
            {[Geography].[Geography].[Country].[Canada]  
            ,[Geography].[Geography].[Country].[United States]  
            ,[Geography].[Geography].[State-Province].[Alberta]  
            ,[Geography].[Geography].[State-Province].[Brunswick]  
            ,[Geography].[Geography].[State-Province].[Colorado]   
            }  
         ), {[Geography].[Geography].[Country].[United States]}  
   )  
ON 0  
FROM [Adventure Works]  
```  
  
 The following example returns the sum of the `Measures.[Order Quantity]` member, aggregated over the first nine months of 2003 contained in the `Date` dimension, from the **Adventure Works** cube. The **PeriodsToDate** function defines the tuples in the set over which the Aggregate function operates. The **Hierarchize** function organizes the members of the specified set of members from the Product dimension in hierarchical order.  
  
```  
WITH MEMBER Measures.[Declining Reseller Sales] AS Count  
   (Filter  
      (Existing  
         (Reseller.Reseller.Reseller),   
            [Measures].[Reseller Sales Amount] <   
               ([Measures].[Reseller Sales Amount],[Date].Calendar.PrevMember)  
        )  
    )  
MEMBER [Geography].[State-Province].x AS Aggregate   
( {[Geography].[State-Province].&[WA]&[US],   
   [Geography].[State-Province].&[OR]&[US] }   
)  
SELECT NON EMPTY HIERARCHIZE   
   (AddCalculatedMembers   
      ({DrillDownLevel  
         ({[Product].[All Products]})}  
        )  
    ) DIMENSION PROPERTIES PARENT_UNIQUE_NAME ON COLUMNS   
FROM [Adventure Works]  
WHERE ([Geography].[State-Province].x,   
   [Date].[Calendar].[Calendar Quarter].&[2003]&[4],  
   [Measures].[Declining Reseller Sales])  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  