---
title: "next Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.next"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 60248447-6908-4036-a779-a501453cd553
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
# next Method (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Moves the cursor down one row from its current position.  
  
## Syntax  
  
```  
  
public boolean next()  
```  
  
## Return Value  
 **true** if the new current row is valid. **false** if there are no more rows to process.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This next method is specified by the next method in the java.sql.ResultSet interface.  
  
 A result set cursor is initially positioned before the first row. The first call to the next method makes the first row the current row, the second call makes the second row the current row, and so on.  
  
 If an input stream is open for the current row, a call to the next method will implicitly close it. A warning chain for the [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object is cleared when a new row is read.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  