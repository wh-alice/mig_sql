---
title: "COMMIT TRANSACTION (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "COMMIT"
  - "COMMIT TRANSACTION"
  - "COMMIT_TSQL"
  - "COMMIT_TRANSACTION_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ending transactions [SQL Server]"
  - "user-defined transactions [SQL Server]"
  - "committed transactions"
  - "transactions [SQL Server], ending"
  - "marking end of transactions [SQL Server]"
  - "implicit transactions"
  - "distributed transactions [SQL Server], committed"
  - "transactions [SQL Server], committed"
  - "COMMIT TRANSACTION statement"
  - "rolling back transactions, COMMIT TRANSACTION"
ms.assetid: f8fe26a9-7911-497e-b348-4e69c7435dc1
caps.latest.revision: 53
ms.author: "rickbyh"
manager: "jhubbard"
---
# COMMIT TRANSACTION (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-asdw-pdw-_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-asdb-asdw-pdw-md.md)]

  Marks the end of a successful implicit or explicit transaction. If @@TRANCOUNT is 1, COMMIT TRANSACTION makes all data modifications performed since the start of the transaction a permanent part of the database, frees the resources held by the transaction, and decrements @@TRANCOUNT to 0. If @@TRANCOUNT is greater than 1, COMMIT TRANSACTION decrements @@TRANCOUNT only by 1 and the transaction stays active.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Applies to SQL Server (starting with 2008) and Azure SQL Database
  
COMMIT [ { TRAN | TRANSACTION }  [ transaction_name | @tran_name_variable ] ] [ WITH ( DELAYED_DURABILITY = { OFF | ON } ) ]  
[ ; ]  
```  
 
```  
-- Applies to Azure SQL Data Warehouse and Parallel Data Warehouse Database
  
COMMIT [ TRAN | TRANSACTION ] 
[ ; ]  
``` 
 
  
## Arguments  
 *transaction_name*  
 **APPLIES TO:** SQL Server and Azure SQL Database
 
 Is ignored by the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)]. *transaction_name* specifies a transaction name assigned by a previous BEGIN TRANSACTION. *transaction_name*must conform to the rules for identifiers, but cannot exceed 32 characters. *transaction_name* can be used as a readability aid by indicating to programmers which nested BEGIN TRANSACTION the COMMIT TRANSACTION is associated with.  
  
 *@tran_name_variable*  
 **APPLIES TO:** SQL Server and Azure SQL Database  
 
Is the name of a user-defined variable containing a valid transaction name. The variable must be declared with a char, varchar, nchar, or nvarchar data type. If more than 32 characters are passed to the variable, only 32 characters will be used; the remaining characters are truncated.  
  
 DELAYED_DURABILITY  
 **APPLIES TO:** SQL Server and Azure SQL Database   

 Option that requests this transaction be committed with delayed durability. The request is ignored if the database has been altered with `DELAYED_DURABILITY = DISABLED` or `DELAYED_DURABILITY = FORCED`. See the topic [Control Transaction Durability](../../relational-databases/logs/control-transaction-durability.md) for more information.  
  
## Remarks  
 It is the responsibility of the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] programmer to issue COMMIT TRANSACTION only at a point when all data referenced by the transaction is logically correct.  
  
 If the transaction committed was a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] distributed transaction, COMMIT TRANSACTION triggers MS DTC to use a two-phase commit protocol to commit all of the servers involved in the transaction. If a local transaction spans two or more databases on the same instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)], the instance uses an internal two-phase commit to commit all of the databases involved in the transaction.  
  
 When used in nested transactions, commits of the inner transactions do not free resources or make their modifications permanent. The data modifications are made permanent and resources freed only when the outer transaction is committed. Each COMMIT TRANSACTION issued when @@TRANCOUNT is greater than 1 simply decrements @@TRANCOUNT by 1. When @@TRANCOUNT is finally decremented to 0, the entire outer transaction is committed. Because *transaction_name* is ignored by the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)], issuing a COMMIT TRANSACTION referencing the name of an outer transaction when there are outstanding inner transactions only decrements @@TRANCOUNT by 1.  
  
 Issuing a COMMIT TRANSACTION when @@TRANCOUNT is 0 results in an error; there is no corresponding BEGIN TRANSACTION.  
  
 You cannot roll back a transaction after a COMMIT TRANSACTION statement is issued because the data modifications have been made a permanent part of the database.  
  
 The [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] increments the transaction count within a statement only when the transaction count is 0 at the start of the statement.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
  
### A. Committing a transaction  
**APPLIES TO:** SQL Server, Azure SQL Database, Azure SQL Data Warehouse, and Parallel Data Warehouse   

The following example deletes a job candidate. It uses AdventureWorks. 
  
```   
BEGIN TRANSACTION;   
DELETE FROM HumanResources.JobCandidate  
    WHERE JobCandidateID = 13;   
