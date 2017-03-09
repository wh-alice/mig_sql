---
title: "namespace-uri-from-QName (XQuery) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "fn:namespace-uri-from-QName function"
  - "namespace-uri-from-QName function"
ms.assetid: 4ab3f003-2a3b-4268-9e88-b615e35701b2
caps.latest.revision: 13
ms.author: "jhubbard"
manager: "jhubbard"
---
# Functions Related to QNames - namespace-uri-from-QName
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns a string representing the namespace uri of the QName specified by *$arg*. The result is the empty sequence if *$arg* is the empty sequence.  
  
## Syntax  
  
```  
namespace-uri-from-QName($arg as xs:QName?) as xs:string?  
```  
  
## Arguments  
 *$arg*  
 Is the QName whose namespace URI is returned.  
  
## Examples  
 This topic provides XQuery examples against XML instances that are stored in various **xml** type columns in the AdventureWorks database.  
  
### A. Retrieve the namespace URI from a QName  
 For a working sample, see [local-name-from-QName &#40;XQuery&#41;](../xquery/functions-related-to-qnames-local-name-from-qname.md).  
  
### Implementation Limitations  
 These are the limitations:  
  
-   The **namespace-uri-from-QName()** function returns instances of xs:string instead of xs:anyURI.  
  
## See Also  
 [Functions Related to QNames &#40;XQuery&#41;](../Topic/Functions%20Related%20to%20QNames%20\(XQuery\).md)  
  
  