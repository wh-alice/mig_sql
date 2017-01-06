---
title: "Using SSL Encryption | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8e566243-2f93-4b21-8065-3c8336649309
caps.latest.revision: 32
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
# Using SSL Encryption
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Secure Sockets Layer (SSL) encryption enables transmitting encrypted data across the network between an instance of SQL Server and a client application.  
  
 Secure Sockets Layer (SSL) is a protocol for establishing a secure communication channel to prevent the interception of critical or sensitive information across the network and other Internet communications. SSL allows the client and the server to authenticate the identity of each other. After the participants are authenticated, SSL provides encrypted connections between them for secure message transmission.  
  
 The Microsoft JDBC Driver for SQL Server provides an infrastructure to enable and disable the encryption on a particular connection based on the user specified connection properties and the server and client settings. The user can specify the certificate store location and password, a host name to be used to validate the certificate, and when to encrypt the communication channel.  
  
 Enabling SSL encryption increases the security of data transmitted across networks between instances of SQL Server and applications. However, enabling encryption does slow performance.  
  
 The topics in this section describe how the Microsoft JDBC Driver for SQL Server version supports SSL encryption, including new connection properties, and how you can configure the trust store at the client-side.  
  
> [!NOTE]  
>  The **hostNameInCertificate** connection property is recommended to validate an SSL certificate.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Understanding SSL Support](../../connect/jdbc/understanding-ssl-support.md)|Describes how the Microsoft JDBC Driver for SQL Server supports SSL encryption.|  
|[Connecting with SSL Encryption](../../connect/jdbc/connecting-with-ssl-encryption.md)|Describes how to connect to a SQL Server database by using the new SSL specific connection properties.|  
|[Configuring the Client for SSL Encryption](../../connect/jdbc/configuring-the-client-for-ssl-encryption.md)|Describes how to configure the default trust store at the client-side and how to import a private certificate to the client computer's trust store.|  
  
## See Also  
 [Securing JDBC Driver Applications](../../connect/jdbc/securing-jdbc-driver-applications.md)  
  
  