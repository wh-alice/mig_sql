---
title: "Processing Stored Procedure Results | Microsoft Docs"
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
  - "ODBC, stored procedures"
  - "SQL Server Native Client ODBC driver, stored procedures"
  - "stored procedures [ODBC], results"
ms.assetid: 788ef2a4-17de-4526-960b-46bf29aafc9f
caps.latest.revision: 32
ms.author: "jhubbard"
manager: "jhubbard"
---
# Processing Stored Procedure Results
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] stored procedures have four mechanisms used to return data:  
  
-   Each SELECT statement in the procedure generates a result set.  
  
-   The procedure can return data through output parameters.  
  
-   A cursor output parameter can pass back a [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] server cursor.  
  
-   The procedure can have an integer return code.  
  
 Applications must be able to handle all these outputs from stored procedures. The CALL or EXECUTE statement should include parameter markers for the return code and output parameters. Use [SQLBindParameter](../../relational-databases/extended-stored-procedures-reference/sqlbindparameter.md) to bind them all as output parameters and the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver will transfer the output values to the bound variables. Output parameters and return codes are the last items returned to the client by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]; they are not returned to the application until [SQLMoreResults](../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md) returns SQL_NO_DATA.  
  
 ODBC does not support binding [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] cursor parameters. Because all output parameters must be bound before executing a procedure, any [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] stored procedure that contains an output cursor parameter cannot be called by ODBC applications.  
  
## See Also  
 [Running Stored Procedures](../../relational-databases/native-client-odbc-stored-procedures/running-stored-procedures.md)  
  
  