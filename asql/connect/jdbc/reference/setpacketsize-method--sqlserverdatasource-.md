---
title: "setPacketSize Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setPacketSize"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 5d490edc-a223-4870-a838-784952497e5f
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
# setPacketSize Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the current network packet size used to communicate with SQL Server, specified in bytes.  
  
## Syntax  
  
```  
  
public void setPacketSize(int packetSize)  
```  
  
#### Parameters  
 *packetSize*  
  
 An **int** value containing the network packet size.  
  
## Remarks  
 The acceptable range of values of this property is [-1 | 0 | 512..32767]. If this property is set to a value outside the acceptable range, an exception will occur.  
  
 The application might want to set the packetSize property while connecting with SSL (Secure Sockets Layer) encryption. The Microsoft JDBC Driver for SQL Server negotiates the packet size with the server. If the encrypt property is set to "**true**" and the negotiated packet size is larger than the Java Virtual Machine (JVM)'s default security provider's SSL record size, the driver will raise an error and terminate the connection.  
  
 In addition, the application might want to set the packetSize property without requesting the SSL encryption. In this case, if the server requires the client to support SSL encryption, the driver checks the JVM's default security provider's SSL record size. If the packetSize property is larger than the JVM's default security provider's SSL record size, the driver will raise an error and terminate the connection.  
  
 For more information about using SSL, see [Using SSL Encryption](../../../connect/jdbc/using-ssl-encryption.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  