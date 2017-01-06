---
title: "setAutoCommit Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.setAutoCommit"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: db1e22d2-e53f-474e-8c99-cb1fff7f491a
caps.latest.revision: 13
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
# setAutoCommit Method (SQLServerConnection)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the auto-commit mode for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object to the given state.  
  
## Syntax  
  
```  
  
public void setAutoCommit(boolean value)  
```  
  
#### Parameters  
 *value*  
  
 **true** to enable auto-commit mode for the connection, **false** to disable it.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setAutoCommit method is specified by the setAutoCommit method in the java.sql.Connection interface.  
  
 If a connection is in auto-commit mode, then all its SQL statements are run and committed as individual transactions. Otherwise, its SQL statements are grouped into transactions that are ended by a call to either the [commit](../../../connect/jdbc/reference/commit-method--sqlserverconnection-.md) method or the [rollback](../../../connect/jdbc/reference/rollback-method--sqlserverconnection-.md) method. By default, new connections are in auto-commit mode.  
  
 The commit occurs when the statement completes or the next run occurs, whichever comes first. In the case of statements that return a [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object, the statement completes when the last row of the result set has been retrieved, or when the result set has been closed. In advanced cases, a single statement might return multiple results in addition to output parameter values. In these cases, the commit occurs when all results and output parameter values have been retrieved.  
  
 When the auto-commit mode is **false**, the JDBC driver will implicitly start a new transaction after each commit.  
  
> [!NOTE]  
>  If this method is called during a transaction, the transaction is committed.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  