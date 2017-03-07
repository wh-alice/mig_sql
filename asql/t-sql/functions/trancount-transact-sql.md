---
title: "@@TRANCOUNT (Transact-SQL) | Microsoft Docs"
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
  - "@@TRANCOUNT_TSQL"
  - "@@TRANCOUNT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "@@TRANCOUNT function"
  - "number of active transactions"
  - "connections [SQL Server], active transactions"
  - "active transactions"
ms.assetid: b2638410-e410-4bd0-9b54-90096182b2b6
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@TRANCOUNT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the number of BEGIN TRANSACTION statements that have occurred on the current connection.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
@@TRANCOUNT  
```  
  
## Return Types  
 **integer**  
  
## Remarks  
 The BEGIN TRANSACTION statement increments @@TRANCOUNT by 1. ROLLBACK TRANSACTION decrements @@TRANCOUNT to 0, except for ROLLBACK TRANSACTION *savepoint_name*, which does not affect @@TRANCOUNT. COMMIT TRANSACTION or COMMIT WORK decrement @@TRANCOUNT by 1.  
  
## Examples  
  
### A. Showing the effects of the BEGIN and COMMIT statements  
 The following example shows the effect that nested `BEGIN` and `COMMIT` statements have on the `@@TRANCOUNT` variable.  
  
```  
PRINT @@TRANCOUNT  
--  The BEGIN TRAN statement will increment the  
--  transaction count by 1.  
BEGIN TRAN  
    PRINT @@TRANCOUNT  
    BEGIN TRAN  
        PRINT @@TRANCOUNT  
--  The COMMIT statement will decrement the transaction count by 1.  
    COMMIT  
    PRINT @@TRANCOUNT  
COMMIT  
PRINT @@TRANCOUNT  
--Results  
--0  
--1  
--2  
--1  
--0  
```  
  
### B. Showing the effects of the BEGIN and ROLLBACK statements  
 The following example shows the effect that nested `BEGIN TRAN` and `ROLLBACK` statements have on the `@@TRANCOUNT` variable.  
  
```  
PRINT @@TRANCOUNT  
--  The BEGIN TRAN statement will increment the  
--  transaction count by 1.  
BEGIN TRAN  
    PRINT @@TRANCOUNT  
    BEGIN TRAN  
        PRINT @@TRANCOUNT  
--  The ROLLBACK statement will clear the @@TRANCOUNT variable  
--  to 0 because all active transactions will be rolled back.  
ROLLBACK  
PRINT @@TRANCOUNT  
--Results  
--0  
--1  
--2  
--0  
```  
  
## See Also  
 [BEGIN TRANSACTION &#40;Transact-SQL&#41;](../Topic/BEGIN%20TRANSACTION%20\(Transact-SQL\).md)   
 [COMMIT TRANSACTION &#40;Transact-SQL&#41;](../Topic/COMMIT%20TRANSACTION%20\(Transact-SQL\).md)   
 [ROLLBACK TRANSACTION &#40;Transact-SQL&#41;](../Topic/ROLLBACK%20TRANSACTION%20\(Transact-SQL\).md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/system-functions/system-functions-transact-sql.md)  
  
  