---
title: "getString Method (java.lang.String) (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.getString (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 8a98c8a8-61d0-40c9-9335-25a87b732dc3
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
# getString Method (java.lang.String) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated column name in the current row of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as a **String** in the Java programming language.  
  
## Syntax  
  
```  
  
public java.lang.String getString(java.lang.String columnName)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
## Return Value  
 A **String** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getString method is specified by the getString method in the java.sql.ResultSet interface.  
  
 All columns in SQL Server can be returned as a String. This means that a **String** representation of all number-based and character-based types, and a hex-string representation of binary columns such as binary, varbinary, varbinary(max), image, timestamp, and uniqueidentifier, can be returned.  
  
 Location sensitive types such as money, smallmoney, datetime, smalldatetime, float, real, decimal, and numeric will return the canonical toString() format for the underlying value of the type.  
  
 User defined types are returned as hexadecimal **String** values.  
  
## See Also  
 [getString Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getstring-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  