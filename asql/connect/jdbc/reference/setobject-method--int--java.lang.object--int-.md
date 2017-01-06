---
title: "setObject Method (int, java.lang.Object, int) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.setObject (int, java.lang.Object, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 78bfb6cc-8ca4-4879-9e2b-04164e746314
caps.latest.revision: 19
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
# setObject Method (int, java.lang.Object, int)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the value of the designated parameter by using the given object and target type.  
  
## Syntax  
  
```  
  
public final void setObject(int n,  
                            java.lang.Object obj,  
                            int targetSqlType)  
```  
  
#### Parameters  
 *n*  
  
 An **int** that indicates the parameter number.  
  
 *obj*  
  
 An object.  
  
 *targetSqlType*  
  
 An **int** that indicates the target type as defined in java.sql.Types.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setObject method is specified by the setObject method in the java.sql.PreparedStatement interface.  
  
 Beginning with SQL Server JDBC Driver 3.0, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [setObject Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/setobject-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  