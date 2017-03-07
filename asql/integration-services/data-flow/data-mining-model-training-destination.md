---
title: "Data Mining Model Training Destination | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.dataminingmodeltrainingdest.f1"
helpviewer_keywords: 
  - "destinations [Integration Services], Data Mining Model Training"
  - "Data Mining Model Training destination"
  - "mining models [Analysis Services], training"
  - "training mining models"
ms.assetid: 6bc8cbe2-46af-4f7b-93d6-86779313c9d7
caps.latest.revision: 46
ms.author: "douglasl"
manager: "jhubbard"
---
# Data Mining Model Training Destination
  The Data Mining Model Training destination trains data mining models by passing the data that the destination receives through the data mining model algorithms. Multiple data mining models can be trained by one destination if the models are built on the same data mining structure. For more information, see [Mining Structure Columns](../../analysis-services/data-mining/mining-structure-columns.md) and [Mining Model Columns](../../analysis-services/data-mining/mining-model-columns.md).  
  
## Configuration of the Data Mining Model Training Destination  
 If a case level column of the target structure and the models built on the structure has the content type KEY TIME or KEY SEQUENCE, the input data must be sorted on that column. For example, models built using the Microsoft Time Series algorithm use the content type KEY TIME. If input data is not sorted, the processing of the model may fail. If the data requires sorting, you can use a Sort transformation earlier in the data flow to sort the data. This requirement does not apply to columns with the KEY content type. For more information, see [Content Types &#40;Data Mining&#41;](../../analysis-services/data-mining/content-types-data-mining.md) and [Sort Transformation](../../integration-services/data-flow/transformations/sort-transformation.md).  
  
> [!NOTE]  
>  The input to the Data Mining Model training destination must be sorted. To sort the data, you can include a Sort destination upstream from the Data Mining Model Training destination in the data flow. For more information, see [Sort Transformation](../../integration-services/data-flow/transformations/sort-transformation.md).  
  
 This destination has one input and no output.  
  
 The Data Mining Model Training destination uses an [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] connection manager to connect to the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project or the instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] that contains the mining structure and mining models that the destination trains. For more information, see [Analysis Services Connection Manager](../../integration-services/connection-manager/analysis-services-connection-manager.md).  
  
 You can set properties through [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in the **Data Mining Model Training Editor** dialog box, click one of the following topics:  
  
-   [Data Mining Model Training Editor &#40;Connection Tab&#41;](../../integration-services/data-flow/data-mining-model-training-editor-connection-tab.md)  
  
-   [Data Mining Model Training Editor &#40;Columns Tab&#41;](../../integration-services/data-flow/data-mining-model-training-editor-columns-tab.md)  
  
 The **Advanced Editor** dialog box reflects the properties that can be set programmatically. For more information about the properties that you can set in the **Advanced Editor** dialog box or programmatically, click one of the following topics:  
  
-   [Common Properties](../Topic/Common%20Properties.md)  
  
-   [Data Mining Model Training Destination Custom Properties](../../integration-services/data-flow/data-mining-model-training-destination-custom-properties.md)  
  
 For more information about how to set properties, see [Set the Properties of a Data Flow Component](../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md).  
  
  