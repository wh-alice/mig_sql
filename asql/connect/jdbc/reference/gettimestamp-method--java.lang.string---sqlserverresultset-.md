---
title: "getTimestamp Method (java.lang.String) (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.getTimestamp (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 8b3c3938-e057-4919-9e9f-01eb8a4ad937
caps.latest.revision: 8
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
# getTimestamp Method (java.lang.String) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated column name in the current row of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as a java.sql.Timestamp object in the Java programming language.  
  
## Syntax  
  
```  
  
public java.sql.Timestamp getTimestamp(java.lang.String columnName)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
## Return Value  
 A Timestamp object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getTimestamp method is specified by the getTimestamp method in the java.sql.ResultSet interface.  
  
 This method returns values only from SQL Server datetime and smalldatetime columns.  
  
## See Also  
 [getTimestamp Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/gettimestamp-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  