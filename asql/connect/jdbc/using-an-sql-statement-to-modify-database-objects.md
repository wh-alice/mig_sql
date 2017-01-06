---
title: "Using an SQL Statement to Modify Database Objects | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f49ea499-df3c-4e85-9fc7-450fb99622a6
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
# Using an SQL Statement to Modify Database Objects
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  To modify SQL Server database objects by using an SQL statement, you can use the [executeUpdate](../../connect/jdbc/reference/executeupdate-method--sqlserverstatement-.md) method of the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class. The executeUpdate method will pass the SQL statement to the database for processing, and then return a value of 0 because no rows were affected.  
  
 To do this, you must first create a SQLServerStatement object by using the [createStatement](../../connect/jdbc/reference/createstatement-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) class.  
  
> [!NOTE]  
>  SQL statements that modify objects within a database are called Data Definition Language (DDL) statements. These include statements such as CREATE TABLE, DROP TABLE, CREATE INDEX, and DROP INDEX. For more information about the types of DDL statements that are supported by SQL Server, see SQL Server Books Online.  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, an SQL statement is constructed that will create the simple TestTable in the database, and then the statement is run and the return value is displayed.  
  
 [!code[JDBC#UsingSQLToModifyDBObjects1](../../connect/jdbc/codesnippet/Java/using-an-sql-statement-to-modify-database-objects_1.java)]  
  
## See Also  
 [Using Statements with SQL](../../connect/jdbc/using-statements-with-sql.md)  
  
  