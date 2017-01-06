---
title: "Understanding Transactions | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d3e0414c-6809-4bb1-93b1-4960507faecc
caps.latest.revision: 32
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
# Understanding Transactions
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  Transactions are groups of operations that are combined into logical units of work. They are used to control and maintain the consistency and integrity of each action in a transaction, despite errors that might occur in the system.  
  
 With the Microsoft JDBC Driver for SQL Server, transactions can be either local or distributed. Transactions can also use isolation levels. For more information about the isolation levels supported by the JDBC driver, see [Understanding Isolation Levels](../../connect/jdbc/understanding-isolation-levels.md).  
  
 Applications should control transactions by either using Transact-SQL statements or the methods provided by the JDBC driver, but not both. Using both Transact-SQL statements and JDBC API methods on the same transaction might lead to problems, such as a transaction cannot be committed when expected, a transaction is committed or rolled back and a new one starts unexpectedly, or "Failed to resume the transaction" exceptions.  
  
## Using Local Transactions  
 A transaction is considered to be local when it is a single-phase transaction, and it is handled by the database directly. The JDBC driver supports local transactions by using various methods of the [SQLServerConnection](../../connect/jdbc/reference/sqlserverconnection-class.md) class, including [setAutoCommit](../../connect/jdbc/reference/setautocommit-method--sqlserverconnection-.md), [commit](../../connect/jdbc/reference/commit-method--sqlserverconnection-.md), and [rollback](../../connect/jdbc/reference/rollback-method---.md). Local transactions are typically managed explicitly by the application or automatically by the Java Platform, Enterprise Edition (Java EE) application server.  
  
 The following example performs a local transaction that consists of two separate statements in the `try` block. The statements are run against the Production.ScrapReason table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database, and they are committed if no exceptions are thrown. The code in the `catch` block rolls back the transaction if an exception is thrown.  
  
 [!code[JDBC#UnderstandingTransactions1](../../connect/jdbc/codesnippet/Java/understanding-transactions_1.java)]  
  
## Using Distributed Transactions  
 A distributed transaction updates data on two or more networked databases while retaining the important atomic, consistent, isolated, and durable (ACID) properties of transaction processing. Distributed transaction support was added to the JDBC API in the JDBC 2.0 Optional API specification. The management of distributed transactions is typically performed automatically by the Java Transaction Service (JTS) transaction manager in a Java EE application server environment. However, the Microsoft JDBC Driver for SQL Server supports distributed transactions under any Java Transaction API (JTA) compliant transaction manager.  
  
 The JDBC driver seamlessly integrates with Microsoft Distributed Transaction Coordinator (MS DTC) to provide true distributed transaction support with SQL Server. MS DTC is a distributed transaction facility provided by Microsoft for Microsoft Windows systems. MS DTC uses proven transaction processing technology from Microsoft to support XA features such as the complete two-phase distributed commit protocol and the recovery of distributed transactions.  
  
 For more information about how to use distributed transactions, see [Understanding XA Transactions](../../connect/jdbc/understanding-xa-transactions.md).  
  
## See Also  
 [Performing Transactions with the JDBC Driver](../../connect/jdbc/performing-transactions-with-the-jdbc-driver.md)  
  
  