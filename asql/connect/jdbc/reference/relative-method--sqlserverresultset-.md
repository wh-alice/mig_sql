---
title: "relative Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.relative"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 2bcdbb69-95fd-4ae8-8488-1a75a91fe2e0
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
# relative Method (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Moves the cursor the given amount of rows, relative to the current row, in either a positive or negative direction.  
  
## Syntax  
  
```  
  
public boolean relative(int nRows)  
```  
  
#### Parameters  
 *nRows*  
  
 An **int** that indicates the number of rows to move.  
  
## Return Value  
 **true** if the cursor is on a row. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This relative method is specified by the relative method in the java.sql.ResultSet interface.  
  
 Trying to move beyond the first or last row in the result set positions the cursor before or after the first or last row. Calling `relative(0)` is valid, but does not change the cursor position.  
  
 Calling the method `relative(1)` is identical to calling the [next](../../../connect/jdbc/reference/next-method--sqlserverresultset-.md) method. Calling the method `relative(-1)` is identical to calling the [previous](../../../connect/jdbc/reference/previous-method--sqlserverresultset-.md) method.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  