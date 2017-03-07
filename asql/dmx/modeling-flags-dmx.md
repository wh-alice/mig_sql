---
title: "Modeling Flags (DMX) | Microsoft Docs"
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
  - "REGRESSOR flag"
  - "DMX [Analysis Services], modeling flags"
  - "MODEL_EXISTENCE_ONLY flag"
  - "modeling flags [DMX]"
  - "Data Mining Extensions [Analysis Services], modeling flags"
  - "flags [DMX]"
  - "NOT NULL flag"
ms.assetid: 498d25f7-9597-47ae-8717-61ddd1d2fd15
caps.latest.revision: 35
ms.author: "owend"
manager: "erikre"
---
# Modeling Flags (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  You can use modeling flags in [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] to provide additional information to a data mining algorithm about the data that is defined in a case table. The algorithm can use this information to build a more accurate data mining model. You can define modeling flags on both mining structure columns and mining model columns.  
  
 [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] supports the following modeling flags:  
  
 **NOT NULL**  
 The values for the attribute column should never contain a null value. An error will result if [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] encounters a null value for this attribute column during the model training process. This flag is defined on a mining structure column.  
  
 **REGRESSOR**  
 Indicates that the algorithm can use the specified column in the regression formula of regression algorithms. This flag is supported by the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Linear Regression and [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Decision Trees algorithms, and is defined on a mining model column.  
  
 **MODEL_EXISTENCE_ONLY**  
 The values for the attribute column are less important than the presence of the attribute. This flag is defined on a mining model column.  
  
 Third-party algorithms may support additional modeling flags. To determine which modeling flags an algorithm supports, use the **SUPPORTED_MODELING_FLAGS** schema rowset. You can also query the mining services on the server to determine which modeling flags are supported for a particular algorithm. For example, the following query returns the modeling flags are supported for the Microsoft Linear Regression algorithm on the current server:  
  
```  
SELECT SUPPORTED_MODELING_FLAGS  
FROM $SYSTEM.DMSCHEMA_MINING_SERVICES  
WHERE SERVICE_NAME = 'Microsoft_Linear_Regression'  
```  
  
 Expected results:  
  
 NOT NULL,REGRESSOR  
  
## Specifying Modeling Flags on a Mining Model  
 For examples of the syntax that [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] supports for specifying a flag on a mining structure column, see [CREATE MINING STRUCTURE &#40;DMX&#41;](../dmx/create-mining-structure-dmx.md).  
  
 For an example of the syntax for specifying a modeling flga on a mining model column, see [ALTER MINING STRUCTURE &#40;DMX&#41;](../dmx/alter-mining-structure-dmx.md).  
  
 For more information about working with mining model columns, see [Mining Model Columns](../analysis-services/data-mining/mining-model-columns.md).  
  
## See Also  
 [Data Mining Algorithms &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/data-mining-algorithms-analysis-services-data-mining.md)   
 [Data Mining Extensions &#40;DMX&#41; Reference](../dmx/data-mining-extensions-dmx-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Elements](../dmx/data-mining-extensions-dmx-syntax-elements.md)   
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Operator Reference](../dmx/data-mining-extensions-dmx-operator-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../dmx/data-mining-extensions-dmx-statements.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Conventions](../dmx/data-mining-extensions-dmx-syntax-conventions.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)   
 [Structure and Usage of DMX Prediction Queries](../dmx/structure-and-usage-of-dmx-prediction-queries.md)   
 [Understanding the DMX Select Statement](../dmx/understanding-the-dmx-select-statement.md)  
  
  