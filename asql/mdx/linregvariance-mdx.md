---
title: "LinRegVariance (MDX) | Microsoft Docs"
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
  - "LINREGVARIANCE"
dev_langs: 
  - "kbMDX"
helpviewer_keywords: 
  - "LinRegVariance function"
ms.assetid: 09803510-2d71-401b-970e-bbdcac06558d
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# LinRegVariance (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Calculates the linear regression of a set, and returns the variance associated with the regression line, y = ax + b.  
  
## Syntax  
  
```  
  
LinRegVariance(Set_Expression, Numeric_Expression_y [ ,Numeric_Expression_x ] ] )  
```  
  
## Arguments  
 *Set_Expression*  
 A valid Multidimensional Expressions (MDX) expression that returns a set.  
  
 *Numeric_Expression_y*  
 A valid numeric expression that is typically a Multidimensional Expressions (MDX) expression of cell coordinates that return a number that represents values for the y-axis.  
  
 *Numeric_Expression_x*  
 A valid numeric expression that is typically a Multidimensional Expressions (MDX) expression of cell coordinates that return a number that represents values for the x-axis.  
  
## Remarks  
 Linear regression, that uses the least-squares method, calculates the equation of a regression line (that is, the best-fit line for a series of points). The regression line has the following equation, where a is the slope and b is the intercept:  
  
 y = ax+b  
  
 The **LinRegVariance** function evaluates the specified setagainst the first numeric expression to obtain the values for the y-axis. The function then evaluates the specified setagainst the second numeric expression, if specified, to obtain the values for the x-axis. If the second numeric expressionis not specified, the function uses the current context of the cells in the specified set as the values for the x-axis. Not specifying the x-axis argument is frequently used with the Time dimension.  
  
 After obtaining the set of points, the **LinRegVariance** function returns the statistical variance that describes the fit of the linear equation to the points.  
  
> [!NOTE]  
>  The **LinRegVariance** function ignores empty cells or cells that contain text or logical values. However, the function includes cells with values of zero.  
  
## Example  
 The following example returns the statistical variance that describes the fit of the linear equation to the points for the unit sales and the store sales measures.  
  
```  
LinRegVariance(LastPeriods(10),[Measures].[Unit Sales],[Measures].[Store Sales])  
```  
  
## See Also  
 [MDX Function Reference &#40;MDX&#41;](../mdx/mdx-function-reference-mdx.md)  
  
  