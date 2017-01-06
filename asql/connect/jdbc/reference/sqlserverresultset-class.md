---
title: "SQLServerResultSet Class | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: eaffcff1-286c-459f-83da-3150778480c9
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
# SQLServerResultSet Class
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents a JDBC result set.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Implements:** [ISQLServerResultSet](../../../connect/jdbc/reference/isqlserverresultset-interface.md)  
  
## Syntax  
  
```  
  
public final class SQLServerResultSet  
```  
  
## Remarks  
 There are two types of result sets: client-side and server-side.  
  
 Client-side result sets are used when the results can fit in the client process memory. These results provide the fastest performance and are read by the Microsoft JDBC Driver for SQL Server in their entirety from the database. These result sets do not impose additional load on the database by incurring the overhead of creating server-side cursors. However, these types of result sets are not updatable.  
  
 Server-side result sets can be used when the results do not fit in the client process memory or when the result set is to be updatable. With this type of result set, the JDBC driver creates a server-side cursor and fetches rows of the result set transparently as the user scrolls through it.  
  
 The SQLServerResultSet class provides many methods to let you update the result set with any native Java data type and many Java object types.  
  
 This class supports unwrapping to SQLServerResultSet class, ISQLServerResultSet interface, and java.sql.ResultSet interface. For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  