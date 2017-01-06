---
title: "Using Database Metadata | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8b048371-e912-4ed1-afd7-436978f48888
caps.latest.revision: 13
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
# Using Database Metadata
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  To query a database for information about what it supports, the Microsoft JDBC Driver for SQL Server implements the [SQLServerDatabaseMetaData](../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md) class. This class contains numerous methods that return information in the form of a single value, or as a result set.  
  
 To create a SQLServerDatabaseMetaData object, you can use the [getMetaData](../../connect/jdbc/reference/getmetadata-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) class to get information about the database that it is connected to.  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, the getMetaData method of the SQLServerConnection class is used to return a SQLServerDatabaseMetadata object, and then various methods of the SQLServerDatabaseMetaData object are used to display information about the driver, driver version, database name, and database version.  
  
 [!code[JDBC#UsingDBMetaData1](../../connect/jdbc/codesnippet/Java/using-database-metadata_1.java)]  
  
## See Also  
 [Handling Metadata with the JDBC Driver](../../connect/jdbc/handling-metadata-with-the-jdbc-driver.md)  
  
  