---
title: "DTAXML Element (DTA) | Microsoft Docs"
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
  - "DTAXML element"
ms.assetid: 3d9942ed-8a27-40db-a7c9-808984d914a2
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# DTAXML Element (DTA)
  The root element of a Database Engine Tuning Advisor XML input or output file, **DTAXML** contains all elements that describe tuning input and the tuning output that Database Engine Tuning Advisor generates.  
  
## Syntax  
  
```  
  
<DTAXML   
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"   
    xmlns="http://schemas.microsoft.com/sqlserver/2004/07/dta">  
    ...code removed here...  
</DTAXML>  
```  
  
## Element Attributes  
  
|Attribute|Description|  
|---------------|-----------------|  
|**xmlns:xsi**|Required. Identifies the XML Schema Instance namespace. Attributes from this namespace are used to reference the schema that is used to validate the Database Engine Tuning Advisor XML file.<br /><br /> Required value: [http://www.w3.org/2001/XMLSchema-instance](http://www.w3.org/2001/XMLSchema-instance)|  
|**xmlns**|Required. Identifies the Database Engine Tuning Advisor namespace.<br /><br /> If you edit the Database Engine Tuning Advisor XML file using the XML editor in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], this value is used by F1 Help and Dynamic Help to locate possible reference topics in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Books Online.<br /><br /> Required value:<br /><br /> [Database Engine Tuning Advisor XML Schema](http://go.microsoft.com/fwlink/?LinkId=43100) Namespace|  
  
## Element Characteristics  
  
|Characteristic|Description|  
|--------------------|-----------------|  
|**Data type and length**|None.|  
|**Default value**|None.|  
|**Occurrence**|Required once per DTA XML file.|  
  
## Element Relationships  
  
|Relationship|Elements|  
|------------------|--------------|  
|**Parent element**|None|  
|**Child elements**|[DTAInput Element &#40;DTA&#41;](../../tools/dta/dtainput-element-dta.md)<br /><br /> **DTAOutput** Element (see [Database Engine Tuning Advisor XML schema](http://schemas.microsoft.com/sqlserver/) for information)|  
  
## Remarks  
 For more information about XML namespaces, see [Namespaces in an XML Document](http://go.microsoft.com/fwlink/?LinkId=7341) in the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] MSDN Library.  
  
## Example  
 For examples of typical **DTAXML** elements, see [XML Input File Samples &#40;DTA&#41;](../../tools/dta/xml-input-file-samples-dta.md).  
  
## See Also  
 [XML Input File Reference &#40;Database Engine Tuning Advisor&#41;](../../tools/dta/xml-input-file-reference-database-engine-tuning-advisor.md)   
 [Start and Use the Database Engine Tuning Advisor](../../relational-databases/performance/start-and-use-the-database-engine-tuning-advisor.md)  
  
  