---
title: "getURL Method (int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.getURL Ijnt)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 75d03ced-3614-4997-9abd-24642b1d1aae
caps.latest.revision: 9
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
# getURL Method (int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated parameter as a URL object in the Java programming language given the parameter index.  
  
## Syntax  
  
```  
  
public java.net.URL getURL(int n)  
```  
  
#### Parameters  
 *n*  
  
 An **int** that indicates the parameter index.  
  
## Return Value  
 A URL object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getURL method is specified by the getURL method in the java.sql.CallableStatement interface.  
  
## See Also  
 [getURL Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/geturl-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  