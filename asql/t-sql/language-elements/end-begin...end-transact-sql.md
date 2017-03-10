---
title: "END (BEGIN...END) (Transact-SQL) | Microsoft Docs"
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
  - "END"
  - "END_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "enclosing statements [SQL Server]"
  - "END keyword"
  - "BEGIN...END keyword"
  - "END (BEGIN...END) keyword"
ms.assetid: 354c4935-1375-4141-8195-61326662f4d2
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# END (BEGIN...END) (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Encloses a series of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements that will execute as a group. BEGIN...END blocks can be nested.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
BEGIN   
     { sql_statement | statement_block }   
END   
```  
  
## Arguments  
 { *sql_statement*| *statement_block*}  
 Is any valid [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement or statement grouping as defined with a statement block. To define a statement block (batch), use the control-of-flow language keywords BEGIN and END. Although all [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements are valid within a BEGIN...END block, certain [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements should not be grouped together within the same batch (statement block).  
  
## Result Types  
 **Boolean**  
  
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
 [BEGIN...END &#40;Transact-SQL&#41;](../../t-sql/language-elements/begin...end-transact-sql.md)   
 [Control-of-Flow Language &#40;Transact-SQL&#41;](../Topic/Control-of-Flow%20Language%20\(Transact-SQL\).md)   
 [CREATE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/create-trigger-transact-sql.md)   
 [ELSE &#40;IF...ELSE&#41; &#40;Transact-SQL&#41;](../../t-sql/language-elements/else-if...else-transact-sql.md)   
 [IF...ELSE &#40;Transact-SQL&#41;](../../t-sql/language-elements/if...else-transact-sql.md)   
 [WHILE &#40;Transact-SQL&#41;](../../t-sql/language-elements/while-transact-sql.md)  
  
  

