---
title: "getConnection Method (java.lang.String, java.lang.String) | Microsoft Docs"
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
  - "SQLServerDataSource.getConnection (java.lang.String, java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 78db89d6-a8a0-4116-8885-548e627220ed
caps.latest.revision: 10
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
# getConnection Method (java.lang.String, java.lang.String)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Tries to establish a connection with the data source that this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object represents by using the given user name and password.  
  
## Syntax  
  
```  
  
public java.sql.Connection getConnection(java.lang.String username,  
                                         java.lang.String password)  
```  
  
#### Parameters  
 *username*  
  
 A **String** that contains the user name.  
  
 *password*  
  
 A **String** that contains the password.  
  
## Return Value  
 A [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This getConnection method is specified by the getConnection method in the javax.sql.DataSource interface.  
  
 Calling the getConnection method with a non-null user name or password will replace the user name and password properties that are set on the SQLServerDataSource class when initializing the SQLServerConnection object. For example, if the caller has called [setUser](../../../connect/jdbc/reference/setuser-method--sqlserverdatasource-.md) and [setPassword](../../../connect/jdbc/reference/setpassword-method--sqlserverdatasource-.md) on the data source, and then calls getConnection and supplies a non-null user name or a non-null password, the user name and password set by setUser and setPassword will be replaced by the user name and password passed into getConnection.  
  
> [!NOTE]  
>  The user name and password that are set inside the URL by using a call to the [setURL](../../../connect/jdbc/reference/seturl-method--sqlserverdatasource-.md) method will not be changed in this case.  
  
## See Also  
 [getConnection Method &#40;SQLServerDataSource&#41;](../../../connect/jdbc/reference/getconnection-method--sqlserverdatasource-.md)   
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  