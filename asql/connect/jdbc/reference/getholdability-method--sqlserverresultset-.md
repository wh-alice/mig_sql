---
title: "getHoldability Method (SQLServerResultSet) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4508d90f-c3c4-4eac-8001-fb0b93b66734
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
# getHoldability Method (SQLServerResultSet)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the holdability of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Syntax  
  
```  
  
public int getHoldability()  
```  
  
## Return Value  
 An **int** value that contains one of the following holdability levels:  
  
 HOLD_CURSORS_OVER_COMMIT  
  
 CLOSE_CURSORS_AT_COMMIT  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getHoldability method is specified by the getHoldability method in the java.sql.ResultSet interface.  
  
 To set the result set holdability, applications can use the [setHoldability](../../../connect/jdbc/reference/setholdability-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) class. After the [setHoldability](../../../connect/jdbc/reference/setholdability-method--sqlserverconnection-.md) method is called and the statement object and its result set object are created and the statement is executed, the application may need to change the holdability again.  
  
 For server cursors, when connected to SQL Server 2005 or later, setting holdability affects only the holdability of new result sets that are yet to be created on that connection. However, with SQL Server 2000, setting holdability affects the holdability of both existing result sets and new result sets that are yet to be created on that connection.  
  
 When the holdability is reset and the getHoldability method is called on the previously created result set object, the value returned by this method may be different than the holdability value returned by the following methods: Statement.getResultSetHoldability, Connection.getHoldability, or DatabaseMetaData.getResultSetHoldability.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  