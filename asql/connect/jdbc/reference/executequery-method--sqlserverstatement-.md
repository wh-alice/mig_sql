---
title: "executeQuery Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.executeQuery"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 599cf463-e19f-4baa-bacb-513cad7c6cd8
caps.latest.revision: 13
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
# executeQuery Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the given SQL statement and returns a single [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet executeQuery(java.lang.String sql)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
## Return Value  
 A SQLServerResultSet object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This executeQuery method is specified by the executeQuery method in the java.sql.Statement interface.  
  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md) is thrown if the given SQL statement produces anything other than a single [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
 If executing a stored procedure results in an update count that is greater than one, or that generates more than one result set, use the [execute](../../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) method to execute the stored procedure.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  