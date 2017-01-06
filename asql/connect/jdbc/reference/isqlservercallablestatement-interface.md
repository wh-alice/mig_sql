---
title: "ISQLServerCallableStatement Interface | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 030a1631-cfcd-41e0-beb5-47f93c01e8e0
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
# ISQLServerCallableStatement Interface
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Represents JDBC callable statements. This interface was added in SQL Server JDBC Driver 3.0.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.sql.CallableStatement, [ISQLServerPreparedStatement](../../../connect/jdbc/reference/isqlserverpreparedstatement-interface.md)  
  
## Syntax  
  
```  
  
public interface ISQLServerCallableStatement  
```  
  
## Remarks  
 This interface is implemented by [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md).  
  
 This interface exposes the following Microsoft JDBC Driver for SQL Server-specific methods:  
  
|Method|For more information, see|  
|------------|-------------------------------|  
|microsoft.sql.DateTimeOffset getDateTimeOffset(int)|[getDateTimeOffset(int)](../../../connect/jdbc/reference/getdatetimeoffset-method--int-.md)|  
|microsoft.sql.DateTimeOffset getDateTimeOffset(String)|[getDateTimeOffset(String)](../../../connect/jdbc/reference/getdatetimeoffset-method--string-.md)|  
|void setDateTimeOffset(String, microsoft.sql.DateTimeOffset)|[setDateTimeOffset](../../../connect/jdbc/reference/setdatetimeoffset-method--sqlservercallablestatement-.md)|  
  
## See Also  
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  