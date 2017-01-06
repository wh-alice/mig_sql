---
title: "SQLServerConnectionPoolDataSource Class | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: b00e5a90-2af7-4d04-8ef8-256183777dcf
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
# SQLServerConnectionPoolDataSource Class
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Represents physical database connections for connection pool managers.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
 **Implements:** javax.sql.ConnectionPoolDataSource  
  
## Syntax  
  
```  
  
public class SQLServerConnectionPoolDataSource  
```  
  
## Remarks  
 SQLServerConnectionPoolDataSource is typically used in Java Application Server environments that support built-in connection pooling and require a ConnectionPoolDataSource to provide physical connections, such as Java Platform, Enterprise Edition (Java EE) application servers that provide JDBC 3.0 API spec connection pooling.  
  
## See Also  
 [SQLServerConnectionPoolDataSource Members](../../../connect/jdbc/reference/sqlserverconnectionpooldatasource-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  