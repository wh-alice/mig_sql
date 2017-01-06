---
title: "Using Result Set Metadata | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5e37529a-30db-48c8-b90a-ae9657d0f6b0
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
# Using Result Set Metadata
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  To query a result set for information about the columns that it contains, the Microsoft JDBC Driver for SQL Server implements the [SQLServerResultSetMetaData](../../connect/jdbc/reference/sqlserverresultsetmetadata-class.md) class. This class contains numerous methods that return information in the form of a single value.  
  
 To create a SQLServerResultSetMetaData object, you can use the [getMetaData](../../connect/jdbc/reference/getmetadata-method--sqlserverresultset-.md) method of the [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) class.  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, the getMetaData method of the SQLServerResultSet class is used to return a SQLServerResultSetMetaData object, and then various methods of the SQLServerResultSetMetaData object are used to display information about the name and data type of the columns contained within the result set.  
  
 [!code[JDBC#UsingResultSetMetaData1](../../connect/jdbc/codesnippet/Java/using-result-set-metadata_1.java)]  
  
## See Also  
 [Handling Metadata with the JDBC Driver](../../connect/jdbc/handling-metadata-with-the-jdbc-driver.md)  
  
  