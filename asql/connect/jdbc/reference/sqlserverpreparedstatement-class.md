---
title: "SQLServerPreparedStatement Class | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a8481c06-fbba-432b-8c69-4f4619c20ad4
caps.latest.revision: 15
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
# SQLServerPreparedStatement Class
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents the basic implementation of JDBC prepared statement functionality.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** SQLServerStatement  
  
 **Implements:** [ISQLServerPreparedStatement](../../../connect/jdbc/reference/isqlserverpreparedstatement-interface.md)  
  
## Syntax  
  
```  
  
public class SQLServerPreparedStatement  
```  
  
## Remarks  
 SQLServerPreparedStatement provides methods that let you supply parameters as any native Java type and many Java object types. SQLServerPreparedStatement prepares a statement by using the SQL Server **sp_prepare** stored procedure, and then reuses the returned statement handle for each subsequent running of the statement, typically using different parameters provided by the user.  
  
 SQLServerPreparedStatement supports batching, where a set of prepared statements are run in a single database round trip, to improve runtime performance.  
  
 This class supports unwrapping to SQLServerPreparedStatement class, ISQLServerPreparedStatement interface, java.sql.PreparedStatement interface, and the classes and interfaces supported by SQLServerStatement for unwrapping. For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  