---
title: "Using a Stored Procedure with an Update Count | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 64cf4877-5995-4bfc-8865-b7618a5c8d01
caps.latest.revision: 26
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
# Using a Stored Procedure with an Update Count
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  To modify data in a SQL Server database by using a stored procedure, the Microsoft JDBC Driver for SQL Server provides the [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) class. By using the SQLServerCallableStatement class, you can call stored procedures that modify data that is contained in the database and return a count of the number of rows affected, also referred to as the update count.  
  
 After you have set up the call to the stored procedure by using the SQLServerCallableStatement class, you can then call the stored procedure by using either the [execute](../../connect/jdbc/reference/execute-method--sqlserverstatement-.md) or the [executeUpdate](../../connect/jdbc/reference/executeupdate-method--sqlserverstatement-.md) method. The executeUpdate method will return an **int** value that contains the number of rows affected by the stored procedure, but the execute method does not. If you use the execute method and want to get the count of the number of rows affected, you can call the [getUpdateCount](../../connect/jdbc/reference/getupdatecount-method--sqlserverstatement-.md) method after you run the stored procedure.  
  
> [!NOTE]  
>  If you want the JDBC driver to return all update counts, including update counts returned by any triggers that may have fired, set the lastUpdateCount connection string property to "false". For more information about the lastUpdateCount property, see [Setting the Connection Properties](../../connect/jdbc/setting-the-connection-properties.md).  
  
 As an example, create the following table and stored procedure, and also insert sample data in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database:  
  
```  
CREATE TABLE TestTable   
   (Col1 int IDENTITY,   
    Col2 varchar(50),   
    Col3 int);  
  
CREATE PROCEDURE UpdateTestTable  
   @Col2 varchar(50),  
   @Col3 int  
AS  
BEGIN  
   UPDATE TestTable  
   SET Col2 = @Col2, Col3 = @Col3  
END;  
INSERT INTO dbo.TestTable (Col2, Col3) VALUES ('b', 10);  
```  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, the execute method is used to call the UpdateTestTable stored procedure, and then the getUpdateCount method is used to return a count of the rows that are affected by the stored procedure.  
  
 [!code[JDBC#UsingSprocWithUpdateCount1](../../connect/jdbc/codesnippet/Java/using-a-stored-procedure-with-an-update-count_1.java)]  
  
## See Also  
 [Using Statements with Stored Procedures](../../connect/jdbc/using-statements-with-stored-procedures.md)  
  
  