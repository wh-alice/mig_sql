---
title: "Best Practices for Calling Natively Compiled Stored Procedures | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f39fc1c7-cfec-4a95-97f6-6b95954694bb
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# Best Practices for Calling Natively Compiled Stored Procedures
  Natively compiled stored procedures are:  
  
-   Used typically in performance-critical parts of an application.  
  
-   Frequently executed.  
  
-   Expected to be very fast.  
  
 The performance benefit of using a natively compiled stored procedure increases with the number of rows and the amount of logic that is processed by the procedure. For example, a natively compiled stored procedure will exhibit better performance if it uses one or more of the following:  
  
-   Aggregation.  
  
-   Nested-loops joins.  
  
-   Multi-statement select, insert, update, and delete operations.  
  
-   Complex expressions.  
  
-   Procedural logic, such as conditional statements and loops.  
  
 If you need to process only a single row, using a natively compiled stored procedure may not provide a performance benefit.  
  
 To avoid the server having to map parameter names and convert types:  
  
-   Match the types of the parameters passed to the procedure with the types in the procedure definition.  
  
-   Use ordinal (nameless) parameters when calling natively compiled stored procedures. For the most efficient execution, do not use named parameters.  
  
 Use of (inefficient) named parameters with natively compiled stored procedures can be detected through the XEvent **hekaton_slow_parameter_passing**, with **reason=named_parameters**.  
  
 Similarly, you can detect use of mismatched types through the same XEvent **hekaton_slow_parameter_passing**, with **reason=parameter_conversion**.  
  
 Because you will need to implement retry logic when using memory-optimized tables (in many scenarios), and because you will need to work around certain feature limitations, you may want to create a wrapper interpreted [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] stored procedure. For an example, see [Transactions with Memory-Optimized Tables](../../relational-databases/in-memory-oltp/transactions-with-memory-optimized-tables.md).  
  
## See Also  
 [Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/natively-compiled-stored-procedures.md)  
  
  