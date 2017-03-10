---
title: "Cache Transform | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.cachetrans.f1"
helpviewer_keywords: 
  - "Cache transform"
ms.assetid: a5683fc8-9c32-4634-819e-e9815627e4f1
caps.latest.revision: 30
ms.author: "douglasl"
manager: "jhubbard"
---
# Cache Transform
  The Cache Transform transformation generates a reference dataset for the Lookup Transformation by writing data from a connected data source in the data flow to a Cache connection manager. The Lookup transformation performs lookups by joining data in input columns from a connected data source with columns in the reference database.  
  
 You can use the Cache connection manager when you want to configure the Lookup Transformation to run in the full cache mode. In this mode, the reference dataset is loaded into cache before the Lookup Transformation runs.  
  
 For instructions on how to configure the Lookup transformation in full cache mode with the Cache connection manager and Cache Transform transformation, see [Implement a Lookup Transformation in Full Cache Mode Using the Cache Connection Manager](../../../integration-services/data-flow/transformations/lookup-transformation-full-cache-mode-cache-connection-manager.md).  
  
 For more information on caching the reference dataset, see [Lookup Transformation](../../../integration-services/data-flow/transformations/lookup-transformation.md).  
  
> [!NOTE]  
>  The Cache Transform writes only unique rows to the Cache connection manager.  
  
 In a single package, only one Cache Transform can write data to the same Cache connection manager. If the package contains multiple Cache Transforms, the first Cache Transform that is called when the package runs, writes the data to the connection manager. The write operations of subsequent Cache Transforms fail.  
  
 For more information, see [Cache Connection Manager](../../../integration-services/data-flow/transformations/cache-connection-manager.md) and [Cache Connection Manager Editor](../../../integration-services/data-flow/transformations/cache-connection-manager-editor.md).  
  
## Configuration of the Cache Transform  
 You can configure the Cache connection manager to save the data to a cache file (.caw).  
  
 You can configure the Cache Transform in the following ways:  
  
-   Specify the Cache connection manager.  
  
-   Map the input columns in the Cache Transform to destination columns in the Cache connection manager.  
  
    > [!NOTE]  
    >  Each input column must be mapped to a destination column, and the column data types must match. Otherwise, [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] Designer displays an error message.  
  
     You can use the **Cache Connection Manager Editor** to modify column data types, names, and other column properties.  
  
 You can set properties through [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] Designer. For more information about the properties that you can set in the **Advanced Editor** dialog box, see [Transformation Custom Properties](../../../integration-services/data-flow/transformations/transformation-custom-properties.md).  
  
 For more information about how to set properties, see [Set the Properties of a Data Flow Component](../../../integration-services/data-flow/set-the-properties-of-a-data-flow-component.md).  
  
## See Also  
 [Integration Services Transformations](../../../integration-services/data-flow/transformations/integration-services-transformations.md)   
 [Data Flow](../../../integration-services/data-flow/data-flow.md)  
  
  