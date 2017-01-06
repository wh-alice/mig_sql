---
title: "Using an SQL Statement with No Parameters | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4b0728bd-059b-4b71-895c-999335bc7427
caps.latest.revision: 10
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
# Using an SQL Statement with No Parameters
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  To work with data in a SQL Server database by using an SQL statement that contains no parameters, you can use the [executeQuery](../../connect/jdbc/reference/executequery-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class to return a [SQLServerResultSet](../../connect/jdbc/reference/sqlserverresultset-class.md) that will contain the requested data. To do this, you must first create a SQLServerStatement object by using the [createStatement](../../connect/jdbc/reference/createstatement-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) class.  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, an SQL statement is constructed and run, and then the results are read from the result set.  
  
 [!code[JDBC#UsingSQLWithNoParams1](../../connect/jdbc/codesnippet/Java/using-an-sql-statement-with-no-parameters_1.java)]  
  
 For more information about using result sets, see [Managing Result Sets with the JDBC Driver](../../connect/jdbc/managing-result-sets-with-the-jdbc-driver.md).  
  
## See Also  
 [Using Statements with SQL](../../connect/jdbc/using-statements-with-sql.md)  
  
  