---
title: "Union All Transformation | Microsoft Docs"
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
  - "sql13.dts.designer.unionalltrans.f1"
helpviewer_keywords: 
  - "merging datasets [Integration Services]"
  - "combining datasets"
  - "Union All transformation"
  - "datasets [Integration Services], merging"
ms.assetid: 942e4b90-9c41-4e9c-a6f3-80b3afe57f2f
caps.latest.revision: 39
ms.author: "douglasl"
manager: "jhubbard"
---
# Union All Transformation
  The Union All transformation combines multiple inputs into one output. For example, the outputs from five different Flat File sources can be inputs to the Union All transformation and combined into one output.  
  
## Inputs and Outputs  
 The transformation inputs are added to the transformation output one after the other; no reordering of rows occurs. If the package requires a sorted output, you should use the Merge transformation instead of the Union All transformation.  
  
 The first input that you connect to the Union All transformation is the input from which the transformation creates the transformation output. The columns in the inputs you subsequently connect to the transformation are mapped to the columns in the transformation output.  
  
 To merge inputs, you map columns in the inputs to columns in the output. A column from at least one input must be mapped to each output column. The mapping between two columns requires that the metadata of the columns match. For example, the mapped columns must have the same data type.  
  
 If the mapped columns contain string data and the output column is shorter in length than the input column, the output column is automatically increased in length to contain the input column. Input columns that are not mapped to output columns are set to null values in the output columns.  
  
 This transformation has multiple inputs and one output. It does not support an error output.  
  
## Configuration of the Union All Transformation  
 You can set properties through [!INCLUDE[ssIS](../../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in the **Union All Transformation Editor** dialog box, see [Union All Transformation Editor](../../../integration-services/data-flow/transformations/union-all-transformation-editor.md).  
  
 For more information about the properties that you can set programmatically, see [Common Properties](http://msdn.microsoft.com/en-US/library/ms135950(SQL.130).aspx).  
  
 For more information about how to set properties, click one of the following topics:  
  
-   [Set the Properties of a Data Flow Component](../../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md)  
  
## Related Tasks  
 [Merge Data by Using the Union All Transformation](../../../integration-services/data-flow/transformations/merge-data-by-using-the-union-all-transformation.md)  
  
  