---
title: "setDateTimeOffset Method (SQLServerPreparedStatement) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5014dba9-1755-4769-b070-6cbeecee864e
caps.latest.revision: 7
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
# setDateTimeOffset Method (SQLServerPreparedStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This method was added in MicrosoftSQL Server JDBC Driver 3.0.  
  
 Sets the value of the column specified to the [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) value.  
  
## Syntax  
  
```  
  
public final void setDateTimeOffset(int n, microsoft.sql.DateTimeOffset x)  
```  
  
#### Parameters  
 *n*  
  
 The zero-based ordinal of a column.  
  
 *x*  
  
 The [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## See Also  
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  