---
title: "Using Stored Procedures (MDX) | Microsoft Docs"
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
  - "user-defined functions [MDX]"
  - "stored procedures [MDX]"
ms.assetid: 818fb2ad-f88b-4d0c-9f70-f378aed42e8e
caps.latest.revision: 27
ms.author: "owend"
manager: "erikre"
---
# Using Stored Procedures (MDX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  You can extend the functionality of [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] and Multidimensional Expressions (MDX) by writing .NET stored procedures or user-defined functions. For more information, see [ADOMD.NET Server Programming](../analysis-services/multidimensional-models-adomd-net-server/adomd.net-server-programming.md)  
  
 When you reference or call a stored procedure, you specify the function name followed by parentheses. Within the parentheses, you can specify expressions called arguments that provide the data to be passed into the parameters. When you call a function, you must supply argument values for all of the parameters, and you must specify the argument values in the same sequence in which the parameters are defined in the user-defined function.  
  
 The following example query assumes that you have an assembly named SampleAssembly registered on your [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] Server:  
  
```  
SELECT SampleAssembly.RandomSample([Geography].[State-Province].Members, 5) on ROWS,   
[Date].[Calendar].[Calendar Year] on COLUMNS  
FROM [Adventure Works]  
WHERE [Measures].[Reseller Freight Cost]  
```  
  
> [!NOTE]  
>  *Stored procedure* is the terminology used in [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)][!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] for these types of functions. Earlier versions of [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] called these types of functions as *user-defined functions*.  
  
## Types of stored procedures  
 [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] supports both COM and CLR assemblies. CLR assemblies are recommended because of the enhanced security available to CLR assemblies. If Microsoft Office Excel is installed on the server, Excel functions are also available.  
  
> [!NOTE]  
>  Microsoft Visual Basic for Applications (VBA) COM Assemblies are registered automatically.  
  
## See Also  
 [Functions &#40;MDX Syntax&#41;](../mdx/functions-mdx-syntax.md)  
  
  