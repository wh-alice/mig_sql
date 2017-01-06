---
title: "getSendTimeAsDatetime Method (SQLServerDataSource) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 02287122-5dc1-455d-987f-95fd9a69d503
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
# getSendTimeAsDatetime Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  This method was added in SQL Server JDBC Driver 3.0.  
  
 Returns the setting of the **sendTimeAsDatetime** connection property.  
  
## Syntax  
  
```  
  
public boolean getSendTimeAsDatetime();  
```  
  
## Return Value  
 **true** if java.sql.Time values will be sent to the server as a SQL Server **datetime** type. **false** if java.sql.Time values will be sent to the server as a SQL Server **time** type.  
  
## Remarks  
 See [Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md) for more information about the **sendTimeAsDatetime** connection property.  
  
 [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md) lets you programmatically set the **sendTimeAsDatetime** connection property.  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  