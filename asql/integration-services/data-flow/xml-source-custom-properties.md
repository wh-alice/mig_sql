---
title: "XML Source Custom Properties | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: eb29b28c-3159-41ec-b3d7-fce5b2f2be55
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
---
# XML Source Custom Properties
  The XML source has both custom properties and the properties common to all data flow components.  
  
 The following table describes the custom properties of the XML source. All properties are read/write.  
  
|Property name|Data Type|Description|  
|-------------------|---------------|-----------------|  
|AccessMode|Integer|The mode used to access the XML data.|  
|UseInlineSchema|Boolean|A value that indicates whether to use an inline schema definition within the XML source. The default value of this property is **False**.|  
|XMLData|String|The file or variables from which to retrieve the XML data.<br /><br /> The value of this property can be specified by using a property expression.|  
|XMLSchemaDefinition|String|The path and file name of the schema definition file (.xsd).<br /><br /> The value of this property can be specified by using a property expression.|  
  
 The following table describes the custom properties of the output of the XML source. All properties are read/write.  
  
|Property name|Data Type|Description|  
|-------------------|---------------|-----------------|  
|RowsetID|String|A value that identifies the rowset associated with the output.|  
  
 The output columns of the XML source have no custom properties.  
  
 For more information, see [XML Source](../../integration-services/data-flow/xml-source.md).  
  
## See Also  
 [Common Properties](../../a9retired/common-properties.md)  
  
  