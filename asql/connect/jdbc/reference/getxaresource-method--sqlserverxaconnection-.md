---
title: "getXAResource Method (SQLServerXAConnection) | Microsoft Docs"
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
  - "SQLServerXAConnection.getXAResource"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: e1d2828f-fd20-44b0-b796-dc70f77c5b03
caps.latest.revision: 6
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
# getXAResource Method (SQLServerXAConnection)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves a [SQLServerXAResource](../../../connect/jdbc/reference/sqlserverxaresource-class.md) object that the transaction manager will use to manage this [SQLServerXAConnection](../../../connect/jdbc/reference/sqlserverxaconnection-class.md) object's participation in a distributed transaction.  
  
## Syntax  
  
```  
  
public javax.transaction.xa.XAResource getXAResource()  
```  
  
## Return Value  
 An XAResource object.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This getXAResource method is specified by the getXAResource method in the javax.sql.XAConnection interface.  
  
## See Also  
 [SQLServerXAConnection Methods](../../../connect/jdbc/reference/sqlserverxaconnection-methods.md)   
 [SQLServerXAConnection Members](../../../connect/jdbc/reference/sqlserverxaconnection-members.md)   
 [SQLServerXAConnection Class](../../../connect/jdbc/reference/sqlserverxaconnection-class.md)  
  
  