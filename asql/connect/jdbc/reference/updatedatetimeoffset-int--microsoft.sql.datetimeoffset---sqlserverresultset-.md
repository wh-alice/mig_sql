---
title: "updateDateTimeOffset(int, microsoft.sql.DateTimeOffset) (SQLServerResultSet) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 21ec0054-c808-4e88-9c8d-c71b696ce658
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
# updateDateTimeOffset(int, microsoft.sql.DateTimeOffset) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This method was added in MicrosoftSQL Server JDBC Driver 3.0.  
  
 Updates the value of the column specified to the [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) value, given a zero-based column ordinal.  
  
## Syntax  
  
```  
  
public void updateDateTimeOffset(int index, microsoft.sql.DateTimeOffset x)  
```  
  
#### Parameters  
 *index*  
  
 The zero-based ordinal of a column.  
  
 *x*  
  
 A [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 You can retrieve a [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) value with [SQLServerResultSet.getDateTimeOffset](../../../connect/jdbc/reference/getdatetimeoffset--sqlserverresultset-.md).  
  
## See Also  
 [updateDateTimeOffset &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatedatetimeoffset--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  