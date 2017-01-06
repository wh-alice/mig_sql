---
title: "setFetchDirection Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.setFetchDirection"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 4ee82290-508d-4bff-a5c5-8a56338deef8
caps.latest.revision: 12
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
# setFetchDirection Method (SQLServerResultSet)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Gives a hint as to the direction in which the rows in this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object will be processed.  
  
> [!NOTE]  
>  This method is not currently supported by the Microsoft JDBC Driver for SQL Server. If you use this method, the JDBC driver remembers the setting, but currently does not act on it.  
  
## Syntax  
  
```  
  
public void setFetchDirection(int direction)  
```  
  
#### Parameters  
 *direction*  
  
 An **int** that indicates the suggested fetch direction. Can be one of the following values:  
  
 ResultSet.FETCH_FORWARD  
  
 ResultSet.FETCH_REVERSE  
  
 ResultSet.FETCH_UNKNOWN  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setFetchDirection method is specified by the setFetchDirection method in the java.sql.ResultSet interface.  
  
 The initial value of this method is determined by the [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object that produced this SQLServerResultSet object. The fetch direction can be changed at any time.  
  
> [!NOTE]  
>  Using this method when the cursor type is forward-only has no effect.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  