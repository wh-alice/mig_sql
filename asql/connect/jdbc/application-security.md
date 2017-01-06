---
title: "Application Security | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 940879b4-aa0f-41ce-a369-6cfc0e78e01d
caps.latest.revision: 23
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
# Application Security
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When you use the Microsoft JDBC Driver for SQL Server, it is important to take precautions to ensure the security of your application. The following sections provide information regarding steps you can take to help secure your application.  
  
## Using Java Policy Permissions  
 When you use the Microsoft JDBC Driver for SQL Server, it is important to specify the required Java policy permissions that the JDBC driver requires. The Java Runtime Environment (JRE) provides an extensive security model that you can use at runtime to determine whether a thread has access to a resource. Security policy files can control this access. The policy files themselves are managed by the deployer and the sysadmin for the container, but the permissions listed in this topic are those that affect the functioning of the JDBC driver.  
  
 A typical permission in the policy file looks like the following.  
  
```  
// Example policy file entry.  
grant [signedBy <signer>,] [codeBase <code source>] {  
   permission  <class>  [<name> [, <action list>]];  
};  
```  
  
 The following codebase should be restricted to the JDBC driver codebase to ensure that you grant the least amount of privileges.  
  
```  
grant codeBase "file:/install_dir/lib/-" {  
  
// Grant access to data source.  
permission java.util.PropertyPermission "java.naming.*", "read,write";  
  
// Specify which hosts can be connected to.  
permission java.net.socketPermission "host:port", "connect";  
  
// Logger permission to take advantage of logging.  
permission java.util.logging.LoggingPermission;  
  
// Grant listen/connect/accept permissions to the driver if   
// connecting to a named instance as the client driver.   
// This connects to a udp service and listens for a response.  
permission java.net.SocketPermission "*", "listen, connect, accept";   
};   
```  
  
> [!NOTE]  
>  The code "file:/install_dir/lib/-" refers to the installation directory of the JDBC driver.  
  
## Protecting Server Communication  
 When you use the JDBC driver to communicate with a SQL Server database, you can secure the communication channel by using either Internet Protocol Security (IPSEC) or Secure Sockets Layer (SSL); or you can use both.  
  
 SSL support can be used to provide an additional level of protection besides IPSEC. For more information about using SSL, see [Using SSL Encryption](../../connect/jdbc/using-ssl-encryption.md).  
  
## See Also  
 [Securing JDBC Driver Applications](../../connect/jdbc/securing-jdbc-driver-applications.md)  
  
  