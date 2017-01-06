---
title: "setObject Method (java.lang.String, java.lang.Object) | Microsoft Docs"
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
  - "SQLServerCallableStatement.setObject (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 14b84409-5510-4642-a83b-732d8511c5b1
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
# setObject Method (java.lang.String, java.lang.Object)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the value of the designated parameter using the given object.  
  
## Syntax  
  
```  
  
public void setObject(java.lang.String sCol,  
                      java.lang.Object o)  
```  
  
#### Parameters  
 *sCol*  
  
 A **String** that contains the parameter name.  
  
 *o*  
  
 An **Object** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setObject method is specified by the setObject method in the java.sql.CallableStatement interface.  
  
 This method converts the specified parameter to a CHAR if a NULL is given, before sending it to the database. If the parameter is declared as a binary, varbinary or image SQL type, then an exception will be thrown when the statement is executed.  
  
 Beginning with SQL Server JDBC Driver 3.0, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [setObject Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setobject-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  