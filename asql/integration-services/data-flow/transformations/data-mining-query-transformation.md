---
title: "Data Mining Query Transformation | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.dataminingquerytrans.f1"
helpviewer_keywords: 
  - "Data Mining Query transformation"
  - "prediction queries [Integration Services]"
ms.assetid: 7960133b-a3e1-48af-ba43-55ed78c38e71
caps.latest.revision: 43
ms.author: "douglasl"
manager: "jhubbard"
---
# Data Mining Query Transformation
  The Data Mining Query transformation performs prediction queries against data mining models. This transformation contains a query builder for creating Data Mining Extensions (DMX) queries. The query builder lets you create custom statements for evaluating the transformation input data against an existing mining model using the DMX language. For more information, see [Data Mining Extensions &#40;DMX&#41; Reference](../../../dmx/data-mining-extensions-dmx-reference.md).  
  
 One transformation can execute multiple prediction queries if the models are built on the same data mining structure. For more information, see [Data Mining Query Tools](../../../analysis-services/data-mining/data-mining-query-tools.md).  
  
## Configuration of the Data Mining Query Transformation  
 The Data Mining Query transformation uses an [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] connection manager to connect to the [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] project or the instance of [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] that contains the mining structure and mining models. For more information, see [Analysis Services Connection Manager](../../../integration-services/connection-manager/analysis-services-connection-manager.md).  
  
 This transformation has one input and one output. It does not support an error output.  
  
 You can set properties through [!INCLUDE[ssIS](../../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in the **Data Mining Query Transformation Editor** dialog box, click one of the following topics:  
  
-   [Data Mining Query Transformation Editor &#40;Mining Model Tab&#41;](../../../integration-services/data-flow/transformations/data-mining-query-transformation-editor-mining-model-tab.md)  
  
-   [Data Mining Query Transformation Editor &#40;Mining Model Tab&#41;](../../../integration-services/data-flow/transformations/data-mining-query-transformation-editor-mining-model-tab.md)  
  
 The **Advanced Editor** dialog box reflects the properties that can be set programmatically. For more information about the properties that you can set in the **Advanced Editor** dialog box or programmatically, click one of the following topics:  
  
-   [Common Properties](http://msdn.microsoft.com/library/51973502-5cc6-4125-9fce-e60fa1b7b796)  
  
-   [Transformation Custom Properties](../../../integration-services/data-flow/transformations/transformation-custom-properties.md)  
  
 For more information about how to set properties, see [Set the Properties of a Data Flow Component](../../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md).  
  
  