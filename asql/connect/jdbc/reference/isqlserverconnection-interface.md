---
title: "ISQLServerConnection Interface | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 031c01e2-2c65-4fe4-9700-fdbcc7a39f30
caps.latest.revision: 9
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
# ISQLServerConnection Interface
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents a JDBC connection to a MicrosoftSQL Server database. This interface was added in SQL Server JDBC Driver 3.0.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.sql.Connection  
  
## Syntax  
  
```  
  
public interface ISQLServerConnection  
```  
  
## Remarks  
 This interface is implemented by [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md).  
  
 This interface exposes the following Microsoft JDBC Driver for SQL Server-specific field:  
  
|Field|For more information, see|  
|-----------|-------------------------------|  
|public final static int TRANSACTION_SNAPSHOT|[TRANSACTION_SNAPSHOT](../../../connect/jdbc/reference/transaction_snapshot-field--sqlserverconnection-.md)|  
|public UUID getClientConnectionId()|[getClientConnectionID()](../../../connect/jdbc/reference/getclientconnectionid-method--sqlserverconnection-.md)|  
  
## See Also  
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  