---
title: "close Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.close"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 8f3adf5b-874e-4cf2-b4ef-672dda42d77a
caps.latest.revision: 14
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
# close Method (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Releases this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object's database and JDBC resources immediately instead of waiting for this to happen when it is automatically closed.  
  
## Syntax  
  
```  
  
public void close()  
```  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This close method is specified by the close method in the java.sql.ResultSet interface.  
  
 A SQLServerResultSet object is automatically closed by the [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object that generated it when that SQLServerStatement object is closed, re-run, or used to retrieve the next result from a sequence of multiple results. A SQLServerResultSet object is also automatically closed when it is garbage collected.  
  
 When executing a statement that produces a single large forward-only, read-only result set, you might only be interested in some initial set of rows in the returned result set. In this case, the application might call the [cancel](../../../connect/jdbc/reference/cancel-method--sqlserverstatement-.md) method of the associated statement object before closing the result set in order to minimize the processing time needed to discard the remaining unnecessary rows. We recommend considering the tradeoff between the processing time that would be saved and the time and the additional round trip to the server needed to cancel the execution when deciding whether to use this technique or not.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  