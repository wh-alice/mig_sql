---
title: "Namespace Support in PATH Mode | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-xml"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "PATH FOR XML mode, namespace support"
  - "namespaces [XML in SQL Server]"
ms.assetid: 5f128ea2-0ceb-4b23-bce7-c8b3fd615466
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# Namespace Support in PATH Mode
  Namespace support in the PATH mode is provided by using WITH NAMESPACES. For example, the following query demonstrates the WITH NAMESPACES syntax to declare a namespace ("a:") that can then be used in the subsequent SELECT statement:  
  
```  
WITH XMLNAMESPACES('a' as a)  
SELECT 1 as 'a:b'  
FOR XML PATH  
```  
  
## Examples  
 These samples illustrate the use of PATH mode in generating XML from a SELECT query. Many of these queries are specified against the bicycle manufacturing instructions XML documents that are stored in the Instructions column of the ProductModel table.  
  
## See Also  
 [Use PATH Mode with FOR XML](../../relational-databases/xml/use-path-mode-with-for-xml.md)  
  
  