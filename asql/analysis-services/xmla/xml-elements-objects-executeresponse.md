---
title: "ExecuteResponse Element (XMLA) | Microsoft Docs"
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
  - "ExecuteResponse Element"
apilocation: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine"
apitype: "Schema"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "urn:schemas-microsoft-com:xml-analysis#ExecuteResponse"
  - "http://schemas.microsoft.com/analysisservices/2003/engine#ExecuteResponse"
  - "microsoft.xml.analysis.executeresponse"
helpviewer_keywords: 
  - "ExecuteResponse element"
ms.assetid: 6edb1b82-da4c-4cd9-9385-bea04032f0eb
caps.latest.revision: 13
ms.author: "jeannt"
manager: "erikre"
---
# XML Elements - Objects - ExecuteResponse
  Contains the information returned by an instance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] in response to an [Execute](../Topic/Execute%20Method%20\(XMLA\).md) method call.  
  
 **Namespace** urn:schemas-microsoft-com:xml-analysis  
  
## Syntax  
  
```xml  
  
<ExecuteResponse>  
   <return>  
</ExecuteResponse>  
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
 The **ExecuteResponse** element is the topmost element within the body of a SOAP response for the **Execute** method.  
  
## See Also  
 [DiscoverResponse Element &#40;XMLA&#41;](../Topic/DiscoverResponse%20Element%20\(XMLA\).md)   
 [Objects &#40;XMLA&#41;](../Topic/Objects%20\(XMLA\).md)  
  
  