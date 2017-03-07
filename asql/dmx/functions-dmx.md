---
title: "Functions (DMX) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "DMX [Analysis Services], functions"
  - "VBA [DMX]"
  - "stored procedures [DMX]"
  - "functions [DMX]"
  - "Excel [DMX]"
  - "Data Mining Extensions [Analysis Services], functions"
ms.assetid: 75ab6346-f4a4-4699-90f3-66d35f930ed7
caps.latest.revision: 39
ms.author: "owend"
manager: "erikre"
---
# Functions (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  When you use Data Mining Extensions (DMX) to query objects in [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)], you can use functions to return more information than just the values in the columns in the data mining model or input dataset. For example, you can use DMX queries to return not only the prediction value of a column, but also the probability that the prediction is correct. You can use not only DMX functions, but also functions from Microsoft Visual Basic for Applications (VBA), Microsoft Excel, and stored procedures.  
  
## DMX Functions  
 You can use DMX functions to perform the following tasks:  
  
-   Return predictions.  
  
-   Return statistics about a prediction such as the probability and support.  
  
-   Filter your query results.  
  
-   Reorder a table expression.  
  
 Most DMX functions return a scalar value, such as the support for a prediction, but some return a tabular result. For example, the PredictHistogram function returns a table that contains the support and probability for each state of the specified predictable column. The results are displayed as a new tabular column.  
  
 **For More Information:** [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md), [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)  
  
## Visual Basic for Applications (VBA) and Excel Functions  
 In addition to DMX functions, you can also call a variety of VBA and Excel functions from DMX statements. For example, you can use the lCase function to modify how the Attribute_Name column in the TM_Decision_Tree model content is displayed. This is shown in the following code sample.  
  
```  
SELECT lCase([Attribute_Name])   
FROM [TM_Decision_Tree].CONTENT  
```  
  
 If the same function exists in both VBA and Excel, you must prefix the function name in your DMX statement with either **VBA** or **Excel**. For example, you would use `VBA!Log` or `Excel!Log`. If the VBA or Excel function that you want to use also exists in DMX or Multidimensional Expressions (MDX), or if the function contains a dollar sign character ($), you must use square brackets ([]) to escape the function. For example, the function call would be `[VBA!Format]`.  
  
## Stored Procedures  
 You can use common language runtime programming languages to create stored procedures that extend the functionality of DMX. For example, a regression tree mining model returns coefficients, such as A, B, and so on, that describe the regression equation, but the model does not return the equation itself, such as A+Bx = y. However, you can write a stored procedure that uses the data mining model object to navigate the content schema, and to return the regression equation as an output. Therefore, a DMX statement can return a list of the regression equations as part of a query result.  
  
 **For More Information:** [Multidimensional Model Assemblies Management](../analysis-services/multidimensional-models/multidimensional-model-assemblies-management.md)  
  
## See Also  
 [Data Mining Extensions &#40;DMX&#41; Reference](../dmx/data-mining-extensions-dmx-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Operator Reference](../dmx/data-mining-extensions-dmx-operator-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Statement%20Reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Conventions](../dmx/data-mining-extensions-dmx-syntax-conventions.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Elements](../dmx/data-mining-extensions-dmx-syntax-elements.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)   
 [Structure and Usage of DMX Prediction Queries](../dmx/structure-and-usage-of-dmx-prediction-queries.md)   
 [Understanding the DMX Select Statement](../dmx/understanding-the-dmx-select-statement.md)  
  
  