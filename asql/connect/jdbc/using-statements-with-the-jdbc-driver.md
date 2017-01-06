---
title: "Using Statements with the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7f8f3e8f-841e-4449-9154-b5366870121f
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
# Using Statements with the JDBC Driver
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  The Microsoft JDBC Driver for SQL Server can be used to work with data in a SQL Server database in a variety of ways. The JDBC driver can be used to run SQL statements against the database, or it can be used to call stored procedures in the database, using both input and output parameters. The JDBC driver also supports using SQL escape sequences, update counts, automatically generated keys, and performing updates within a batch operation.  
  
 The JDBC driver provides three classes for retrieving data from a SQL Server database:  
  
1.  [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) - used for running SQL statements without parameters.  
  
2.  [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) - (inherited from SQLServerStatement), used for running compiled SQL statements that might contain IN parameters.  
  
3.  [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) - (inherited from SQLServerPreparedStatement), used for running stored procedures that might contain IN parameters, OUT parameters, or both.  
  
 The topics in this section discuss how you can use each of the three statement classes to work with data in a SQL Server database.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Using Statements with SQL](../../connect/jdbc/using-statements-with-sql.md)|Describes how to use SQL statements with the JDBC driver to work with data in a SQL Server database.|  
|[Using Statements with Stored Procedures](../../connect/jdbc/using-statements-with-stored-procedures.md)|Describes how to use stored procedures with the JDBC driver to work with data in a SQL Server database.|  
|[Using Multiple Result Sets](../../connect/jdbc/using-multiple-result-sets.md)|Describes how to use the JDBC driver to retrieve data from multiple result sets.|  
|[Using SQL Escape Sequences](../../connect/jdbc/using-sql-escape-sequences.md)|Describes how to use SQL escape sequences, such as date and time literals and functions.|  
|[Using Auto Generated Keys](../../connect/jdbc/using-auto-generated-keys.md)|Describes how to use automatically generated keys.|  
|[Performing Batch Operations](../../connect/jdbc/performing-batch-operations.md)|Describes how to use the JDBC driver to perform batch operations.|  
|[Handling Complex Statements](../../connect/jdbc/handling-complex-statements.md)|Describes how to use the JDBC driver to run complex statements that perform a variety of tasks and might return different types of data.|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  