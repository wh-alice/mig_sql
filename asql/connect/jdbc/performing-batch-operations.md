---
title: "Performing Batch Operations | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 1a576d95-7da6-4b7b-8b32-59e5b4d354c4
caps.latest.revision: 22
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
# Performing Batch Operations
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  To improve performance when multiple updates to a SQL Server database are occurring, the Microsoft JDBC Driver for SQL Server provides the ability to submit multiple updates as a single unit of work, also referred to as a batch.  
  
 The [SQLServerStatement](../../connect/jdbc/reference/sqlserverstatement-class.md), [SQLServerPreparedStatement](../../connect/jdbc/reference/sqlserverpreparedstatement-class.md), and [SQLServerCallableStatement](../../connect/jdbc/reference/sqlservercallablestatement-class.md) classes can all be used to submit batch updates. The [addBatch](../../connect/jdbc/reference/addbatch-method--sqlserverpreparedstatement-.md) method is used to add a command. The [clearBatch](../../connect/jdbc/reference/clearbatch-method--sqlserverpreparedstatement-.md) method is used to clear the list of commands. The [executeBatch](../../connect/jdbc/reference/executebatch-method--sqlserverstatement-.md) method is used to submit all commands for processing. Only Data Definition Language (DDL) and Data Manipulation Language (DML) statements that return a simple update count can be run as part of a batch.  
  
 The executeBatch method returns an array of **int** values that correspond to the update count of each command. If one of the commands fails, a BatchUpdateException is thrown, and you should use the getUpdateCounts method of the BatchUpdateException class to retrieve the update count array. If a command fails, the driver continues processing the remaining commands. However, if a command has a syntax error, the statements in the batch fail.  
  
> [!NOTE]  
>  If you do not have to use update counts, you can first issue a SET NOCOUNT ON statement to SQL Server. This will reduce network traffic and additionally enhance the performance of your application.  
  
 As an example, create the following table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database:  
  
```  
CREATE TABLE TestTable   
   (Col1 int IDENTITY,   
    Col2 varchar(50),   
    Col3 int);  
```  
  
 In the following example, an open connection to the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database is passed in to the function, the addBatch method is used to create the statements to be executed, and the executeBatch method is called to submit the batch to the database.  
  
```  
public static void executeBatchUpdate(Connection con) {  
   try {  
      Statement stmt = con.createStatement();  
      stmt.addBatch("INSERT INTO TestTable (Col2, Col3) VALUES ('X', 100)");  
      stmt.addBatch("INSERT INTO TestTable (Col2, Col3) VALUES ('Y', 200)");  
      stmt.addBatch("INSERT INTO TestTable (Col2, Col3) VALUES ('Z', 300)");  
      int[] updateCounts = stmt.executeBatch();  
      stmt.close();  
   }  
   catch (Exception e) {  
      e.printStackTrace();  
   }  
}  
```  
  
## See Also  
 [Using Statements with the JDBC Driver](../../connect/jdbc/using-statements-with-the-jdbc-driver.md)  
  
  