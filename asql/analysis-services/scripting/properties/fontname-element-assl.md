---
title: "FontName Element (ASSL) | Microsoft Docs"
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
  - "FontName Element"
apilocation: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine"
apitype: "Schema"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "FontName"
helpviewer_keywords: 
  - "FontName element"
ms.assetid: 5560a852-9745-4abb-93d8-9cebe8a9897c
caps.latest.revision: 36
ms.author: "owend"
manager: "erikre"
---
# FontName Element (ASSL)
  Describes font-related display characteristics of the [CalculationProperty](../../../analysis-services/scripting/objects/calculationproperty-element-assl.md) or [Measure](../../../analysis-services/scripting/objects/measure-element-assl.md) parent element.  
  
## Syntax  
  
```xml  
  
<CalculationProperty> <!-- or Measure -->  
   ...  
   <FontName>...</FontName>  
   ...  
</CalculationProperty>  
```  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|Data type and length|String|  
|Default value|None|  
|Cardinality|0-1: Optional element that can occur once and only once.|  
  
## Element Relationships  
  
|Relationship|Element|  
|------------------|-------------|  
|Parent elements|[CalculationProperty](../../../analysis-services/scripting/objects/calculationproperty-element-assl.md), [Measure](../../../analysis-services/scripting/objects/measure-element-assl.md)|  
|Child elements|None|  
  
## Remarks  
 The **FontName** property contains a Multidimensional Expressions (MDX) expression and applies to **CalculationProperty** elements that have a [CalculationType](../../../analysis-services/scripting/properties/calculationtype-element-assl.md) of *Member* or *Cells*.  
  
 The elements that correspond to the parents of **FontName** in the Analysis Management Objects (AMO) object model are <xref:Microsoft.AnalysisServices.CalculationProperty> and <xref:Microsoft.AnalysisServices.Measure>.  
  
## See Also  
 [CalculationProperties Element &#40;ASSL&#41;](../../../analysis-services/scripting/collections/calculationproperties-element-assl.md)   
 [MdxScript Element &#40;ASSL&#41;](../../../analysis-services/scripting/objects/mdxscript-element-assl.md)   
 [MdxScripts Element &#40;ASSL&#41;](../../../analysis-services/scripting/collections/mdxscripts-element-assl.md)   
 [Properties &#40;ASSL&#41;](../../../analysis-services/scripting/properties/properties-assl.md)  
  
  