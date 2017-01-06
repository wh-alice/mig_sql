---
title: "addBatch Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.addBatch"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 95924a8b-a43c-4133-aff6-1d712e60e234
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
# addBatch Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Adds the given SQL command to the current list of commands for this [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object.  
  
## Syntax  
  
```  
  
public void addBatch(java.lang.String sql)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This addBatch method is specified by the addBatch method in the java.sql.Statement interface.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  