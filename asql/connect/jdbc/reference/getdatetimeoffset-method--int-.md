---
title: "getDateTimeOffset Method (int) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8bb00356-4d6e-4625-b924-67646930fdf2
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
# getDateTimeOffset Method (int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This method was added in Microsoft SQL Server JDBC Driver 3.0.  
  
 Retrieves the value of the designated parameter as a [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object in the Java programming language given the parameter index.  
  
## Syntax  
  
```  
  
public microsoft.sql.DateTimeOffset getDateTimeOffset(int index)  
```  
  
#### Parameters  
 *index*  
  
 The one-based parameter ordinal.  
  
## Return Value  
 A [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 You can set a [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) parameter value with [SQLServerCallableStatement.setDateTimeOffset](../../../connect/jdbc/reference/setdatetimeoffset-method--sqlservercallablestatement-.md).  
  
## See Also  
 [getDateTimeOffset Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getdatetimeoffset-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  