---
title: "Using Statements with SQL | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: fe28f48a-e1bc-48ff-a5e7-c24cd6e5ecc7
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
# Using Statements with SQL
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  When you work with data in a SQL Server database by using the Microsoft JDBC Driver for SQL Server and inline SQL statements, there are different classes that you can use. Which class you use depends on the type of SQL statement that you want to run.  
  
 If your SQL statement contains no IN parameters, use the [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md) class, but if it does contain IN parameters, use the [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) class.  
  
> [!NOTE]  
>  If you need to use SQL statements that contain both IN and OUT parameters, you must implement them as stored procedures and call them by using the [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) class. For more information about using stored procedures, see [Using Statements with Stored Procedures](../../connect/jdbc/using-statements-with-stored-procedures.md).  
  
 The following sections describe the different scenarios for working with data in a SQL Server database by using SQL statements.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Using an SQL Statement with No Parameters](../../connect/jdbc/using-an-sql-statement-with-no-parameters.md)|Describes how to use SQL statements that contain no parameters.|  
|[Using an SQL Statement with Parameters](../../connect/jdbc/using-an-sql-statement-with-parameters.md)|Describes how to use SQL statements that contain parameters.|  
|[Using an SQL Statement to Modify Database Objects](../../connect/jdbc/using-an-sql-statement-to-modify-database-objects.md)|Describes how to use SQL statements to modify database objects.|  
|[Using an SQL Statement to Modify Data](../../connect/jdbc/using-an-sql-statement-to-modify-data.md)|Describes how to use SQL statements to modify data in a database.|  
  
## See Also  
 [Using Statements with the JDBC Driver](../../connect/jdbc/using-statements-with-the-jdbc-driver.md)  
  
  