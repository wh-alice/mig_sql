---
title: "Handling Errors | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8fd5b5ef-d939-4b78-b900-5b7b6ddb3eb9
caps.latest.revision: 14
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
# Handling Errors
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When using the Microsoft JDBC Driver for SQL Server, all database error conditions are returned to your Java application as exceptions using the [SQLServerException](../../connect/jdbc/reference/sqlserverexception-class.md) class. The following methods of the SQLServerException class are inherited from java.sql.SQLException and java.lang.Throwable; and they can be used to return specific information about the SQL Server error that has occurred:  
  
-   getSQLState returns the standard X/Open or SQL99 state code of the exception.  
  
-   getErrorCode returns the specific database error number.  
  
-   getMessage returns the full text of the exception. The error message text describes the problem, and frequently includes placeholders for information, such as object names, that are inserted in the error message when it is displayed.  
  
-   getNextException returns the next SQLServerException object or null if there are no more exception objects to return.  
  
 In the following example, an open connection to the SQL Server[AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function and a malformed SQL statement is constructed that does not have a FROM clause. Then, the statement is run and an SQL exception is processed.  
  
 [!code[JDBC#HandlingErrors1](../../connect/jdbc/codesnippet/Java/handling-errors_1.java)]  
  
## See Also  
 [Diagnosing Problems with the JDBC Driver](../../connect/jdbc/diagnosing-problems-with-the-jdbc-driver.md)  
  
  