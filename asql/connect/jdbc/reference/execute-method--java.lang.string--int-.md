---
title: "execute Method (java.lang.String, int) | Microsoft Docs"
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
  - "SQLServerStatement.execute (java.lang.String.int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: c8ea589e-5736-412d-9cd1-79bc4964f847
caps.latest.revision: 12
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
# execute Method (java.lang.String, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the given SQL statement, which can return multiple results, and signals to Microsoft JDBC Driver for SQL Server that any auto-generated keys should be made available for retrieval.  
  
## Syntax  
  
```  
  
public final boolean execute(java.lang.String sql,  
                             int flag)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
 *flag*  
  
 An **int** value that indicates if auto-generated keys should be made available. It must be one of the following constants:  
  
 RETURN_GENERATED_KEYS  
  
 NO_GENERATED_KEYS  
  
## Return Value  
 **true** if the first result is a result set. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This execute method is specified by the execute method in the java.sql.Statement interface.  
  
## See Also  
 [execute Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/execute-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  