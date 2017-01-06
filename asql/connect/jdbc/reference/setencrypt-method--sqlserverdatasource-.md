---
title: "setEncrypt Method (SQLServerDataSource) | Microsoft Docs"
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
  - "setEncrypt Method (SQLServerDataSource)"
apilocation: 
  - "setEncrypt Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: 0c85a9c1-f27c-457e-8461-403cc03e2d17
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
# setEncrypt Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets a **Boolean** value that indicates if the encrypt property is enabled.  
  
## Syntax  
  
```  
  
public void setEncypt(boolean encrypt)  
```  
  
#### Parameters  
 *encrypt*  
  
 **true** if the Secure Sockets Layer (SSL) encryption is enabled between the client and the SQL Server. Otherwise, **false**.  
  
## Remarks  
 If the encrypt property is set to **true**, the Microsoft JDBC Driver for SQL Server ensures that SQL Server uses SSL encryption for all data sent between the client and server if the server has a certificate installed. The default value is **false**.  
  
 The JDBC driver detects the Java Virtual Machine (JVM) it is running on when trying to establish an SSL handshake.  
  
 If the encrypt property is set to **true**, the Microsoft JDBC Driver for SQL Server uses the JVM's default JSSE security provider to negotiate SSL encryption with SQL Server. The default security provider may not support all of the features required to negotiate SSL encryption successfully. For example, the default security provider may not support the size of the RSA public key used in the SQL Server SSL certificate. In this case, the default security provider might raise an error that will cause the JDBC driver to terminate the connection. In order to resolve this issue, do one of the following:  
  
-   Configure the SQL Server with a server certificate that has a smaller RSA public key  
  
-   Configure the JVM to use a different JSSE security provider in the "\<java-home>/lib/security/java.security" security properties file  
  
-   Use a different JVM  
  
 If the encrypt property is unspecified or set to **false**, the driver will not enforce the SQL Server to support SSL encryption. If the SQL Server instance is not configured to force the SSL encryption, a connection is established without any encryption. If the SQL Server instance is configured to force the SSL encryption, the Microsoft JDBC Driver for SQL Server will automatically enable SSL encryption when running on properly configured JVM, or else the connection is terminated and the driver will raise an error.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  