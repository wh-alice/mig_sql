---
title: "Connection Pooling (Microsoft Drivers for PHP for SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "connection pooling support"
ms.assetid: 4d9a83d4-08de-43a1-975c-0a94005edc94
caps.latest.revision: 14
ms.author: "annemill"
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
  - "zh-cn"
  - "zh-tw"
---
# Connection Pooling (Microsoft Drivers for PHP for SQL Server)
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

The following are important points to note about connection pooling in the Microsoft Drivers for PHP for SQL Server:  
  
-   The Microsoft Drivers for PHP for SQL Server uses ODBC connection pooling.  
  
-   By default, connection pooling is enabled. When you connect to a server, the driver attempts to use a pooled connection before it creates a new one. If an equivalent connection is not found in the pool, a new connection is created and added to the pool. The driver determines whether connections are equivalent based on a comparison of connection strings.  
  
-   When a connection from the pool is used, the connection state is reset.  
  
-   Closing the connection returns the connection to the pool.  
  
For more information about connection pooling, see [Driver Manager Connection Pooling](http://go.microsoft.com/fwlink/?linkid=119622).  
  
## Connection Attributes  
You can force the driver to create a new connection (instead of looking for an equivalent connection in the connection pool) by setting the value of the *ConnectionPooling* attribute in the connection string to **false** (or 0).  
  
If the *ConnectionPooling* attribute is omitted from the connection string or if it is set to **true** (or 1), the driver will only create a new connection if an equivalent connection does not exist in the connection pool.  
  
For information about other connection attributes, see [Connection Options](../../connect/php/connection-options.md).  
  
## See Also  
[How to: Connect Using Windows Authentication](../../connect/php/how-to--connect-using-windows-authentication.md)  
[How to: Connect Using SQL Server Authentication](../../connect/php/how-to--connect-using-sql-server-authentication.md)  
  
