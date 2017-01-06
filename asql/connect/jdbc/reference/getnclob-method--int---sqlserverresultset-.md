---
title: "getNClob Method (int) (SQLServerResultSet) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 103082e3-de98-4dff-8dc7-eaa5c64b1597
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
# getNClob Method (int) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated column in the current row of the [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as an NClob object in the Java programming language.  
  
## Syntax  
  
```  
  
public java.sql.NClob getNClob(int columnIndex)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
## Return Value  
 A NClob object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getNClob method is specified by the getNClob method in the java.sql.ResultSet interface.  
  
 This method is supported only on **nvarchar(max)**, **ntext**, and **xml** columns. Using this method on any other data types will cause an exception to be thrown.  
  
## See Also  
 [getNClob Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getnclob-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  