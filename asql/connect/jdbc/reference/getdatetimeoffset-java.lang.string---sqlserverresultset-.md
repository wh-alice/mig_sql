---
title: "getDateTimeOffset(java.lang.string) (SQLServerResultSet) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e585927c-0dee-43fd-b71e-c9f1701790bd
caps.latest.revision: 15
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
# getDateTimeOffset(java.lang.string) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This method was added in MicrosoftSQL Server JDBC Driver 3.0.  
  
 Retrieves the value of the designated column as a [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object in the Java programming language given the parameter index.  
  
## Syntax  
  
```  
  
public microsoft.sql.DateTimeOffset getDateTimeOffset(String columnName)  
```  
  
#### Parameters  
 *columnName*  
  
 The name of the column.  
  
## Return Value  
 A [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 You can update a [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) value with [SQLServerResultSet.updateDateTimeOffset](../../../connect/jdbc/reference/updatedatetimeoffset--sqlserverresultset-.md).  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  