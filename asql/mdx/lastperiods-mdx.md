---
title: "LastPeriods (MDX) | Microsoft Docs"
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
  - "LASTPERIODS"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "LastPeriods function"
ms.assetid: a15df7a1-b261-48ed-aacc-d2804db8dbf7
caps.latest.revision: 34
ms.author: "owend"
manager: "erikre"
---
# LastPeriods (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a set of members up to and including a specified member.  
  
## Syntax  
  
```  
  
LastPeriods(Index [ ,Member_Expression ] )  
```  
  
## Arguments  
 *Index*  
 A valid numeric expression that specifies a number of periods.  
  
 *Member_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a member.  
  
## Remarks  
 If the specified number of periods is positive, the **LastPeriods** function returns a set of members that start with the member that lags *Index* - 1 from the specified member expression, and ends with the specified member. The number of members returned by the function is equal to *Index*.  
  
 If the specified number of periods is negative, the **LastPeriods** function returns a set of members that start with the specified member and ends with the member that leads (- *Index* - 1) from the specified member. The number of members returned by the function is equal to the absolute value of *Index*.  
  
 If the specified number of periods is zero, the **LastPeriods** function returns the empty set. This is unlike the **Lag** function, which returns the specified member if 0 is specified.  
  
 If a member is not specified, the **LastPeriods** function uses **Time.CurrentMember**. If no dimension is marked as a Time dimension, the function will parse and execute without an error, but will cause a cell error in the client application.  
  
## Examples  
 The following example returns the default measure value for the second third, and fourth fiscal quarters of fiscal year 2002.  
  
```  
SELECT LastPeriods(3,[Date].[Fiscal].[Fiscal Quarter].[Q4 FY 2002]) ON 0  
FROM [Adventure Works]  
```  
  
> [!NOTE]  
>  This example can also be written using the : (colon) operator:  
>   
>  `[Date].[Fiscal].[Fiscal Quarter].[Q4 FY 2002]: [Date].[Fiscal].[Fiscal Quarter].[Q2 FY 2002]`  
  
 The following example returns the default measure value for the first fiscal quarter of fiscal year 2002. Although the specified number of periods is three, only one can be returned because there are no earlier periods in the fiscal year.  
  
```  
SELECT LastPeriods  
   (3,[Date].[Fiscal].[Fiscal Quarter].[Q1 FY 2002]  
   ) ON 0  
FROM [Adventure Works]  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  