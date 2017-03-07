---
title: "Path Properties | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "VB"
  - "CSharp"
helpviewer_keywords: 
  - "paths [Integration Services], properties"
ms.assetid: 89b1e347-9579-4f6b-af74-c6519ea08eea
caps.latest.revision: 25
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Path Properties
  The data flow objects in the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] object model have common properties and custom properties at the level of the component, inputs and outputs, and input columns and output columns. Many properties have read-only values that are assigned at run time by the data flow engine.  
  
 This topic lists and describes the custom properties of the paths that connect data flow objects.  
  
## Path Properties  
 In the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] object model, a path that connects components in the data flow implements the <xref:Microsoft.SqlServer.Dts.Pipeline.Wrapper.IDTSPath100> interface.  
  
 The following table describes the configurable properties of the paths in a data flow. The data flow engine also assigns values to additional read-only properties that are not listed here.  
  
|Property name|Data Type|Description|  
|-------------------|---------------|-----------------|  
|PathAnnotation|Integer (enumeration)|A value that indicates whether an annotation should be displayed with the path on the designer surface. The possible values are **AsNeeded**, **SourceName**, **PathName**, and **Never**. The default value is **AsNeeded**.|  
|DestinationName|<xref:Microsoft.SqlServer.Dts.Pipeline.Wrapper.IDTSInput100>|The input associated with the path.|  
|SourceName|<xref:Microsoft.SqlServer.Dts.Pipeline.Wrapper.IDTSOutput100>|The output associated with the path.|  
  
## See Also  
 [Integration Services Paths](../integration-services/data-flow/integration-services-paths.md)   
 [Common Properties](../a9retired/common-properties.md)   
 [Transformation Custom Properties](../integration-services/data-flow/transformations/transformation-custom-properties.md)   
 [Data Flow Properties that Can Be Set by Using Expressions](../a9retired/data-flow-properties-that-can-be-set-by-using-expressions.md)  
  
  