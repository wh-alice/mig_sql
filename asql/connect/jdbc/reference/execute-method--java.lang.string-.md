---
title: "execute Method (java.lang.String) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.execute (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: a871917e-d286-46c3-96cf-2e8e8b22111c
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
# execute Method (java.lang.String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the given SQL statement, which can return multiple results.  
  
## Syntax  
  
```  
  
public final boolean execute(java.lang.String sql)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
## Return Value  
 **true** if the statement returns a result set. **false** if it returns an update count or no result.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This execute method is specified by the execute method in the java.sql.Statement interface.  
  
 This method overrides the [execute](../../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) method that is found in the [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) class.  
  
 Calling this method will result in an exception since the SQL statement for the SQLServerPreparedStatement object is specified when the object is created.  
  
## See Also  
 [execute Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/execute-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  