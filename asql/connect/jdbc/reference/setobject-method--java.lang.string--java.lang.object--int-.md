---
title: "setObject Method (java.lang.String, java.lang.Object, int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.setObject (java.lang.String, java.lang.Object, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: a9a0c802-7851-4826-b173-87b0c0acb3a0
caps.latest.revision: 20
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
# setObject Method (java.lang.String, java.lang.Object, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the value of the designated parameter by using the given object and target type.  
  
## Syntax  
  
```  
  
public void setObject(java.lang.String sCol,  
                      java.lang.Object o,  
                      int n)  
```  
  
#### Parameters  
 *sCol*  
  
 A **String** that contains the parameter name.  
  
 *o*  
  
 An **Object** value.  
  
 *n*  
  
 An **int** that indicates the target type as defined in java.sql.Types.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setObject method is specified by the setObject method in the java.sql.CallableStatement interface.  
  
 Beginning with SQL Server JDBC Driver 3.0, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [setObject Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setobject-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  