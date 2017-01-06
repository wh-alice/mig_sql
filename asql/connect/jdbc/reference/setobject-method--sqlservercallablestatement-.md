---
title: "setObject Method (SQLServerCallableStatement) | Microsoft Docs"
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
  - "SQLServerCallableStatement.setObject"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 7110f6c5-4af3-4b50-a4d4-1bae1876c70d
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
# setObject Method (SQLServerCallableStatement)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the value of the designated parameter using the given object.  
  
 Beginning with SQL Server JDBC Driver 3.0, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## Overload List  
  
|Name|Description|  
|----------|-----------------|  
|[setObject (java.lang.String, java.lang.Object)](../../../connect/jdbc/reference/setobject-method--java.lang.string--java.lang.object-.md)|Sets the value of the designated parameter using the given object.|  
|[setObject (java.lang.String, java.lang.Object, int)](../../../connect/jdbc/reference/setobject-method--java.lang.string--java.lang.object--int-.md)|Sets the value of the designated parameter using the given object and target type.|  
|[setObject (java.lang.String, java.lang.Object, int, int)](../../../connect/jdbc/reference/setobject-method--java.lang.string--java.lang.object--int--int-.md)|Sets the value of the designated parameter using the given object, target type, and scale.|  
  
## See Also  
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  