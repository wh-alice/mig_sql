---
title: "Transactions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "Transactions"
  - "Transactions_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "transactions [SQL Server]"
  - "transactions [SQL Server], about transactions"
  - "UOW [SQL Server]"
  - "unit of work [SQL Server]"
ms.assetid: 1485c375-921a-42af-a871-bb333cc08d3e
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# Transactions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  A transaction is a single unit of work. If a transaction is successful, all of the data modifications made during the transaction are committed and become a permanent part of the database. If a transaction encounters errors and must be canceled or rolled back, then all of the data modifications are erased.  
  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] operates in the following transaction modes.  
  
 Autocommit transactions  
 Each individual statement is a transaction.  
  
 Explicit transactions  
 Each transaction is explicitly started with the BEGIN TRANSACTION statement and explicitly ended with a COMMIT or ROLLBACK statement.  
  
 Implicit transactions  
 A new transaction is implicitly started when the prior transaction completes, but each transaction is explicitly completed with a COMMIT or ROLLBACK statement.  
  
 Batch-scoped transactions  
 Applicable only to multiple active result sets (MARS), a [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] explicit or implicit transaction that starts under a MARS session becomes a batch-scoped transaction. A batch-scoped transaction that is not committed or rolled back when a batch completes is automatically rolled back by [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
## In This Section  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] provides the following transaction statements.  
  
|||  
|-|-|  
|[BEGIN DISTRIBUTED TRANSACTION](../Topic/BEGIN%20DISTRIBUTED%20TRANSACTION%20\(Transact-SQL\).md)|[ROLLBACK TRANSACTION](../Topic/ROLLBACK%20TRANSACTION%20\(Transact-SQL\).md)|  
|[BEGIN TRANSACTION](../Topic/BEGIN%20TRANSACTION%20\(Transact-SQL\).md)|[ROLLBACK WORK](../Topic/ROLLBACK%20WORK%20\(Transact-SQL\).md)|  
|[COMMIT TRANSACTION](../Topic/COMMIT%20TRANSACTION%20\(Transact-SQL\).md)|[SAVE TRANSACTION](../Topic/SAVE%20TRANSACTION%20\(Transact-SQL\).md)|  
|[COMMIT WORK](../Topic/COMMIT%20WORK%20\(Transact-SQL\).md)||  
  
## See Also  
 [SET IMPLICIT_TRANSACTIONS &#40;Transact-SQL&#41;](../../t-sql/statements/set-implicit-transactions-transact-sql.md)   
 [@@TRANCOUNT &#40;Transact-SQL&#41;](../../t-sql/functions/trancount-transact-sql.md)  
  
  