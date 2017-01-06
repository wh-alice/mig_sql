---
title: "Handling Complex Statements | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6b807a45-a8b5-4b1c-8b7b-d8175c710ce0
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
# Handling Complex Statements
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When you use the Microsoft JDBC Driver for SQL Server, you might have to handle complex statements, including statements that are dynamically generated at runtime. Complex statements often perform a variety of tasks, including updates, inserts, and deletes. These types of statements might also return multiple result sets and output parameters. In these situations, the Java code that runs the statements might not know in advance the types and number of objects and data returned.  
  
 To effectively process complex statements, the JDBC driver provides a number of methods to query the objects and data that is returned so your application can correctly process them. The key to processing complex statements is the [execute](../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class. This method returns a **boolean** value. When the value is true, the first result returned from the statements is a result set. When the value is false, the first result returned was an update count.  
  
 When you know the type of object or data that was returned, you can use either the [getResultSet](../../connect/jdbc/reference/getresultset-method--sqlserverstatement-.md) or the [getUpdateCount](../../connect/jdbc/reference/getupdatecount-method--sqlserverstatement-.md) method to process that data. To proceed to the next object or data that is returned from the complex statement, you can call the [getMoreResults](../../connect/jdbc/reference/getmoreresults-method---.md) method.  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, a complex statement is constructed that combines a stored procedure call with a SQL statement, the statements are run, and then a `do` loop is used to process all the result sets and updated counts that are returned.  
  
 [!code[JDBC#HandlingComplexStatements1](../../connect/jdbc/codesnippet/Java/handling-complex-statements_1.java)]  
  
## See Also  
 [Using Statements with the JDBC Driver](../../connect/jdbc/using-statements-with-the-jdbc-driver.md)  
  
  