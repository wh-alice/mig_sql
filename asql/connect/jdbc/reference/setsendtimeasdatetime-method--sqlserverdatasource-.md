---
title: "setSendTimeAsDatetime Method (SQLServerDataSource) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 705a0494-b5e2-43db-940a-1b8cec550cdb
caps.latest.revision: 14
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
# setSendTimeAsDatetime Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  This method was added in SQL Server JDBC Driver 3.0.  
  
 Modifies the setting of the **sendTimeAsDatetime** connection property.  
  
## Syntax  
  
```  
  
public void setSendTimeAsDatetime(boolean sendTimeAsDateTime)  
```  
  
#### Parameters  
 *sendTimeAsDateTime*  
  
 A Boolean value. When true, causes java.sql.Time values to be sent to the server as SQL Server **datetime** types. When false, causes java.sql.Time values to be sent to the server as SQL Server **time** types.  
  
## Remarks  
 [SQLServerDataSource.getSendTimeAsDatetime](../../../connect/jdbc/reference/getsendtimeasdatetime-method--sqlserverdatasource-.md) returns the setting of the **sendTimeAsDatetime** connection property.  
  
 For more information on the **sendTimeAsDatetime** connection property, see [Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  