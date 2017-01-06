---
title: "executeUpdate Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.executeUpdate"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 10ae662a-ce3c-4b24-875c-5c2df319d93b
caps.latest.revision: 16
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
# executeUpdate Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the given SQL statement, which can be an INSERT, UPDATE, or DELETE statement; or an SQL statement that returns nothing, such as an SQL DDL statement. Beginning in MicrosoftSQL Server JDBC Driver 3.0, executeUpdate will return the correct number of rows updated in a MERGE operation.  
  
## Overload List  
  
|Name|Description|  
|----------|-----------------|  
|[executeUpdate (java.lang.String)](../../../connect/jdbc/reference/executeupdate-method--java.lang.string---sqlserverstatement-.md)|Runs the given SQL statement, which can be an INSERT, UPDATE, DELETE, or MERGE statement; or an SQL statement that returns nothing, such as an SQL DDL statement.|  
|[executeUpdate (java.lang.String, int)](../../../connect/jdbc/reference/executeupdate-method--java.lang.string--int-.md)|Runs the given SQL statement and signals the Microsoft JDBC Driver for SQL Server with the given flag about whether the auto-generated keys produced by this [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object should be made available for retrieval.|  
|[executeUpdate (java.lang.String, int&#91;&#93;)](../../../connect/jdbc/reference/executeupdate-method--java.lang.string--int[]-.md)|Runs the given SQL statement and signals the JDBC driver that the auto-generated keys that are indicated in the given array should be made available for retrieval.|  
|[executeUpdate (java.lang.String, java.lang.String&#91;&#93;)](../../../connect/jdbc/reference/executeupdate-method--java.lang.string--java.lang.string-.md)|Runs the given SQL statement and signals the JDBC driver that the auto-generated keys that are indicated in the given array should be made available for retrieval.|  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  