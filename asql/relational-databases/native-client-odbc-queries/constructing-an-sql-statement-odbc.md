---
title: "Constructing an SQL Statement (ODBC) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "SQL Server Native Client ODBC driver, statements"
  - "statements [ODBC], constructing"
  - "ODBC applications, statements"
ms.assetid: 0acc71e2-8004-4dd8-8592-05c022bdd692
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# Constructing an SQL Statement (ODBC)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  ODBC applications perform almost all of their database access by executing [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements. The form of these statements depends on the application requirements. SQL statements can be constructed in the following ways:  
  
-   Hard-coded  
  
     Static statements performed by an application as a fixed task.  
  
-   Constructed at run time  
  
     SQL statements constructed at run time that enable the user to tailor the statement by using common clauses, such as SELECT, WHERE, and ORDER BY. This includes ad hoc queries entered by users.  
  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Client ODBC driver parses SQL statements only for ODBC and ISO syntax not directly supported by the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)], which the driver transforms into [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. All other SQL syntax is passed to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] unchanged, where [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will determine if it is valid [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This approach yields two benefits:  
  
-   Reduced overhead  
  
     Processing overhead for the driver is minimized because it only has to scan for a small set of ODBC and ISO clauses.  
  
-   Flexibility  
  
     Programmers can tailor the portability of their applications. To enhance portability against multiple databases, use primarily ODBC and ISO syntax. To use enhancements specific to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], use the appropriate [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] syntax. The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver supports the complete [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] syntax so ODBC-based applications can take advantage of all the features in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 The column list in a SELECT statement should contain only the columns required to perform the current task. Not only does this reduce the amount of data sent across the network, but also it reduces the effect of database changes on the application. If an application does not reference a column from a table, then the application is not affected by any changes made to that column.  
  
## See Also  
 [Executing Queries &#40;ODBC&#41;](../../relational-databases/native-client-odbc-queries/executing-queries-odbc.md)  
  
  