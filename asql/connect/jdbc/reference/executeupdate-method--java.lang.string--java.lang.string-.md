---
title: "executeUpdate Method (java.lang.String, java.lang.String) | Microsoft Docs"
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
  - "SQLServerStatement.executeUpdate (java.lang.String[])"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 2f44a689-65c8-4c94-9574-e9c08ea7918e
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
# executeUpdate Method (java.lang.String, java.lang.String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the given SQL statement and signals Microsoft JDBC Driver for SQL Server that the auto-generated keys indicated in the given array should be made available for retrieval.  
  
## Syntax  
  
```  
  
public final int executeUpdate(java.lang.String sql,  
                               java.lang.String[] columnNames)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
 *columnNames*  
  
 An array of type **String** that indicates which column names of the auto-generated keys should be made available.  
  
## Return Value  
 An **int** that indicates the number of rows affected, 0 if using a DDL statement.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This executeUpdate method is specified by the executeUpdate method in the java.sql.Statement interface.  
  
 If executing a stored procedure results in an update count that is greater than one, or that generates more than one result set, use the [execute](../../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) method to execute the stored procedure.  
  
## See Also  
 [executeUpdate Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/executeupdate-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  