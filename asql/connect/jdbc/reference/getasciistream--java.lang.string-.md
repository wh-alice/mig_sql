---
title: "getAsciiStream (java.lang.String) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "SQLServerCallableStatement.getAsciiStream(String paramName)"
apilocation: 
  - "SQLServerCallableStatement.getAsciiStream(String paramName)"
apitype: "Assembly"
ms.assetid: 630b659f-eb36-4277-b04e-9a2e6134f795
caps.latest.revision: 15
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
# getAsciiStream (java.lang.String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated parameter as a stream of **ASCII** characters given the parameter name.  
  
## Syntax  
  
```  
  
public final java.io.InputStream getAsciiStream(java.lang.String paramName)  
```  
  
#### Parameters  
 *paramName*  
  
 A **String** that indicates the parameter name.  
  
## Return Value  
 An InputStream object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## See Also  
 [getAsciiStream Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getasciistream-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  