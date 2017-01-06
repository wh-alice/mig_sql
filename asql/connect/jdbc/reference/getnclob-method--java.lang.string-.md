---
title: "getNClob Method (java.lang.String) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: be01ce56-8f13-437b-8de6-246cda5f7830
caps.latest.revision: 11
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# getNClob Method (java.lang.String)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the value of a JDBC **NCLOB** parameter as a NClob object in the Java programming language.  
  
## Syntax  
  
```  
  
public java.sql.NClob getNClob(java.lang.String parameterName)  
```  
  
#### Parameters  
 *parameterName*  
  
 A **String** that contains the parameter name.  
  
## Return Value  
 ANClobobject.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getNClob method is specified by the getNClob method in the java.sql.CallableStatement interface.  
  
 This method only supports retrieving **NCHAR**, **NVARCHAR**, **NTEXT**, and **XML** parameters. Calling these methods on other data type parameters will cause an exception.  
  
## See Also  
 [getNClob Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getnclob-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)  
  
  