---
title: "Data Mining Extensions (DMX) Statement Reference | Microsoft Docs"
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
  - "Data Mining Extensions [Analysis Services], statements"
  - "DMX [Analysis Services], statements"
  - "statements [DMX], reference"
  - "mining models [Analysis Services], training"
  - "mining structures [DMX]"
  - "mining models [Analysis Services], options"
  - "mining structures [DMX], options"
ms.assetid: 9cfa1db4-0f21-4fa3-8158-f94c48987e1b
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# Data Mining Extensions (DMX) Statements
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Working with data mining models in [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../analysis-services/includes/ssasnoversion-md.md)] involves the following primary tasks:  
  
-   Creating mining structures and mining models  
  
-   Processing mining structures and mining models  
  
-   Deleting or dropping mining structures or mining models  
  
-   Copying mining models  
  
-   Browsing mining models  
  
-   Predicting against mining models  
  
 You can use Data Mining Extensions (DMX) statements to perform each of these tasks programmatically.  
  
 Creating mining structures and mining models  
 Use the [CREATE MINING STRUCTURE &#40;DMX&#41;](../dmx/create-mining-structure-dmx.md) statement to add a new mining structure to a database. You can then use the [ALTER MINING STRUCTURE &#40;DMX&#41;](../dmx/alter-mining-structure-dmx.md) statement to add mining models to the mining structure.  
  
 Use the [CREATE MINING MODEL &#40;DMX&#41;](../dmx/create-mining-model-dmx.md) statement to build a new mining model and associated mining structure.  
  
 Processing mining structures and mining models  
 Use the [INSERT INTO &#40;DMX&#41;](../dmx/insert-into-dmx.md) statement to process a mining structure and mining model.  
  
 Deleting or dropping mining structures or mining models  
 Use the [DELETE &#40;DMX&#41;](../dmx/delete-dmx.md) statement to remove all the trained data from a mining model or mining structure. Use the [DROP MINING STRUCTURE &#40;DMX&#41;](../dmx/drop-mining-structure-dmx.md) or [DROP MINING MODEL &#40;DMX&#41;](../dmx/drop-mining-model-dmx.md) statements to completely remove a mining structure or mining model from a database.  
  
 Copying mining models  
 Use the [SELECT INTO &#40;DMX&#41;](../dmx/select-into-dmx.md) statement to copy the structure of an existing mining model into a new mining model and to train the new model with the same data.  
  
 Browsing mining models  
 Use the [SELECT &#40;DMX&#41;](../dmx/select-dmx.md) statement to browse the information that the data mining algorithm calculates and stores in the data mining model during model training. Much like with [!INCLUDE[tsql](../advanced-analytics/r-services/includes/tsql-md.md)], you can use several clauses with the SELECT statement, to extend its power. These clauses include [DISTINCT FROM \<model>](../dmx/select-distinct-from-model-dmx.md), [FROM \<model>.CASES](../dmx/select-from-model-.cases-dmx.md), [FROM \<model>.SAMPLE_CASES](../dmx/select-from-model-.sample-cases-dmx.md), [FROM \<model>.CONTENT](../dmx/select-from-model-.content-dmx.md) and [FROM \<model>.DIMENSION_CONTENT](../dmx/select-from-model-.dimension-content-dmx.md).  
  
 Predicting against mining models  
 Use the [PREDICTION JOIN](../dmx/select-from-model-prediction-join-dmx.md) clause of the SELECT statement to create predictions that are based on an existing mining model.  
  
 You can also import and export models by using the [IMPORT &#40;DMX&#41;](../dmx/import-dmx.md) and [EXPORT &#40;DMX&#41;](../dmx/export-dmx.md) statements.  
  
 These tasks fall into two categories, data definition statements and data manipulation statements, which are described in the following table.  
  
|Topic|Description|  
|-----------|-----------------|  
|[Data Mining Extensions &#40;DMX&#41; Data Definition Statements](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Data%20Definition%20Statements.md)|Part of the data definition language (DDL). Used to define a new mining model (including training) or to drop an existing mining model from a database.|  
|[Data Mining Extensions &#40;DMX&#41; Data Manipulation Statements](../Topic/Data%20Mining%20Extensions%20\(DMX\)%20Data%20Manipulation%20Statements.md)|Part of the data manipulation language (DML). Used to work with existing mining models, including browsing a model or creating predictions.|  
  
## See Also  
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Operator Reference](../dmx/data-mining-extensions-dmx-operator-reference.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Conventions](../dmx/data-mining-extensions-dmx-syntax-conventions.md)   
 [Data Mining Extensions &#40;DMX&#41; Syntax Elements](../dmx/data-mining-extensions-dmx-syntax-elements.md)  
  
  