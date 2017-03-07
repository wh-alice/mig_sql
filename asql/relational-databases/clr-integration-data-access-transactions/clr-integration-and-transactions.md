---
title: "CLR Integration and Transactions | Microsoft Docs"
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
  - "ADO.NET [CLR integration]"
  - "common language runtime [SQL Server], ADO.NET"
  - "managed code [SQL Server], transactions"
  - "common language runtime [SQL Server], transactions"
  - "System.Transactions namespace"
  - "transactions [CLR integration]"
ms.assetid: 381d206e-06e2-48d0-8206-295fcf06ac98
caps.latest.revision: 19
ms.author: "jhubbard"
manager: "jhubbard"
---
# CLR Integration and Transactions
  The **System.Transactions** namespace provides a transaction framework that is fully integrated with ADO.NET and [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] common language runtime (CLR) integration. **System.Transactions** and ADO.NET work together to extend and simplify the use of local and distributed transactions in managed applications.  
  
> [!NOTE]  
>  A CLR user-defined procedure (UDP) cannot establish a connection to the same server it is running on (a loopback connection) and enlist in the same transaction. If this is attempted, the connection attempt will be blocked and control will not be passed back to the UDP. This will result in a timeout error (Msg 1206) on the UDP.  
  
 For more information about transactions and the .NET Framework, see "Performing Transactions" and "Leveraging Transactions" in the .NET Framework SDK.  
  
## In This Section  
 [Transaction Promotion](../../relational-databases/clr-integration-data-access-transactions/transaction-promotion.md)  
 Describes the ability to promote transactions, and how to use this feature.  
  
 [Accessing the Current Transaction](../../relational-databases/clr-integration-data-access-transactions/accessing-the-current-transaction.md)  
 Describes how to access a transaction currently running in-process on [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
 [Using System.Transactions](../../relational-databases/clr-integration-data-access-transactions/using-system.transactions.md)  
 Describes how to use the **System.Transactions** application programming interface (API) in your managed application.  
  
 [Transaction Lifetimes](../../relational-databases/clr-integration-data-access-transactions/transaction-lifetimes.md)  
 Describes the difference in lifetime between transactions started in [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] stored procedures and transactions started in CLR applications.  
  
## See Also  
 [Data Access from CLR Database Objects](../../relational-databases/clr-integration/data-access/data-access-from-clr-database-objects.md)  
  
  