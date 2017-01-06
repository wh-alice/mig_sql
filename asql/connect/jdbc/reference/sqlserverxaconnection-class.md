---
title: "SQLServerXAConnection Class | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5ecb4bf1-b8d1-47cf-9cb1-7a18acc11ce2
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
# SQLServerXAConnection Class
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents JDBC connections that can participate in distributed (XA) transactions.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** [SQLServerPooledConnection](../../../connect/jdbc/reference/sqlserverpooledconnection-class.md)  
  
 **Implements:** javax.sql.XAConnection  
  
## Syntax  
  
```  
  
public class SQLServerXAConnection  
```  
  
## Remarks  
 A SQLServerXAConnection object can be enlisted in a distributed transaction by means of an [SQLServerXAResource](../../../connect/jdbc/reference/sqlserverxaresource-class.md) object. A transaction manager, usually part of a middle tier server, manages a SQLServerXAConnection object through the SQLServerXAResource object.  
  
> [!NOTE]  
>  Application programmers typically do not use this interface directly. It is primarily used by a transaction manager working in the middle tier server.  
  
## See Also  
 [SQLServerXAConnection Members](../../../connect/jdbc/reference/sqlserverxaconnection-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  