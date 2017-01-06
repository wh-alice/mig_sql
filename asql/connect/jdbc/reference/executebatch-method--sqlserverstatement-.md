---
title: "executeBatch Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.executeBatch"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fb034f63-2532-4da8-a1b0-bc125734585a
caps.latest.revision: 11
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
# executeBatch Method (SQLServerStatement)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Submits a batch of commands to the database to be run. If all commands run successfully, returns an array of update counts.  
  
## Syntax  
  
```  
  
public int[] executeBatch()  
```  
  
## Return Value  
 An array of **int**s that contain the update counts.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
 java.sql.BatchUpdateException  
  
## Remarks  
 This executeBatch method is specified by the executeBatch method in the java.sql.Statement interface.  
  
 After submitting commands to the database, this method clears any command in the batch.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  