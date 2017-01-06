---
title: "SQLServerConnection Class | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 937292a6-1525-423e-a2b2-a18fd34c2893
caps.latest.revision: 17
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
# SQLServerConnection Class
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents a JDBC connection to a Microsoft SQL Server database.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Implements:** [ISQLServerConnection](../../../connect/jdbc/reference/isqlserverconnection-interface.md), java.io.Serializable  
  
## Syntax  
  
```  
  
public class SQLServerConnection  
```  
  
## Remarks  
 SQLServerConnection supports JDBC connection pooling and can be either a physical JDBC connection or a logical JDBC connection. SQLServerConnection manages transaction control for all statements that were created from it, and it can participate in XA distributed transactions managed via a XAResource adapter.  
  
 SQLServerConnection manages a pool of prepared statement handles. Prepared statements are prepared once and are typically run many times with different data values for their parameters. Prepared statements are also maintained across logical (pooled) connection closes.  
  
> [!NOTE]  
>  SQLServerConnection is not thread safe. However, multiple statements that are created from a single connection can be processed simultaneously in concurrent threads.  
  
 This class supports unwrapping to SQLServerConnection class, java.sql.connection interface, and ISQLServerConnection interface. For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  