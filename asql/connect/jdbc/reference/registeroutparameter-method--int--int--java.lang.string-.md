---
title: "registerOutParameter Method (int, int, java.lang.String) | Microsoft Docs"
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
  - "SQLServerCallableStatement.registerOutParameter (int, int, java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 3eb5c384-6751-4d50-be23-0c2ccc35593c
caps.latest.revision: 12
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
# registerOutParameter Method (int, int, java.lang.String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Registers the OUT parameter in the specified ordinal position to the given JDBC type and type name.  
  
## Syntax  
  
```  
  
public void registerOutParameter(int index,  
                                 int sqlType,  
                                 java.lang.String typeName)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the ordinal position of the parameter.  
  
 *sqlType*  
  
 A JDBC type code as defined in java.sql.Types.  
  
 *typeName*  
  
 A **String** that contains the fully qualified SQL type name.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This registerOutParameter method is specified by the registerOutParameter method in the java.sql.CallableStatement interface.  
  
 Beginning with SQL Server JDBC Driver 3.0, when *sqlType* is of type java.sql.Types.TIME, the behavior of this method is modified by the **sendTimeAsDatetime** connection property ([Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md)) and [SQLServerDataSource.setSendTimeAsDatetime](../../../connect/jdbc/reference/setsendtimeasdatetime-method--sqlserverdatasource-.md).  
  
 For more information, see [Configuring How java.sql.Time Values are Sent to the Server](../../../connect/jdbc/configuring-how-java.sql.time-values-are-sent-to-the-server.md).  
  
## See Also  
 [registerOutParameter Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/registeroutparameter-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  