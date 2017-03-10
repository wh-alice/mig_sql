---
title: "Data in Data Flows | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "converting data types [Integration Services]"
  - "comparing data"
  - "data types [Integration Services], data flow"
  - "parsing [Integration Services]"
  - "string comparisons"
  - "data flow [Integration Services], data options"
ms.assetid: 8a9d6186-eb52-48e3-997e-021f24d458a3
caps.latest.revision: 42
ms.author: "douglasl"
manager: "jhubbard"
---
# Data in Data Flows
  [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] provides a set of data types that are used in data flows.  
  
## Data Type Conversion  
 The source that you add to a data flow converts the source data to [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] data types. Subsequent transformations may convert the data to different [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] data types, and depending on the type of data store into which data is loaded, destinations may convert the final [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] data type to the data type required by the destination data store. For more information, see [Integration Services Data Types](../../integration-services/data-flow/integration-services-data-types.md).  
  
 To convert the data to an [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] data type, a data flow component parses the data. [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] provides two types of data parsing: fast parse and standard parse. Most data flow components can use only standard parsing; however, the Flat File source and the Data Conversion transformation can use either fast parse or standard parse. For more information, see [Parsing Data](../../integration-services/data-flow/parsing-data.md).  
  
## Data Type Comparison  
 Many transformations compare data values. For example, the Aggregate transformation compares values for the purpose of aggregating values across a set of data rows, the Sort transformation compares values in order to sort them, and the Lookup transformation compares values against values in a separate reference table. To specify how strings should be compared, the transformation includes a set of comparison options such as whether to ignore case sensitivity, how to handle kana types in Japanese text, and whether to ignore white-space characters in the string. For more information, see [Comparing String Data](../../integration-services/data-flow/comparing-string-data.md).  
  
 The expression evaluator also compares data values when it evaluates the expressions that variables, precedence constraints, and transformations use.  
  
## Data Flow Troubleshooting  
 Once you have deployed a package to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] catalog, you can analyze the data flow in the package during execution to check performance or look for other issues. Standard reports are available that allow you to view package status and history, and you can query database views that provide detailed information about package execution. You also can dynamically add and remove data taps during execution to target specific components of your package. For more information, see [Analysis of Data Flow](../../integration-services/performance/analysis-of-data-flow.md).  
  
  