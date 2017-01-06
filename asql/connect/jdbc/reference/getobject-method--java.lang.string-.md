---
title: "getObject Method (java.lang.String) | Microsoft Docs"
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
  - "SQLServerCallableStatement.getObject (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: a1e955ce-13db-4828-ad59-d9b6a8b2c6cc
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
# getObject Method (java.lang.String)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the value of the designated parameter as an object in the Java programming language given the parameter name.  
  
## Syntax  
  
```  
  
public java.lang.Object getObject(java.lang.String sCol)  
```  
  
#### Parameters  
 *sCol*  
  
 A **String** that contains the parameter name.  
  
## Return Value  
 An **Object** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getObject method is specified by the getObject method in the java.sql.CallableStatement interface.  
  
 This method will return the value of the given column as a Java object. The type of the Java object will be the default Java object type corresponding to the SQL type of the column, following the mapping for built-in types that is specified in the JDBC specification. If the value is an SQL NULL, the driver returns a Java null.  
  
 This method can also be used to read database-specific abstract data types. In the JDBC 2.0 API, the behavior of the getObject method is extended to materialize data of SQL user-defined types. When a column contains a structured or distinct value, the behavior of this method is as if it were a call to `getObject(columnIndex, this.getStatement().getConnection().getTypeMap())`.  
  
 Beginning in the SQL Server JDBC Driver 3.0:  
  
-   A value of type **date** will be returned as a java.sql.Date object.  
  
-   A value of type **time** will be returned as a java.sql.Time object.  
  
-   A value of type **datetime2** will be returned as a java.sql.Timestamp object.  
  
-   A value of type **datetimeoffset** will be returned as a microsoft.sql.DateTimeOffset object.  
  
## See Also  
 [getObject Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getobject-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  