---
title: "Copy Column Transformation Editor | Microsoft Docs"
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
  - "sql13.dts.designer.copymaptransformation.f1"
helpviewer_keywords: 
  - "Copy Column Transformation Editor"
ms.assetid: d8e70541-d563-4ce4-bf66-bc888a0d3026
caps.latest.revision: 26
ms.author: "douglasl"
manager: "jhubbard"
---
# Copy Column Transformation Editor
  Use the **Copy Column Transformation Editor** dialog box to select columns to copy and to assign names for the new output columns.  
  
 To learn more about the Copy Column transformation, see [Copy Column Transformation](../../../integration-services/data-flow/transformations/copy-column-transformation.md).  
  
> [!NOTE]  
>  When you are simply copying all of your source data to a destination, it may not be necessary to use the Copy Column transformation. In some scenarios, you can connect a source directly to a destination, when no data transformation is required. In these circumstances it is often preferable to use the SQL Server Import and Export Wizard to create your package for you. Later you can enhance and reconfigure the package as needed. For more information, see [SQL Server Import and Export Wizard](../Topic/SQL%20Server%20Import%20and%20Export%20Wizard.md).  
  
## Options  
 **Available Input Columns**  
 Select columns to copy by using the check boxes. Your selections add input columns to the table below.  
  
 **Input Column**  
 Select columns to copy from the list of available input columns. Your selections are reflected in the check box selections in the **Available Input Columns** table.  
  
 **Output Alias**  
 Type an alias for each new output column. The default is **Copy of**, followed by the name of the input column; however, you can choose any unique, descriptive name.  
  
## See Also  
 [Integration Services Error and Message Reference](../../../integration-services/integration-services-error-and-message-reference.md)  
  
  