---
title: "modify() Method (xml Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "modify() method"
  - "modify method"
ms.assetid: 52430735-51f4-46d1-a308-9aecf8648fda
caps.latest.revision: 35
ms.author: "douglasl"
manager: "jhubbard"
---
# modify() Method (xml Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Modifies the contents of an XML document. Use this method to modify the content of an **xml** type variable or column. This method takes an XML DML statement to insert, update, or delete nodes from XML data. The **modify()** method of the **xml** data type can only be used in the SET clause of an UPDATE statement.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
modify (XML_DML)  
```  
  
## Arguments  
 XML_DML  
 Is a string in XML Data Manipulation Language (DML). The XML document is updated according to this expression.  
  
> [!NOTE]  
>  An error is returned if the **modify()** method is called on a null value or results in a null value.  
  
## Examples  
 Because the **modify()** method requires a string in the XML Data Manipulation Language (DML), the samples for **modify()** are contained in the topics that describe the XML DML statements. For these examples, see [insert &#40;XML DML&#41;](../../t-sql/data-types/insert-xml-dml.md), [delete &#40;XML DML&#41;](../../t-sql/data-types/delete-xml-dml.md) and [replace value of &#40;XML DML&#41;](../../t-sql/data-types/replace-value-of-xml-dml.md).  
  
## See Also  
 [Create Instances of XML Data](../../relational-databases/xml/create-instances-of-xml-data.md)   
 [xml Data Type Methods](../../t-sql/xml/xml-data-type-methods.md)   
 [XML Data Modification Language &#40;XML DML&#41;](../../t-sql/xml/xml-data-modification-language-xml-dml.md)  
  
  