---
title: "getString Method (int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.getString (int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: f3fce8bf-8d6e-476f-aa6d-992daa79b899
caps.latest.revision: 10
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
# getString Method (int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated parameter as a **String** in the Java programming language given the parameter index.  
  
## Syntax  
  
```  
  
public java.lang.String getString(int index)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the parameter index.  
  
## Return Value  
 A **String** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getString method is specified by the getString method in the java.sql.CallableStatement interface.  
  
 All columns in SQL Server can be returned as a string. This means that a string representation of all number-based and character-based types, and a hex-string representation of binary columns such as binary, varbinary, varbinary(max), image, timestamp, and uniqueidentifier, can be returned.  
  
 Location-sensitive types such as money, smallmoney, datetime, smalldatetime, float, real, decimal, and numeric will return the canonical toString() format for the underlying value of the type.  
  
 User-defined types are returned as hexadecimal string values.  
  
## See Also  
 [getString Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getstring-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  