---
title: "Objects (XMLA) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "objects [XML for Analysis]"
  - "XML for Analysis, objects"
  - "XMLA, objects"
ms.assetid: 768188ef-85d4-432a-9390-be05c835137f
caps.latest.revision: 13
ms.author: "jeannt"
manager: "erikre"
---
# XML Elements - Objects
  The XML for Analysis (XMLA) protocol uses two methods, **Discover** and **Execute**, to offer a standard way for applications to access information on an instance of [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)]. Because these methods are invoked by using the Simple Object Access Protocol (SOAP) protocol, they accept input and deliver output in XML.  
  
## In This Section  
 The following topics describe the XMLA objects implemented by [!INCLUDE[ssAS](../../analysis-services/multidimensional-models/includes/ssas-md.md)].  
  
|Method|Description|  
|------------|-----------------|  
|[DiscoverResponse Element &#40;XMLA&#41;](../../analysis-services/xmla/xml-elements-objects-discoverresponse.md)|Contains the information returned by an instance of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] in response to a [Discover](../../analysis-services/xmla/xml-elements-methods-discover.md) method call.|  
|[ExecuteResponse Element &#40;XMLA&#41;](../../analysis-services/xmla/xml-elements-objects-executeresponse.md)|Contains the information returned by an instance of [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] in response to an [Execute](../../analysis-services/xmla/xml-elements-methods-execute.md) method call.|  
  
## See Also  
 [XML Elements &#40;XMLA&#41;](../../a9retired/xml-elements-xmla.md)   
 [XML Data Types &#40;XMLA&#41;](../../analysis-services/xmla/xml-data-types/xml-data-types-xmla.md)   
 [XML Elements &#40;XMLA&#41;](../../a9retired/xml-elements-xmla.md)  
  
  