---
title: "Running Stored Procedures | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "ODBC, stored procedures"
  - "stored procedures [ODBC], running"
  - "SQL Server Native Client ODBC driver, stored procedures"
  - "stored procedures [ODBC], executing"
ms.assetid: 866b6dd3-2acd-4dfb-aeca-a0352b2d4c6a
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# Running Stored Procedures
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  A stored procedure is an executable object stored in a database. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports:  
  
-   Stored procedures:  
  
     One or more SQL statements precompiled into a single executable procedure.  
  
-   Extended stored procedures:  
  
     C or C++ dynamic-link libraries (DLL) written to the SQL Server Open Data Services API for extended stored procedures. The Open Data Services API extends the capabilities of stored procedures to include C or C++ code.  
  
 When executing statements, calling a stored procedure on the data source (instead of directly executing or preparing a statement in the client application) can provide:  
  
-   Higher performance  
  
     SQL statements are parsed and compiled when procedures are created. This overhead is then saved when the procedures are executed.  
  
-   Reduced network overhead  
  
     Executing a procedure instead of sending complex queries across the network can reduce network traffic. If an ODBC application uses the ODBC { CALL } syntax to execute a stored procedure, the ODBC driver makes additional optimizations that eliminate the need to convert parameter data.  
  
-   Greater consistency  
  
     If an organization's rules are implemented in a central resource, such as a stored procedure, they can be coded, tested, and debugged once. Individual programmers can then use the tested stored procedures instead of developing their own implementations.  
  
-   Greater accuracy  
  
     Because stored procedures are usually developed by experienced programmers, they tend to be more efficient and have fewer errors than code developed multiple times by programmers of varying skill levels.  
  
-   Added functionality  
  
     Extended stored procedures can use C and C++ features not available in [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements.  
  
     For an example of how to call a stored procedure, see [Process Return Codes and Output Parameters &#40;ODBC&#41;](../Topic/Process%20Return%20Codes%20and%20Output%20Parameters%20\(ODBC\).md).  
  
## In This Section  
  
-   [Calling a Stored Procedure](../../relational-databases/native-client-odbc-stored-procedures/calling-a-stored-procedure.md)  
  
-   [Batching Stored Procedure Calls](../../relational-databases/native-client-odbc-stored-procedures/batching-stored-procedure-calls.md)  
  
-   [Processing Stored Procedure Results](../../relational-databases/native-client-odbc-stored-procedures/processing-stored-procedure-results.md)  
  
## See Also  
 [SQL Server Native Client &#40;ODBC&#41;](../../relational-databases/native-client/odbc/sql-server-native-client-odbc.md)   
 [Running Stored Procedures How-to Topics &#40;ODBC&#41;](../Topic/Running%20Stored%20Procedures%20How-to%20Topics%20\(ODBC\).md)  
  
  