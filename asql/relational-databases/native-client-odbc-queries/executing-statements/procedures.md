---
title: "Procedures | Microsoft Docs"
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
  - "stored procedures [ODBC]"
  - "stored procedures [ODBC], about ODBC stored procedures"
  - "ODBC applications, statements"
  - "statements [ODBC], stored procedures"
  - "ODBC applications, stored procedures"
ms.assetid: c64d5f3a-376b-48ef-84f3-b6148ac8600a
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Procedures
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  A stored procedure is a precompiled executable object that contains one or more [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statements. Stored procedures can have input and output parameters and can also put out an integer return code. An application can enumerate available stored procedures by using catalog functions.  
  
 ODBC applications that target [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] should only use direct execution to call a stored procedure. When connected to earlier versions of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver implements [SQLPrepare Function](http://go.microsoft.com/fwlink/?LinkId=59360) by creating a temporary stored procedure, which is then called on **SQLExecute**. It adds overhead to have **SQLPrepare** create a temporary stored procedure that only calls the target stored procedure versus directly executing the target stored procedure. Even when connected to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], preparing a call requires an extra round trip across the network and the building of an execution plan that just calls the stored procedure execution plan.  
  
 ODBC applications should use the ODBC CALL syntax when executing a stored procedure. The driver is optimized to use a remote procedure call mechanism to call the procedure when the ODBC CALL syntax is used. This is more efficient than the mechanism used to send a [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] EXECUTE statement to the server.  
  
 For more information, see [Running Stored Procedures](../../../relational-databases/native-client-odbc-stored-procedures/running-stored-procedures.md).  
  
## See Also  
 [Executing Statements &#40;ODBC&#41;](../../../relational-databases/native-client-odbc-queries/executing-statements/executing-statements-odbc.md)  
  
  