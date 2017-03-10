---
title: "Name Element for Column (DTA) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "XML"
helpviewer_keywords: 
  - "Name element"
ms.assetid: f93b61de-01fe-4237-ada4-f1e481550564
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# Name Element for Column (DTA)
  Specifies the name for an index column in a user-specified configuration.  
  
## Syntax  
  
```  
  
<Index>  
    <Column>  
        <Name>...</Name>  
```  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|**Data type and length**|**string**, unlimited length.|  
|**Default value**|None.|  
|**Occurrence**|Required once for each **Column** element.|  
  
## Element Relationships  
  
|Relationship|Elements|  
|------------------|--------------|  
|**Parent element**|[Column Element for Index &#40;DTA&#41;](../../tools/dta/column-element-for-index-dta.md)|  
|**Child elements**|None.|  
  
## Example  
 For a usage example of this element, see [XML Input File Sample with User-specified Configuration &#40;DTA&#41;](../../tools/dta/xml-input-file-sample-with-user-specified-configuration-dta.md).  
  
## See Also  
 [XML Input File Reference &#40;Database Engine Tuning Advisor&#41;](../../tools/dta/xml-input-file-reference-database-engine-tuning-advisor.md)  
  
  