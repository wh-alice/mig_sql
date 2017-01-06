---
title: "setDateTimeOffset Method (SQLServerCallableStatement) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9383e14d-c83e-43c5-980c-50a3e0bedc31
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
# setDateTimeOffset Method (SQLServerCallableStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This method was added in MicrosoftSQL Server JDBC Driver 3.0.  
  
 Sets the value of the column specified to the [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) value.  
  
## Syntax  
  
```  
  
public void setDateTimeOffset(String sCol, microsoft.sql.DateTimeOffset t)  
```  
  
#### Parameters  
 *sCol*  
  
 The name of a column.  
  
 *t*  
  
 The [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 You can retrieve a [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md) value with [SQLServerCallableStatement.getDateTimeOffset](../../../connect/jdbc/reference/getdatetimeoffset-method--sqlservercallablestatement-.md).  
  
 [setDateTimeOffset](../../../connect/jdbc/reference/setdatetimeoffset-method--sqlserverpreparedstatement-.md) takes the ordinal of the column.  
  
## See Also  
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  