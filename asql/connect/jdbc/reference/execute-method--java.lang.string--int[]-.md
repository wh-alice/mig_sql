---
title: "execute Method (java.lang.String, int[]) | Microsoft Docs"
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
  - "SQLServerStatement.execute (javal.lang.String.int[])"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: dc73d1c3-e756-43af-b1fc-ac438cbd0965
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
# execute Method (java.lang.String, int[])
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Runs the given SQL statement, which can return multiple results, and signals Microsoft JDBC Driver for SQL Server that the auto-generated keys that are indicated in the given array should be made available for retrieval.  
  
## Syntax  
  
```  
  
public final boolean execute(java.lang.String sql,  
                             int[] columnIndexes)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
 *columnIndexes*  
  
 An array of **int**s that indicates the column indexes of the auto-generated keys that should be made available.  
  
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
  
  