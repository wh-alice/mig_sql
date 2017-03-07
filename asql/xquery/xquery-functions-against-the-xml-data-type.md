---
title: "XQuery Functions against the xml Data Type | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
dev_langs: 
  - "XML"
helpviewer_keywords: 
  - "XQuery, functions"
  - "xml data type [SQL Server], XQuery"
  - "functions [SQL Server], XQuery"
ms.assetid: 8df0877d-a03f-4ca9-b84e-908c4bb42b5e
caps.latest.revision: 36
ms.author: "douglasl"
manager: "jhubbard"
---
# XQuery Functions against the xml Data Type
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  This topic and its subtopics describe the functions you can use when specifying XQuery against the **xml** data type. For the W3C specifications, see [http://www.w3.org/TR/2004/WD-xpath-functions-20040723](http://go.microsoft.com/fwlink/?LinkId=4873).  
  
 The XQuery functions belong to the http://www.w3.org/2004/07/xpath-functions namespace. The W3C specifications use the "fn:" namespace prefix to describe these functions. You do not have to specify the "fn:" namespace prefix explicitly when you are using the functions. Because of this and to improve readability, the namespace prefixes are generally not used in this documentation.  
  
 The following table lists the XQuery functions that are supported against the **xml**data type.  
  
|Category|Function Name|  
|--------------|-------------------|  
|[Functions on Numeric Values](../Topic/Functions%20on%20Numeric%20Values.md)|[ceiling](../Topic/ceiling%20Function%20\(XQuery\).md)|  
||[floor](../Topic/floor%20Function%20\(XQuery\).md)|  
||[round](../Topic/round%20Function%20\(XQuery\).md)|  
|[XQuery Functions on String Values](../Topic/XQuery%20Functions%20on%20String%20Values.md)|[concat](../Topic/concat%20Function%20\(XQuery\).md)|  
||[contains](../Topic/contains%20Function%20\(XQuery\).md)|  
||[substring](../Topic/substring%20Function%20\(XQuery\).md)|  
||[lower-case  Function &#40;XQuery&#41;](../Topic/lower-case%20%20Function%20\(XQuery\).md)|  
||[string-length](../Topic/string-length%20Function%20\(XQuery\).md)|  
||[upper-case  Function &#40;XQuery&#41;](../Topic/upper-case%20%20Function%20\(XQuery\).md)|  
|[Functions on Boolean Values](../Topic/Functions%20on%20Boolean%20Values.md)|[not](../Topic/not%20Function%20\(XQuery\).md)|  
|[Functions on Nodes](../Topic/Functions%20on%20Nodes.md)|[number](../Topic/number%20Function%20\(XQuery\).md)|  
||[local-name Function (XQuery)](../Topic/local-name%20Function%20\(XQuery\).md)|  
||[namespace-uri Function (XQuery)](../Topic/namespace-uri%20Function%20\(XQuery\).md)|  
|[Context Functions](../Topic/Context%20Functions.md)|[last](../Topic/last%20Function%20\(XQuery\).md)|  
||[position](../Topic/position%20Function%20\(XQuery\).md)|  
|[Functions on Sequences](../Topic/Functions%20on%20Sequences.md)|[empty](../Topic/empty%20Function%20\(XQuery\).md)|  
||[distinct-values](../Topic/distinct-values%20Function%20\(XQuery\).md)|  
||[id Function (XQuery)](../Topic/id%20Function%20\(XQuery\).md)|  
|[Aggregate Functions &#40;XQuery&#41;](../Topic/Aggregate%20Functions%20\(XQuery\).md)|[count](../Topic/count%20Function%20\(XQuery\).md)|  
||[avg](../Topic/avg%20Function%20\(XQuery\).md)|  
||[min](../Topic/min%20Function%20\(XQuery\).md)|  
||[max](../Topic/max%20Function%20\(XQuery\).md)|  
||[sum](../Topic/sum%20Function%20\(XQuery\).md)|  
|[Constructor Functions &#40;XQuery&#41;](../xquery/constructor-functions-xquery.md)|[Constructor Functions](../xquery/constructor-functions-xquery.md)|  
|[Data Accessor Functions](../xquery/data-accessor-functions.md)|[string](../Topic/string%20Function%20\(XQuery\).md)|  
||[data](../Topic/data%20Function%20\(XQuery\).md)|  
|[Boolean Constructor Functions &#40;XQuery&#41;](../Topic/Boolean%20Constructor%20Functions%20\(XQuery\).md)|[true Function (XQuery)](../Topic/true%20Function%20\(XQuery\).md)|  
||[false Function (XQuery)](../Topic/false%20Function%20\(XQuery\).md)|  
|[Functions Related to QNames &#40;XQuery&#41;](../Topic/Functions%20Related%20to%20QNames%20\(XQuery\).md)|[expanded-QName (XQuery)](../Topic/expanded-QName%20\(XQuery\).md)|  
||[local-name-from-QName (XQuery)](../Topic/local-name-from-QName%20\(XQuery\).md)|  
||[namespace-uri-from-QName (XQuery)](../Topic/namespace-uri-from-QName%20\(XQuery\).md)|  
|[SQL Server XQuery Extension Functions](../Topic/SQL%20Server%20XQuery%20Extension%20Functions.md)|[sql:column() function (XQuery)](../Topic/sql:column\(\)%20Function%20\(XQuery\).md)|  
||[sql:variable() function (XQuery)](../Topic/sql:variable\(\)%20Function%20\(XQuery\).md)|  
  
## See Also  
 [xml Data Type Methods](../t-sql/xml/xml-data-type-methods.md)   
 [XQuery Language Reference &#40;SQL Server&#41;](../xquery/xquery-language-reference-sql-server.md)   
 [XML Data &#40;SQL Server&#41;](../relational-databases/xml/xml-data-sql-server.md)  
  
  