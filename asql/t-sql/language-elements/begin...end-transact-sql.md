---
title: "BEGIN...END (Transact-SQL) | Microsoft Docs"
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
  - "BEGIN"
  - "BEGIN_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "enclosing statements [SQL Server]"
  - "BEGIN statement"
  - "control-of-flow language [SQL Server], BEGIN...END statement"
  - "BEGIN...END keyword"
  - "grouping statements, BEGIN...END statement"
  - "executing Transact-SQL statements together [SQL Server]"
  - "statements [SQL Server], grouping"
ms.assetid: fc2c7f76-f1f9-4f91-beef-bc8ef0da2feb
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# BEGIN...END (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Encloses a series of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements so that a group of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements can be executed. BEGIN and END are control-of-flow language keywords.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
BEGIN  
    { sql_statement | statement_block }   
END  
```  
  
## Arguments  
 { *sql_statement* | *statement_block* }  
 Is any valid [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement or statement grouping as defined by using a statement block.  
  
## Remarks  
 BEGIN...END blocks can be nested.  
  
 Although all [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements are valid within a BEGIN...END block, certain [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements should not be grouped together within the same batch, or statement block.  
  
## Examples  
 In the following example, `BEGIN` and `END` define a series of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements that execute together. If the `BEGIN...END` block were not included, both `ROLLBACK TRANSACTION` statements would execute and both `PRINT` messages would be returned.  
  
```  
USE AdventureWorks2012;  
GO  
BEGIN TRANSACTION;  
GO  
IF @@TRANCOUNT = 0  
BEGIN  
    SELECT FirstName, MiddleName   
    FROM Person.Person WHERE LastName = 'Adams';  
    ROLLBACK TRANSACTION;  
    PRINT N'Rolling back the transaction two times would cause an error.';  
END;  
ROLLBACK TRANSACTION;  
PRINT N'Rolled back the transaction.';  
GO  
/*  
Rolled back the transaction.  
*/  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 In the following example, `BEGIN` and `END` define a series of [!INCLUDE[DWsql](../../reporting-services/report-data/includes/dwsql-md.md)] statements that run together. If the `BEGIN...END` block are not included, the following example will be in a continuous loop.  
  
```  
-- Uses AdventureWorks  
  
DECLARE @Iteration Integer = 0  
WHILE @Iteration <10  
BEGIN  
    SELECT FirstName, MiddleName   
    FROM dbo.DimCustomer WHERE LastName = 'Adams';  
SET @Iteration += 1  
END;  
  
```  
  
## See Also  
 [ALTER TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/alter-trigger-transact-sql.md)   
 [Control-of-Flow Language &#40;Transact-SQL&#41;](../Topic/Control-of-Flow%20Language%20\(Transact-SQL\).md)   
 [CREATE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/create-trigger-transact-sql.md)   
 [END &#40;BEGIN...END&#41; &#40;Transact-SQL&#41;](../../t-sql/language-elements/end-begin...end-transact-sql.md)  
  
  

