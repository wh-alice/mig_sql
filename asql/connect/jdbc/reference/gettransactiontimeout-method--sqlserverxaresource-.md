---
title: "getTransactionTimeout Method (SQLServerXAResource) | Microsoft Docs"
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
  - "SQLServerXAResource.getTransactionTimeout"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ed0a37e9-1132-4d3f-b88f-8be674e852b1
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
# getTransactionTimeout Method (SQLServerXAResource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Obtains the current transaction timeout value set for this [SQLServerXAResource](../../../connect/jdbc/reference/sqlserverxaresource-class.md) object.  
  
## Syntax  
  
```  
  
public int getTransactionTimeout()  
```  
  
## Exceptions  
 javax.transaction.xa.XAException  
  
## Remarks  
 This getTransactionTimeout method is specified by the getTransactionTimeout method in the javax.transaction.xa.XAResource interface.  
  
## See Also  
 [SQLServerXAResource Methods](../../../connect/jdbc/reference/sqlserverxaresource-methods.md)   
 [SQLServerXAResource Members](../../../connect/jdbc/reference/sqlserverxaresource-members.md)   
 [SQLServerXAResource Class](../../../connect/jdbc/reference/sqlserverxaresource-class.md)  
  
  