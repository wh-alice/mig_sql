---
title: "Developing with Analysis Management Objects (AMO) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "Analysis Management Objects, programming"
  - "AMO, programming"
ms.assetid: 91354fc9-22da-4724-b97f-3b1e7b0e69d3
caps.latest.revision: 47
ms.author: "owend"
manager: "erikre"
---
# Developing with Analysis Management Objects (AMO)
  Analysis Management Objects (AMO) is the complete library of programmatically accessed objects that enables an application to manage a running instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../a9notintoc/includes/ssasnoversion-md.md)].  
  
 This section explains AMO concepts, focusing on major objects, how and when to use them, and the way they are interrelated. For more information about specific objects or classes, see the <xref:Microsoft.AnalysisServices>.  
  
 **New in SQL Server 2016**  
  
 In SQL Server 2016, AMO is refactored into multiple assemblies. Generic classes such as Server, Database, and Roles are in [Microsoft.AnalysisServices.Core](Microsoft.AnalysisServices.Core.xml). Multidimensional-specific APIs remain in [Microsoft.AnalysisServices Namespace](https://msdn.microsoft.com/library/ms146720\(SQL.130\).aspx).  
  
 Custom scripts and applications written against earlier versions of AMO will continue to work with no modification. However, if you have script or applications that target SQL Server 2016 specifically, or if you need to rebuild a custom solution, be sure to add the new assembly and namespace to your project.  
  
## See Also  
 [Developing with Analysis Services Scripting Language &#40;ASSL&#41;](../../../analysis-services/multidimensional-models/scripting-language-assl/developing-with-analysis-services-scripting-language-assl.md)   
 [Developing with XMLA in Analysis Services](../../../analysis-services/multidimensional-models-scripting-language-assl-xmla/developing-with-xmla-in-analysis-services.md)  
  
  