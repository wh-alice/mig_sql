---
title: "Flat File Destination | Microsoft Docs"
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
  - "sql13.dts.designer.flatfiledest.f1"
helpviewer_keywords: 
  - "flat files"
  - "Flat File destination"
  - "text file writing [Integration Services]"
  - "destinations [Integration Services], Flat File"
ms.assetid: e0d6e356-8db4-48aa-ba66-029397f98f61
caps.latest.revision: 49
ms.author: "douglasl"
manager: "jhubbard"
---
# Flat File Destination
  The Flat File destination writes data to a text file. The text file can be in delimited, fixed width, fixed width with row delimiter, or ragged right format.  
  
 You can configure the Flat File destination in the following ways:  
  
-   Provide a block of text that is inserted in the file before any data is written. The text can provide information such as column headings.  
  
-   Specify whether to overwrite a data in a destination file that has the same name.  
  
 This destination uses a Flat File connection manager to access the text file. By setting properties on the Flat File connection manager that the Flat File destination uses, you can specify how the Flat File destination formats and writes the text file. When you configure the Flat File connection manager, you specify information about the file and about each column in the file. For example, you specify the characters that delimit columns and rows in the file, and you specify the data type and the length of each column. For more information, see [Flat File Connection Manager](../../integration-services/connection-manager/flat-file-connection-manager.md).  
  
 The Flat File destination includes the Header custom property. This property can be updated by a property expression when the package is loaded. For more information, see [Integration Services &#40;SSIS&#41; Expressions](../../integration-services/expressions/integration-services-ssis-expressions.md), [Use Property Expressions in Packages](../../integration-services/expressions/use-property-expressions-in-packages.md), and [Flat File Custom Properties](../../integration-services/data-flow/flat-file-custom-properties.md).  
  
 This destination has one output. It does not support an error output.  
  
## Configuration of the Flat File Destination  
 You can set properties through [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer or programmatically.  
  
 For more information about the properties that you can set in the **Flat File Source Editor** dialog box, click one of the following topics:  
  
-   [Flat File Destination Editor &#40;Connection Manager Page&#41;](../../integration-services/data-flow/flat-file-destination-editor-connection-manager-page.md)  
  
-   [Flat File Destination Editor &#40;Mappings Page&#41;](../../integration-services/data-flow/flat-file-destination-editor-mappings-page.md)  
  
 The **Advanced Editor** dialog box reflects the properties that can be set programmatically. For more information about the properties that you can set in the **Advanced Editor** dialog box or programmatically, click one of the following topics:  
  
-   [Common Properties](http://msdn.microsoft.com/library/51973502-5cc6-4125-9fce-e60fa1b7b796)  
  
-   [Flat File Custom Properties](../../integration-services/data-flow/flat-file-custom-properties.md)  
  
## Related Tasks  
 For information about how to set the properties of a data flow component, see [Set the Properties of a Data Flow Component](../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md).  
  
## See Also  
 [Flat File Source](../../integration-services/data-flow/flat-file-source.md)   
 [Data Flow](../../integration-services/data-flow/data-flow.md)  
  
  