---
title: "Distributions (DMX) | Microsoft Docs"
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
  - "column distributions [DMX]"
  - "distributions [DMX]"
  - "DMX [Analysis Services], distributions"
  - "Data Mining Extensions [Analysis Services], distributions"
ms.assetid: cfbb9f38-ae71-401e-867f-15c6a2b6fb97
caps.latest.revision: 32
ms.author: "owend"
manager: "erikre"
---
# Distributions (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  In [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)], you can define the content of columns in a mining structure, to affect how algorithms process the data in those columns when you create mining models. For some algorithms, it is useful to define the distribution of any continuous columns before you process the model, if the columns are known to contain common distributions of values. If you do not define the distributions, the resulting mining models may produce less accurate predictions than if the distributions were defined, because the algorithms will have less information from which to interpret the data.  
  
 [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] data mining algorithms support the following distribution types:  
  
 **NORMAL**  
 The values for the continuous column form a histogram with a normal Gaussian distribution.  
  
 **Log Normal**  
 The values for the continuous column form a histogram, where the logarithm of the values is normally distributed.  
  
 **UNIFORM**  
 The values for the continuous column form a flat curve, in which all values are equally likely.  
  
 For more information about [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] data mining algorithms, see [Data Mining Algorithms &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/data-mining-algorithms-analysis-services-data-mining.md). Third-party algorithm providers may support additional distribution types. To determine which distribution types an algorithm supports, use the **SUPPORTED_DISTRIBUTION_FLAGS** schema rowset.  
  
 For more information about distribution types, see [Column Distributions &#40;Data Mining&#41;](../analysis-services/data-mining/column-distributions-data-mining.md).  
  
## See Also  
 [Content Types &#40;Data Mining&#41;](../analysis-services/data-mining/content-types-data-mining.md)   
 [Data Mining Extensions &#40;DMX&#41; Reference](../dmx/data-mining-extensions-dmx-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Elements](../dmx/data-mining-extensions-dmx-syntax-elements.md)   
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Operator Reference](../dmx/data-mining-extensions-dmx-operator-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Statement Reference](../dmx/data-mining-extensions-dmx-statements.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Conventions](../dmx/data-mining-extensions-dmx-syntax-conventions.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)   
 [Structure and Usage of DMX Prediction Queries](../dmx/structure-and-usage-of-dmx-prediction-queries.md)   
 [Understanding the DMX Select Statement](../dmx/understanding-the-dmx-select-statement.md)  
  
  