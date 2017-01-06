---
title: "setObject Method (SQLServerPreparedStatement) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.setObject"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 93a2b22c-82b4-48c7-a428-369ebe98a372
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
# setObject Method (SQLServerPreparedStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the value of the designated parameter by using the given object.  
  
 Beginning with SQL Server JDBC Driver 3.0, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## Overload List  
  
|Name|Description|  
|----------|-----------------|  
|[setObject (int, java.lang.Object)](../../../connect/jdbc/reference/setobject-method--int--java.lang.object-.md)|Sets the value of the designated parameter by using the given object.|  
|[setObject (int, java.lang.Object, int)](../../../connect/jdbc/reference/setobject-method--int--java.lang.object--int-.md)|Sets the value of the designated parameter by using the given object and target type.|  
|[setObject (int, java.lang.Object, int, int)](../../../connect/jdbc/reference/setobject-method--int--java.lang.object--int--int-.md)|Sets the value of the designated parameter by using the given object, target type, and scale.|  
  
## See Also  
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  