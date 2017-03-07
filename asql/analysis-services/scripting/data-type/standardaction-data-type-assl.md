---
title: "StandardAction Data Type (ASSL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apiname: 
  - "StandardAction Data Type"
apilocation: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine"
apitype: "Schema"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "StandardAction"
helpviewer_keywords: 
  - "StandardAction data type"
ms.assetid: 81b574d5-06c1-4587-8bd2-0e5c5e3b1d99
caps.latest.revision: 38
ms.author: "owend"
manager: "erikre"
---
# StandardAction Data Type (ASSL)
  Defines a derived data type that represents any [Action](../../../analysis-services/scripting/objects/action-element-assl.md) element other than a [DrillThroughAction](../../../analysis-services/scripting/data-type/drillthroughaction-data-type-assl.md) element or a [ReportAction](../../../analysis-services/scripting/data-type/reportaction-data-type-assl.md) element.  
  
## Syntax  
  
```xml  
  
<StandardAction>  
   <!-- The following elements extend Action -->  
   <Expression>...</Expression>  
</StandardAction>  
```  
  
## Data Type Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|Base data types|[Action](../../../analysis-services/scripting/data-type/action-data-type-assl.md)|  
|Derived data types|None|  
  
## Data Type Relationships  
  
|Relationship|Element|  
|------------------|-------------|  
|Parent elements|None|  
|Child elements|[Expression](../../../analysis-services/scripting/properties/expression-element-assl.md)|  
|Derived elements|[Action](../../../analysis-services/scripting/objects/action-element-assl.md) ([Actions](../../../analysis-services/scripting/collections/actions-element-assl.md) collection of [Cube](../../../analysis-services/scripting/objects/cube-element-assl.md) or [Perspective](../../../analysis-services/scripting/objects/perspective-element-assl.md))|  
  
## Remarks  
 The corresponding element in the Analysis Management Objects (AMO) object model is <xref:Microsoft.AnalysisServices.StandardAction>.  
  
## See Also  
 [Analysis Services Scripting Language XML Data Types &#40;ASSL&#41;](../../../analysis-services/scripting/data-type/analysis-services-scripting-language-xml-data-types-assl.md)  
  
  