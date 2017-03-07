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
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  This topic and its subtopics describe the functions you can use when specifying XQuery against the **xml** data type. For the W3C specifications, see [http://www.w3.org/TR/2004/WD-xpath-functions-20040723](http://go.microsoft.com/fwlink/?LinkId=4873).  
  
 The XQuery functions belong to the http://www.w3.org/2004/07/xpath-functions namespace. The W3C specifications use the "fn:" namespace prefix to describe these functions. You do not have to specify the "fn:" namespace prefix explicitly when you are using the functions. Because of this and to improve readability, the namespace prefixes are generally not used in this documentation.  
  
 The following table lists the XQuery functions that are supported against the **xml**data type.  
  
|Category|Function Name|  
|--------------|-------------------|  
|[Functions on Numeric Values](../a9retired/functions-on-numeric-values.md)|[ceiling](../xquery/numeric-values-functions-ceiling.md)|  
||[floor](../xquery/numeric-values-functions-floor.md)|  
||[round](../xquery/numeric-values-functions-round.md)|  
|[XQuery Functions on String Values](../a9retired/xquery-functions-on-string-values.md)|[concat](../xquery/functions-on-string-values-concat.md)|  
||[contains](../xquery/functions-on-string-values-contains.md)|  
||[substring](../xquery/functions-on-string-values-substring.md)|  
||[lower-case  Function &#40;XQuery&#41;](../xquery/functions-on-string-values-lower-case.md)|  
||[string-length](../xquery/functions-on-string-values-string-length.md)|  
||[upper-case  Function &#40;XQuery&#41;](../xquery/functions-on-string-values-upper-case.md)|  
|[Functions on Boolean Values](../a9retired/functions-on-boolean-values.md)|[not](../xquery/functions-on-boolean-values-not-function.md)|  
|[Functions on Nodes](../a9retired/functions-on-nodes.md)|[number](../xquery/functions-on-nodes-number.md)|  
||[local-name Function (XQuery)](../xquery/functions-on-nodes-local-name.md)|  
||[namespace-uri Function (XQuery)](../xquery/functions-on-nodes-namespace-uri.md)|  
|[Context Functions](../a9retired/context-functions.md)|[last](../xquery/context-functions-last-xquery.md)|  
||[position](../xquery/context-functions-position-xquery.md)|  
|[Functions on Sequences](../a9retired/functions-on-sequences.md)|[empty](../xquery/functions-on-sequences-empty.md)|  
||[distinct-values](../xquery/functions-on-sequences-distinct-values.md)|  
||[id Function (XQuery)](../xquery/functions-on-sequences-id.md)|  
|[Aggregate Functions &#40;XQuery&#41;](../a9retired/aggregate-functions-xquery.md)|[count](../xquery/aggregate-functions-count.md)|  
||[avg](../xquery/aggregate-functions-avg.md)|  
||[min](../xquery/aggregate-functions-min.md)|  
||[max](../xquery/aggregate-functions-max.md)|  
||[sum](../xquery/aggregate-functions-sum.md)|  
|[Constructor Functions &#40;XQuery&#41;](../xquery/constructor-functions-xquery.md)|[Constructor Functions](../xquery/constructor-functions-xquery.md)|  
|[Data Accessor Functions](../xquery/data-accessor-functions.md)|[string](../xquery/data-accessor-functions-string-xquery.md)|  
||[data](../xquery/data-accessor-functions-data-xquery.md)|  
|[Boolean Constructor Functions &#40;XQuery&#41;](../a9retired/boolean-constructor-functions-xquery.md)|[true Function (XQuery)](../xquery/boolean-constructor-functions-true-xquery.md)|  
||[false Function (XQuery)](../xquery/boolean-constructor-functions-false-xquery.md)|  
|[Functions Related to QNames &#40;XQuery&#41;](../a9retired/functions-related-to-qnames-xquery.md)|[expanded-QName (XQuery)](../xquery/functions-related-to-qnames-expanded-qname.md)|  
||[local-name-from-QName (XQuery)](../xquery/functions-related-to-qnames-local-name-from-qname.md)|  
||[namespace-uri-from-QName (XQuery)](../xquery/functions-related-to-qnames-namespace-uri-from-qname.md)|  
|[SQL Server XQuery Extension Functions](../a9retired/xquery-extension-functions.md)|[sql:column() function (XQuery)](../xquery/xquery-extension-functions-sql-column.md)|  
||[sql:variable() function (XQuery)](../xquery/xquery-extension-functions-sql-variable.md)|  
  
## See Also  
 [xml Data Type Methods](../t-sql/xml/xml-data-type-methods.md)   
 [XQuery Language Reference &#40;SQL Server&#41;](../xquery/xquery-language-reference-sql-server.md)   
 [XML Data &#40;SQL Server&#41;](../relational-databases/xml/xml-data-sql-server.md)  
  
  