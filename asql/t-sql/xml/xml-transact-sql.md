---
title: "xml (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "xml_TSQL"
  - "xml"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "xml data type [SQL Server], about xml data type"
ms.assetid: 9198f671-8e61-4ca4-9c3a-859f84020e62
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# xml (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Is the data type that stores XML data. You can store **xml** instances in a column, or a variable of **xml** type.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
xml ( [ CONTENT | DOCUMENT ] xml_schema_collection )  
```  
  
## Arguments  
 CONTENT  
 Restricts the **xml** instance to be a well-formed XML fragment. The XML data can contain multiple zero or more elements at the top level. Text nodes are also allowed at the top level.  
  
 This is the default behavior.  
  
 DOCUMENT  
 Restricts the **xml** instance to be a well-formed XML document. The XML data must have one and only one root element. Text nodes are not allowed at the top level.  
  
 *xml_schema_collection*  
 Is the name of an XML schema collection. To create a typed **xml** column or variable, you can optionally specify the XML schema collection name. For more information about typed and untyped XML, see [Compare Typed XML to Untyped XML](../../relational-databases/xml/compare-typed-xml-to-untyped-xml.md).  
  
## Remarks  
 The stored representation of **xml** data type instances cannot exceed 2 gigabytes (GB) in size.  
  
 The CONTENT and DOCUMENT facets apply only to typed XML. For more information see [Compare Typed XML to Untyped XML](../../relational-databases/xml/compare-typed-xml-to-untyped-xml.md).  
  
## Examples  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @y xml (Sales.IndividualSurveySchemaCollection);  
SET @y =  (SELECT TOP 1 Demographics FROM Sales.Individual);  
SELECT @y;  
GO  
```  
  
## See Also  
 [Data Type Conversion &#40;Database Engine&#41;](../../t-sql/data-types/data-type-conversion-database-engine.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [xml Data Type Methods](../../t-sql/xml/xml-data-type-methods.md)   
 [XQuery Language Reference &#40;SQL Server&#41;](../../xquery/xquery-language-reference-sql-server.md)  
  
  