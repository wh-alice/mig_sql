---
title: "Expression Element (ASSL) | Microsoft Docs"
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
  - "Expression Element"
apilocation: 
  - "http://schemas.microsoft.com/analysisservices/2003/engine"
apitype: "Schema"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "Expression"
helpviewer_keywords: 
  - "Expression element"
ms.assetid: a9491b21-5279-4531-b6a5-9e8022060dd8
caps.latest.revision: 36
ms.author: "owend"
manager: "erikre"
---
# Expression Element (ASSL)
  Contains a Multidimensional Expressions (MDX) expression that defines the contents of the parent element.  
  
## Syntax  
  
```xml  
  
<CellPermission> <!-- or StandardAction -->  
   ...  
   <Expression>...</Expression>  
   ...  
</CellPermission>  
```  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|Data type and length|String|  
|Default value|None|  
|Cardinality|1-1: Required element that occurs once and only once.|  
  
## Element Relationships  
  
|Relationship|Element|  
|------------------|-------------|  
|Parent elements|[CellPermission](../../../analysis-services/scripting/objects/cellpermission-element-assl.md), [StandardAction](../../../analysis-services/scripting/data-type/standardaction-data-type-assl.md)|  
|Child elements|None|  
  
## Remarks  
 For the **CellPermission** element, the **Expression** element contains a logical MDX expression that identifies cells applicable to the rights indicated by the [Access](../../../analysis-services/scripting/properties/access-element-assl.md) element of the **CellPermission** element. If the value of an **Expression** element for a **CellPermission** element is empty, the **CellPermission** element is ignored.  
  
 For the **StandardAction** element, the **Expression** element contains an MDX expression that represents the contents of the action. If the value of an **Expression** element for a **StandardAction** element is empty, the **StandardAction** element is ignored.  
  
 The elements that correspond to the parents in the Analysis Management Objects (AMO) object model are <xref:Microsoft.AnalysisServices.CellPermission> and <xref:Microsoft.AnalysisServices.StandardAction>.  
  
## See Also  
 [Properties &#40;ASSL&#41;](../../../analysis-services/scripting/properties/properties-assl.md)  
  
  