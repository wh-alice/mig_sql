---
title: "getPooledConnection Method () | Microsoft Docs"
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
  - "SQLServerConnectionPoolDataSource.getPooledConnection ()"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: aad6c325-3398-462c-aa6e-201dc89fa5ef
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
# getPooledConnection Method ()
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Tries to establish a physical database connection that can be used as a pooled connection.  
  
## Syntax  
  
```  
  
public javax.sql.PooledConnection getPooledConnection()  
```  
  
## Return Value  
 A [SQLServerPooledConnection](../../../connect/jdbc/reference/sqlserverpooledconnection-class.md) object.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This getPooledConnection method is specified by the getPooledConnection method in the javax.sql.ConnectionPoolDataSource interface.  
  
## See Also  
 [getPooledConnection](../../../connect/jdbc/reference/getpooledconnection-method--sqlserverconnectionpooldatasource-.md)   
 [SQLServerConnectionPoolDataSource Methods](../../../connect/jdbc/reference/sqlserverconnectionpooldatasource-methods.md)   
 [SQLServerConnectionPoolDataSource Members](../../../connect/jdbc/reference/sqlserverconnectionpooldatasource-members.md)   
 [SQLServerConnectionPoolDataSource Class](../../../connect/jdbc/reference/sqlserverconnectionpooldatasource-class.md)  
  
  