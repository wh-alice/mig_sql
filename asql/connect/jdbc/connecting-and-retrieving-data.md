---
title: "Connecting and Retrieving Data | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ce43cc20-46a3-42ff-a3fb-75ad1ed10e08
caps.latest.revision: 11
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
# Connecting and Retrieving Data
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  When you are working with the Microsoft JDBC Driver for SQL Server, there are two primary methods for establishing a connection to a SQL Server database. One is to set connection properties in the connection URL, and then call the getConnection method of the DriverManager class to return a [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) object.  
  
> [!NOTE]  
>  For a list of the connection properties supported by the JDBC driver, see [Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md).  
  
 The second method involves setting the connection properties by using setter methods of the [SQLServerDataSource](../../connect/jdbc/reference/sqlserverdatasource-class.md) class, and then calling the [getConnection](../../connect/jdbc/reference/getconnection-method--sqlserverdatasource-.md) method to return a SQLServerConnection object.  
  
 The topics in this section describe the different ways in which you can connect to a SQL Server database, and they also demonstrate different techniques for retrieving data.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Connection URL Sample](../../connect/jdbc/connection-url-sample.md)|Describes how to use a connection URL to connect to SQL Server and then use an SQL statement to retrieve data.|  
|[Data Source Sample](../../connect/jdbc/data-source-sample.md)|Describes how to use a data source to connect to SQL Server and then use a stored procedure to retrieve data.|  
  
## See Also  
 [Sample JDBC Driver Applications](../../connect/jdbc/sample-jdbc-driver-applications.md)  
  
  