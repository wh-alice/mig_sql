---
title: "Use Microsoft Distributed Transaction Coordinator (ODBC) | Microsoft Docs"
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
  - "MS DTC, using"
ms.assetid: 12a275e1-8c7e-436d-8a4e-b7bee853b35c
caps.latest.revision: 12
ms.author: "jhubbard"
manager: "jhubbard"
---
# Use Microsoft Distributed Transaction Coordinator (ODBC)
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

    
### To update two or more SQL Servers by using MS DTC  
  
1.  Connect to MS DTC by using the MS DTC OLE DtcGetTransactionManager function. For information about MS DTC, see Microsoft Distributed Transaction Coordinator.  
  
2.  Call SQL DriverConnect once for each Microsoft® SQL Server™ connection you want to establish.  
  
3.  Call the MS DTC OLE ITransactionDispenser::BeginTransaction function to begin an MS DTC transaction and obtain a Transaction object that represents the transaction.  
  
4.  Call [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) one or more times for each ODBC connection you want to enlist in the MS DTC transaction. [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) second parameter must be SQL_ATTR_ENLIST_IN_DTC and third parameter must be the Transaction object (obtained in Step 3).  
  
5.  Call [SQLExecDirect](http://go.microsoft.com/fwlink/?LinkId=58399) once for each SQL Server you want to update.  
  
6.  Call the MS DTC OLE ITransaction::Commit function to commit the MS DTC transaction. The Transaction object is no longer valid.  
  
 To perform a series of MS DTC transactions, repeat Steps 3 through 6.  
  
 To release the reference to the Transaction object, call the MS DTC OLE ITransaction::Return function.  
  
 To use an ODBC connection with an MS DTC transaction, and then use the same connection with a local SQL Server transaction, call [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) with SQL_DTC_DONE.  
  
> [!NOTE]  
>  You can also call [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md) and [SQLExecDirect](http://go.microsoft.com/fwlink/?LinkId=58399) in turn for each SQL Server instead of calling them as suggested earlier in Steps 4 and 5.  
  
## See Also  
 [Performing Transactions &#40;ODBC&#41;](../../a9retired/performing-transactions-odbc.md)  
  
  