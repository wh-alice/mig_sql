---
title: "DiscoverResponse Element (XMLA) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "DiscoverResponse Element"
apilocation: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine"
apitype: "Schema"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine#DiscoverResponse"
  - "microsoft.xml.analysis.discoverresponse"
  - "urn:schemas-microsoft-com:xml-analysis#DiscoverResponse"
helpviewer_keywords: 
  - "DiscoverResponse element"
ms.assetid: 20e10a82-dbd1-4ead-b92d-f84b4b2f10c6
caps.latest.revision: 13
ms.author: "jeannt"
manager: "erikre"
---
# XML Elements - Objects - DiscoverResponse
  Contains the information returned by an instance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] in response to a [Discover](../Topic/Discover%20Method%20\(XMLA\).md) method call.  
  
 **Namespace** urn:schemas-microsoft-com:xml-analysis  
  
## Syntax  
  
```xml  
  
<DiscoverResponse>  
   <return>  
</DiscoverResponse>  
```  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|Data type and length|None|  
|Default value|None|  
|Cardinality|1-1: Required element that can occur once and only once.|  
  
## Element Relationships  
  
|Relationship|Element|  
|------------------|-------------|  
|Parent elements|None|  
|Child elements|[return](../../analysis-services/xmla/xml-elements-properties/return-element-xmla.md)|  
  
## Remarks  
 The **DiscoverResponse** element is the topmost element within the body of a SOAP response for the **Discover** method.  
  
## See Also  
 [ExecuteResponse Element &#40;XMLA&#41;](../Topic/ExecuteResponse%20Element%20\(XMLA\).md)   
 [Objects &#40;XMLA&#41;](../Topic/Objects%20\(XMLA\).md)  
  
  