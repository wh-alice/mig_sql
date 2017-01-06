---
title: "Securing JDBC Driver Applications | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 90724ec6-a9cb-43ef-903e-793f89410bc0
caps.latest.revision: 19
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
# Securing JDBC Driver Applications
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Enhancing the security of a Microsoft JDBC Driver for SQL Server application involves more than avoiding common coding pitfalls. An application that accesses data has many potential points of failure that an attacker can exploit to retrieve, manipulate, or destroy sensitive data. It is important to understand all aspects of security, from the process of threat modeling during the design phase of your application to its eventual deployment, and continuing through its ongoing maintenance.  
  
 The topics in this section describe some common security concerns including connection strings, validating user input, and general application security.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Securing Connection Strings](../../connect/jdbc/securing-connection-strings.md)|Describes techniques to help protect information used to connect to a data source.|  
|[Validating User Input](../../connect/jdbc/validating-user-input.md)|Describes techniques to validate user input.|  
|[Application Security](../../connect/jdbc/application-security.md)|Describes how to use Java policy permissions to help secure a JDBC driver application.|  
|[Using SSL Encryption](../../connect/jdbc/using-ssl-encryption.md)|Describes how to establish a secure communication channel with a SQL Server database using Secure Sockets Layer (SSL).|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  