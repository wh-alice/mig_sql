---
title: "executeBatch Method (SQLServerPreparedStatement) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.executeBatch"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 8418167e-cbd2-464d-b118-73cdd76080ed
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
# executeBatch Method (SQLServerPreparedStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Submits a batch of commands to the database to be run. If all commands run successfully, returns an array of update counts.  
  
## Syntax  
  
```  
  
public int[] executeBatch()  
```  
  
## Return Value  
 An array of ints that contains the update counts.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
 java.sql.BatchUpdateException  
  
## Remarks  
 This executeBatch method is specified by the executeBatch method in the java.sql.Statement interface.  
  
 The SQL Server JDBC Driver 3.0 is compliant with the JDBC 4.0 recommendation that a call to the CallableStatement.executeBatch method (inherited from PreparedStatement) will throw a BatchUpdateException if the stored procedure accepts OUT or INOUT parameters or returns something other than an update count.  
  
 This method overrides [SQLServerStatement.executeBatch](../../../connect/jdbc/reference/executebatch-method--sqlserverstatement-.md).  
  
## See Also  
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  