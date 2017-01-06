---
title: "executeUpdate Method (java.lang.String) (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.executeUpdate (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 85e7c3a2-f2da-49bf-9d90-5fd246fd60e1
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
# executeUpdate Method (java.lang.String) (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the given SQL statement, which can be an INSERT, UPDATE, or DELETE statement; or an SQL statement that returns nothing, such as an SQL DDL statement. Beginning in MicrosoftSQL Server JDBC Driver 3.0, executeUpdate will return the correct number of rows updated in a MERGE operation.  
  
## Syntax  
  
```  
  
public int executeUpdate(java.lang.String sql)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains the SQL statement.  
  
## Return Value  
 An **int** that indicates the number of rows affected, or 0 if using a DDL statement.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This executeUpdate method is specified by the executeUpdate method in the java.sql.Statement interface.  
  
 If executing a stored procedure results in an update count that is greater than one, or that generates more than one result set, use the [execute](../../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) method to execute the stored procedure.  
  
## See Also  
 [executeUpdate Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/executeupdate-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  