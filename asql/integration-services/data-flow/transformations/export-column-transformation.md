---
title: "Export Column Transformation | Microsoft Docs"
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
  - "sql13.dts.designer.exportcolumntrans.f1"
helpviewer_keywords: 
  - "exporting data"
  - "append options [Integration Services]"
  - "Export Column transformation [Integration Services]"
  - "columns [Integration Services], exporting"
  - "inserting data"
  - "truncate options [Integration Services]"
ms.assetid: 678d2dfc-e40c-4fbb-b2cc-42fffc44478a
caps.latest.revision: 45
ms.author: "douglasl"
manager: "jhubbard"
---
# Export Column Transformation
  The Export Column transformation reads data in a data flow and inserts the data into a file. For example, if the data flow contains product information, such as a picture of each product, you could use the Export Column transformation to save the images to files.  
  
## Append and Truncate Options  
 The following table describes how the settings for the append and truncate options affect results.  
  
|Append|Truncate|File exists|Results|  
|------------|--------------|-----------------|-------------|  
|False|False|No|The transformation creates a new file and writes the data to the file.|  
|True|False|No|The transformation creates a new file and writes the data to the file.|  
|False|True|No|The transformation creates a new file and writes the data to the file.|  
|True|True|No|The transformation fails design time validation. It is not valid to set both properties to **true**.|  
|False|False|Yes|A run-time error occurs. The file exists, but the transformation cannot write to it.|  
|False|True|Yes|The transformation deletes and re-creates the file and writes the data to the file.|  
|True|False|Yes|The transformation opens the file and writes the data at the end of the file.|  
|True|True|Yes|The transformation fails design time validation. It is not valid to set both properties to **true**.|  
  
## Configuration of the Export Column Transformation  
 You can configure the Export Column transformation in the following ways:  
  
-   Specify the data columns and the columns that contain the path of files to which to write the data.  
  
-   Specify whether the data-insertion operation appends or truncates existing files.  
  
-   Specify whether a byte-order mark (BOM) is written to the file.  
  
    > [!NOTE]  
    >  A BOM is written only when the data is not appended to an existing file and the data has the DT_NTEXT data type.  
  
 The transformation uses pairs of input columns: One column contains a file name, and the other column contains data. Each row in the data set can specify a different file. As the transformation processes a row, the data is inserted into the specified file. At run time, the transformation creates the files, if they do not already exist, and then the transformation writes the data to the files. The data to be written must have a DT_TEXT, DT_NTEXT, or DT_IMAGE data type. For more information, see [Integration Services Data Types](../../../integration-services/data-flow/integration-services-data-types.md).  
  
 This transformation has one input, one output, and one error output.  
  
 You can set properties through [!INCLUDE[ssIS](../../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in the **Export Column Transformation Editor** dialog box, see [Export Column Transformation Editor &#40;Columns Page&#41;](../../../integration-services/data-flow/transformations/export-column-transformation-editor-columns-page.md).  
  
 The **Advanced Editor** dialog box reflects the properties that can be set programmatically. For more information about the properties that you can set in the **Advanced Editor** dialog box or programmatically, click one of the following topics:  
  
-   [Common Properties](../Topic/Common%20Properties.md)  
  
-   [Transformation Custom Properties](../../../integration-services/data-flow/transformations/transformation-custom-properties.md)  
  
 For more information about how to set properties, see [Set the Properties of a Data Flow Component](../../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md).  
  
  