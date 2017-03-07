---
title: "Message Element (XMLA) | Microsoft Docs"
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
  - "Message Element"
apilocation: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine"
apitype: "Schema"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "microsoft.xml.analysis.message"
  - "http://schemas.microsoft.com/analysisservices/2003/engine#Message"
  - "urn:schemas-microsoft-com:xml-analysis#Message"
helpviewer_keywords: 
  - "Message element"
ms.assetid: 028911e2-9779-43b1-824d-6d7fb2295885
caps.latest.revision: 11
ms.author: "jeannt"
manager: "erikre"
---
# Message Element (XMLA)
  Contains a message returned from an instance of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] by a [Discover](../Topic/Discover%20Method%20\(XMLA\).md) or [Execute](../Topic/Execute%20Method%20\(XMLA\).md) method call.  
  
## Syntax  
  
```xml  
  
<Messages>  
   ...  
   <Message>  
      <Error>...</Error>  
      <!-- or -->  
      <Warning>...</Warning>  
   </Message>  
   ...  
</Messages>  
```  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|Data type and length|None|  
|Default value|None|  
|Cardinality|0-n: Optional element that can occur more than once.|  
  
## Element Relationships  
  
|Relationship|Element|  
|------------------|-------------|  
|Parent elements|[Messages](../../../analysis-services/xmla/xml-elements-properties/messages-element-xmla.md)|  
|Child elements|[Error](../../../analysis-services/xmla/xml-elements-properties/error-element-xmla.md), [Warning](../../../analysis-services/xmla/xml-elements-properties/warning-element-xmla.md)|  
  
## Remarks  
 This element is used in cases where a **Discover** method call or a single XMLA command within an **Execute** method call completes successfully, but with errors or warnings. In such cases, a **Messages** element is added to the root element after all other elements, which in turn contains one or more **Message** elements. Each **Message** element represents a single message, either an error or a warning, returned by the [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] instance.  
  
## See Also  
 [Properties &#40;XMLA&#41;](../Topic/Properties%20\(XMLA\).md)  
  
  