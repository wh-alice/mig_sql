---
title: "setObject Method (int, java.lang.Object) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.setObject (int, java.lang.Object)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 61f19faa-3006-4a1c-974c-55951e3b3000
caps.latest.revision: 22
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
# setObject Method (int, java.lang.Object)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the value of the designated parameter by using the given object.  
  
## Syntax  
  
```  
  
public final void setObject(int index,  
                            java.lang.Object obj)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the parameter number.  
  
 *obj*  
  
 An object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setObject method is specified by the setObject method in the java.sql.PreparedStatement interface.  
  
 Before calling this setObject method, the application might set the specified parameter by using one of the following methods:  
  
-   The set\<Type> methods of the SQLServerPreparedStatement class or the SQLServerCallableStatement class  
  
-   The setNull methods of the SQLServerPreparedStatement class or the SQLServerCallableStatement class  
  
-   The [registerOutParameter](../../../connect/jdbc/reference/registeroutparameter-method--sqlservercallablestatement-.md) method of the SQLServerCallableStatement class  
  
 In such a case, the type of the parameter is automatically set. If the application calls this setObject method with an obj value NULL, the driver assumes that the type of the parameter is one that is set by the previously called method.  
  
 If the obj value is NULL and no type information for that parameter can be determined, this setObject method converts the specified parameter to a CHAR before sending it to the database.  
  
 Beginning with SQL Server JDBC Driver 3.0, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [setObject Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/setobject-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  