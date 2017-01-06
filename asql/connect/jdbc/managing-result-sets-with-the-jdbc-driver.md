---
title: "Managing Result Sets with the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9ed5ad41-22e0-4e4a-8a79-10512db60d50
caps.latest.revision: 18
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
# Managing Result Sets with the JDBC Driver
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  The result set is an object that represents a set of data returned from a data source, usually as the result of a query. The result set contains rows and columns to hold the requested data elements, and it is navigated with a cursor. A result set can be updatable, meaning that it can be modified and have those modifications pushed to the original data source. A result set can also have various levels of sensitivity to changes in the underlying data source.  
  
 The type of result set is determined when a statement is created, which is when a call to the [createStatement](../../connect/jdbc/reference/createstatement-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) class is made. The fundamental role of a result set is to provide Java applications with a usable representation of the database data. This is typically done with the typed getter and setter methods on the result set data elements.  
  
 In the following example, which is based on the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database, a result set is created by calling the [executeQuery](../../connect/jdbc/reference/executequery-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class. Data from the result set is then displayed by using the [getString](../../connect/jdbc/reference/getstring-method--sqlserverresultset-.md) method of the [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) class.  
  
 [!code[JDBC#ManagingResultSets1](../../connect/jdbc/codesnippet/Java/managing-result-sets-with-the-jdbc-driver_1.java)]  
  
 The topics in this section describe various aspects of result set usage, including cursor types, concurrency, and row locking.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Understanding Cursor Types](../../connect/jdbc/understanding-cursor-types.md)|Describes the different cursor types that the Microsoft JDBC Driver for SQL Server supports.|  
|[Understanding Concurrency Control](../../connect/jdbc/understanding-concurrency-control.md)|Describes how the JDBC driver supports concurrency control.|  
|[Understanding Row Locking](../../connect/jdbc/understanding-row-locking.md)|Describes how the JDBC driver supports row locking.|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  