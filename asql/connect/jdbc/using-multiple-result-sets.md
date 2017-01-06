---
title: "Using Multiple Result Sets | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ab6a3cfa-073b-44e9-afca-a8675cfe5fd1
caps.latest.revision: 33
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
# Using Multiple Result Sets
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  When working with inline SQL or SQL Server stored procedures that return more than one result set, the Microsoft JDBC Driver for SQL Server provides the [getResultSet](../../connect/jdbc/reference/getresultset-method--sqlserverstatement-.md) method in the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class for retrieving each set of data returned. In addition, when running a statement that returns more than one result set, you can use the [execute](../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) method of the SQLServerStatement class, because it will return a **boolean** value that indicates if the value returned is a result set or an update count.  
  
 If the execute method returns **true**, the statement that was run has returned one or more result sets. You can access the first result set by calling the getResultSet method. To determine if more result sets are available, you can call the [getMoreResults](../../connect/jdbc/reference/getmoreresults-method--sqlserverstatement-.md) method, which returns a **boolean** value of **true** if more result sets are available. If more result sets are available, you can call the getResultSet method again to access them, continuing the process until all result sets have been processed. If the getMoreResults method returns **false**, there are no more result sets to process.  
  
 If the execute method returns **false**, the statement that was run has returned an update count value, which you can retrieve by calling the [getUpdateCount](../../connect/jdbc/reference/getupdatecount-method--sqlserverstatement-.md) method.  
  
> [!NOTE]  
>  For more information about update counts, see [Using a Stored Procedure with an Update Count](../../connect/jdbc/using-a-stored-procedure-with-an-update-count.md).  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, and an SQL statement is constructed that, when run, returns two result sets:  
  
 [!code[JDBC#UsingMultipleResultSets1](../../connect/jdbc/codesnippet/Java/using-multiple-result-sets_1.java)]  
  
 In this case, the number of result sets returned is known to be two. However, the code is written so that if an unknown number of result sets were returned, such as when calling a stored procedure, they would all be processed. To see an example of calling a stored procedure that returns multiple result sets along with update values, see [Handling Complex Statements](../../connect/jdbc/handling-complex-statements.md).  
  
> [!NOTE]  
>  When you make the call to the getMoreResults method of the SQLServerStatement class, the previously returned result set is implicitly closed.  
  
## See Also  
 [Using Statements with the JDBC Driver](../../connect/jdbc/using-statements-with-the-jdbc-driver.md)  
  
  