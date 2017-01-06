---
title: "setFailoverPartner Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setFailoverPartner"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 5310b7c2-9d10-474f-ad3a-218fe5da694b
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
# setFailoverPartner Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the name of the failover server that is used in a database mirroring configuration.  
  
## Syntax  
  
```  
  
public void setFailoverPartner(java.lang.String serverName)  
```  
  
#### Parameters  
 *serverName*  
  
 A **String** that contains the failover server name.  
  
## Remarks  
 The value set by this method is used in the case of an initial connection failure to the principal server; after the initial connection is made, this value is ignored. The [setDatabaseName](../../../connect/jdbc/reference/setdatabasename-method--sqlserverdatasource-.md) method should also be used in conjunction with this method or an exception will be thrown.  
  
 The driver does not support specifying the port number of the failover server when the failover server name is set. However, calling the [setServerName](../../../connect/jdbc/reference/setservername-method--sqlserverdatasource-.md) method and the [setInstanceName](../../../connect/jdbc/reference/setinstancename-method--sqlserverdatasource-.md) method with the [setFailoverPartner](../../../connect/jdbc/reference/setfailoverpartner-method--sqlserverdatasource-.md) method is supported.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  