---
title: "SQLServerXAResource Class | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: df957b79-536f-4db7-b6ac-3d59343559fc
caps.latest.revision: 10
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
# SQLServerXAResource Class
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Represents an XAResource for XA distributed transaction management.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.lang.Object  
  
 **Implements:** javax.transaction.xa.XAResource  
  
## Syntax  
  
```  
  
public class SQLServerXAResource  
```  
  
## Remarks  
 XA transactions are implemented in SQL Server by using Microsoft Distributed Transaction Manager (DTC). The SQLServerXAResource class makes calls to a SQL Server extended dll named sqljdbc_xa.dll, which interfaces with DTC. XA calls that are received by SQLServerXAResource (XA_START, XA_END, XA_PREPARE, and so forth) are mapped to the corresponding calls to DTC functions.  
  
## See Also  
 [SQLServerXAResource Members](../../../connect/jdbc/reference/sqlserverxaresource-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  