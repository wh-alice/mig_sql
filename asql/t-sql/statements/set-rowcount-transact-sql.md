---
title: "SET ROWCOUNT (Transact-SQL) | Microsoft Docs"
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
  - "SET_ROWCOUNT_TSQL"
  - "ROWCOUNT_TSQL"
  - "SET ROWCOUNT"
  - "ROWCOUNT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "row return limitations [SQL Server]"
  - "SET ROWCOUNT statement"
  - "number of rows affected by statement"
  - "ROWCOUNT option"
  - "counting rows"
  - "stopping queries"
  - "limiting rows returned"
  - "queries [SQL Server], stopping"
ms.assetid: c6966fb7-6421-47ef-98f3-82351f2f6bdc
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET ROWCOUNT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Causes [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to stop processing the query after the specified number of rows are returned.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SET ROWCOUNT { number | @number_var }   
```  
  
## Arguments  
 *number* | @*number_var*  
 Is the number, an integer, of rows to be processed before stopping the specific query.  
  
## Remarks  
  
> [!IMPORTANT]  
>  Using SET ROWCOUNT will not affect DELETE, INSERT, and UPDATE statements in a future release of SQL Server. Avoid using SET ROWCOUNT with DELETE, INSERT, and UPDATE statements in new development work, and plan to modify applications that currently use it. For a similar behavior, use the TOP syntax. For more information, see [TOP &#40;Transact-SQL&#41;](../../t-sql/queries/top-transact-sql.md).  
  
 To set this option off so that all rows are returned, specify SET ROWCOUNT 0.  
  
 Setting the SET ROWCOUNT option causes most [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements to stop processing when they have been affected by the specified number of rows. This includes triggers. The ROWCOUNT option does not affect dynamic cursors, but it does limit the rowset of keyset and insensitive cursors. This option should be used with caution.  
  
 SET ROWCOUNT overrides the SELECT statement TOP keyword if the rowcount is the smaller value.  
  
 The setting of SET ROWCOUNT is set at execute or run time and not at parse time.  
  
## Permissions  
 Requires membership in the public role.  
  
## Examples  
 SET ROWCOUNT stops processing after the specified number of rows. In the following example, note that over 500 rows meet the criteria of `Quantity` less than `300`. However, after applying SET ROWCOUNT, you can see that not all rows were returned.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT count(*) AS Count  
FROM Production.ProductInventory  
WHERE Quantity < 300;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Count`  
  
 `-----------`  
  
 `537`  
  
 `(1 row(s) affected)`  
  
 Now, set `ROWCOUNT` to `4` and return all rows to demonstrate that only 4 rows are returned.  
  
```  
SET ROWCOUNT 4;  
SELECT *  
FROM Production.ProductInventory  
WHERE Quantity < 300;  
GO  
```  
  
 `(4 row(s) affected)`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 SET ROWCOUNT stops processing after the specified number of rows. In the following example, note that more than 20 rows meet the criteria of `AccountType = 'Assets'`. However, after applying SET ROWCOUNT, you can see that not all rows were returned.  
  
```  
-- Uses AdventureWorks  
  
SET ROWCOUNT 5;  
SELECT * FROM [dbo].[DimAccount]  
WHERE AccountType = 'Assets';  
```  
  
 To return all rows, set ROWCOUNT to 0.  
  
```  
-- Uses AdventureWorks  
  
SET ROWCOUNT 0;  
SELECT * FROM [dbo].[DimAccount]  
WHERE AccountType = 'Assets';  
```  
  
## See Also  
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)  
  
  

