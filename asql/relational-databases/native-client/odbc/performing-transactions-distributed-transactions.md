---
title: "Performing Distributed Transactions | Microsoft Docs"
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
  - "MS DTC, performing distributed transactions"
  - "SQL Server Native Client ODBC driver, transactions"
  - "distributed transactions [ODBC]"
  - "transactions [ODBC]"
  - "ODBC, transactions"
ms.assetid: 2c17fba0-7a3c-453c-91b7-f801e7b39ccb
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# Performing Transactions - Distributed Transactions
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The Microsoft Distributed Transaction Coordinator (MS DTC) allows applications to extend transactions across two or more instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. It also allows applications to participate in transactions managed by transaction managers that comply with the Open Group DTP XA standard.  
  
 Normally, all transaction management commands are sent through the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver to the server. The application starts a transaction by calling [SQLSetConnectAttr](../../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) with the autocommit mode turned off. The application then performs the updates comprising the transaction and calls [SQLEndTran](../../../relational-databases/extended-stored-procedures-reference/sqlendtran.md) with either the SQL_COMMIT or SQL_ROLLBACK option.  
  
 When using MS DTC, however, MS DTC becomes the transaction manager and the application no longer uses **SQLEndTran**.  
  
 When enlisted in a distributed transaction, and then enlist in a second distributed transaction, the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC Driver defects from the original distributed transaction and enlists in the new transaction. For more information, see [DTC Programmer's Reference](http://msdn.microsoft.com/library/ms686108\(VS.85\).aspx).  
  
## See Also  
 [Performing Transactions &#40;ODBC&#41;](../Topic/Performing%20Transactions%20\(ODBC\).md)  
  
  