COMMIT TRANSACTION;   
```  
  
### B. Committing a nested transaction  
**APPLIES TO:** SQL Server and Azure SQL Database    

The following example creates a table, generates three levels of nested transactions, and then commits the nested transaction. Although each `COMMIT TRANSACTION` statement has a *transaction_name* parameter, there is no relationship between the `COMMIT TRANSACTION` and `BEGIN TRANSACTION` statements. The *transaction_name* parameters are simply readability aids to help the programmer ensure that the proper number of commits are coded to decrement `@@TRANCOUNT` to 0 and thereby commit the outer transaction. 
  
```   
IF OBJECT_ID(N'TestTran',N'U') IS NOT NULL  
    DROP TABLE TestTran;  
GO  
CREATE TABLE TestTran (Cola int PRIMARY KEY, Colb char(3));  
GO  
-- This statement sets @@TRANCOUNT to 1.  
BEGIN TRANSACTION OuterTran;  
  
PRINT N'Transaction count after BEGIN OuterTran = '  
    + CAST(@@TRANCOUNT AS nvarchar(10));  
 
INSERT INTO TestTran VALUES (1, 'aaa');  
 
-- This statement sets @@TRANCOUNT to 2.  
BEGIN TRANSACTION Inner1;  
 
PRINT N'Transaction count after BEGIN Inner1 = '  
    + CAST(@@TRANCOUNT AS nvarchar(10));  
  
INSERT INTO TestTran VALUES (2, 'bbb');  
  
-- This statement sets @@TRANCOUNT to 3.  
BEGIN TRANSACTION Inner2;  
  
PRINT N'Transaction count after BEGIN Inner2 = '  
    + CAST(@@TRANCOUNT AS nvarchar(10));  
  
INSERT INTO TestTran VALUES (3, 'ccc');  
  
-- This statement decrements @@TRANCOUNT to 2.  
-- Nothing is committed.  
COMMIT TRANSACTION Inner2;  
 
PRINT N'Transaction count after COMMIT Inner2 = '  
    + CAST(@@TRANCOUNT AS nvarchar(10));  
 
-- This statement decrements @@TRANCOUNT to 1.  
-- Nothing is committed.  
COMMIT TRANSACTION Inner1;  
 
PRINT N'Transaction count after COMMIT Inner1 = '  
    + CAST(@@TRANCOUNT AS nvarchar(10));  
  
-- This statement decrements @@TRANCOUNT to 0 and  
-- commits outer transaction OuterTran.  
COMMIT TRANSACTION OuterTran;  
  
PRINT N'Transaction count after COMMIT OuterTran = '  
    + CAST(@@TRANCOUNT AS nvarchar(10));  
```  
  
## See Also  
 [BEGIN DISTRIBUTED TRANSACTION &#40;Transact-SQL&#41;](../../t-sql/language-elements/begin-distributed-transaction-transact-sql.md)   
 [BEGIN TRANSACTION &#40;Transact-SQL&#41;](../../t-sql/language-elements/begin-transaction-transact-sql.md)   
 [COMMIT WORK &#40;Transact-SQL&#41;](../../t-sql/language-elements/commit-work-transact-sql.md)   
 [ROLLBACK TRANSACTION &#40;Transact-SQL&#41;](../../t-sql/language-elements/rollback-transaction-transact-sql.md)   
 [ROLLBACK WORK &#40;Transact-SQL&#41;](../../t-sql/language-elements/rollback-work-transact-sql.md)   
 [SAVE TRANSACTION &#40;Transact-SQL&#41;](../../t-sql/language-elements/save-transaction-transact-sql.md)   
 [@@TRANCOUNT &#40;Transact-SQL&#41;](../../t-sql/functions/trancount-transact-sql.md)  
  
  