---
title: "Connecting to SQL Server with the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 94bcfbe3-f00e-4774-bda8-bb7577518fec
caps.latest.revision: 30
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
# Connecting to SQL Server with the JDBC Driver
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  One of the most fundamental things that you will do with the Microsoft JDBC Driver for SQL Server is to make a connection to a SQL Server database. All interaction with the database occurs through the [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) object, and because the JDBC driver has such a flat architecture, almost all interesting behavior touches the SQLServerConnection object.  
  
 If a SQL Server is only listening on an IPv6 port, set the java.net.preferIPv6Addresses system property to make sure that IPv6 is used instead of IPv4 to connect to the SQL Server:  
  
```  
System.setProperty("java.net.preferIPv6Addresses", "true");  
```  
  
 The topics in this section describe how to make and work with a connection to a SQL Server database.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Building the Connection URL](../../connect/jdbc/building-the-connection-url.md)|Describes how to form a connection URL for connecting to a SQL Server database. Also describes connecting to named instances of a SQL Server database.|  
|[Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md)|Describes the various connection properties and how they can be used when you connect to a SQL Server database.|  
|[Setting the Data Source Properties](../../connect/jdbc/setting-the-data-source-properties.md)|Describes how to use data sources in a Java Platform, Enterprise Edition (Java EE) environment.|  
|[Working with a Connection](../../connect/jdbc/working-with-a-connection.md)|Describes the various ways in which to create an instance of a connection to a SQL Server database.|  
|[Using Connection Pooling](../../connect/jdbc/using-connection-pooling.md)|Describes how the JDBC driver supports the use of connection pooling.|  
|[Using Database Mirroring &#40;JDBC&#41;](../../connect/jdbc/using-database-mirroring--jdbc-.md)|Describes how the JDBC driver supports the use of database mirroring.|  
|[JDBC Driver Support for High Availability, Disaster Recovery](../../connect/jdbc/jdbc-driver-support-for-high-availability--disaster-recovery.md)|Describes how to develop an application that will connect to an AlwaysOn  availability group.|  
|[Using Kerberos Integrated Authentication to Connect to SQL Server](../../connect/jdbc/using-kerberos-integrated-authentication-to-connect-to-sql-server.md)|Discusses a Java implementation for applications to connect to a SQL Server database using Kerberos integrated authentication.|  
|[Connecting to an Azure SQL database](../../connect/jdbc/connecting-to-an-azure-sql-database.md)|Discusses connectivity issues for databases on SQL Azure.|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  