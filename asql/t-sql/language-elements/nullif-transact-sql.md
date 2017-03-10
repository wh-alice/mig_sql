---
title: "NULLIF (Transact-SQL) | Microsoft Docs"
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
  - "NULLIF"
  - "NULLIF_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "null values [SQL Server], equivalent expressions"
  - "expressions [SQL Server], null values"
  - "NULLIF function"
  - "equivalent expressions [SQL Server]"
ms.assetid: 44c7b67e-74c7-4bb9-93a4-7a3016bd2feb
caps.latest.revision: 48
ms.author: "rickbyh"
manager: "jhubbard"
---
# NULLIF (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a null value if the two specified expressions are equal.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
NULLIF ( expression , expression )  
```  
  
## Arguments  
 *expression*  
 Is any valid scalar [expression](../../t-sql/language-elements/expressions-transact-sql.md).  
  
## Return Types  
 Returns the same type as the first *expression*.  
  
 NULLIF returns the first *expression* if the two expressions are not equal. If the expressions are equal, NULLIF returns a null value of the type of the first *expression*.  
  
## Remarks  
 NULLIF is equivalent to a searched CASE expression in which the two expressions are equal and the resulting expression is NULL.  
  
 We recommend that you not use time-dependent functions, such as RAND(), within a NULLIF function. This could cause the function to be evaluted twice and to return different results from the two invocations.  
  
## Examples  
  
### A. Returning budget amounts that have not changed  
 The following example creates a `budgets` table to show a department (`dept`) its current budget (`current_year`) and its previous budget (`previous_year`). For the current year, `NULL` is used for departments with budgets that have not changed from the previous year, and `0` is used for budgets that have not yet been determined. To find out the average of only those departments that receive a budget and to include the budget value from the previous year (use the `previous_year` value, where the `current_year` is `NULL`), combine the `NULLIF` and `COALESCE` functions.  
  
```  
USE AdventureWorks2012;  
GO  
IF OBJECT_ID ('dbo.budgets','U') IS NOT NULL  
   DROP TABLE budgets;  
GO  
SET NOCOUNT ON;  
CREATE TABLE dbo.budgets  
(  
   dept            tinyint   IDENTITY,  
   current_year      decimal   NULL,  
   previous_year   decimal   NULL  
);  
INSERT budgets VALUES(100000, 150000);  
INSERT budgets VALUES(NULL, 300000);  
INSERT budgets VALUES(0, 100000);  
INSERT budgets VALUES(NULL, 150000);  
INSERT budgets VALUES(300000, 250000);  
GO    
SET NOCOUNT OFF;  
SELECT AVG(NULLIF(COALESCE(current_year,  
   previous_year), 0.00)) AS 'Average Budget'  
FROM budgets;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Average Budget`  
  
 `--------------`  
  
 `212500.000000`  
  
 `(1 row(s) affected)`  
  
### B. Comparing NULLIF and CASE  
 To show the similarity between `NULLIF` and `CASE`, the following queries evaluate whether the values in the `MakeFlag` and `FinishedGoodsFlag` columns are the same. The first query uses `NULLIF`. The second query uses the `CASE` expression.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT ProductID, MakeFlag, FinishedGoodsFlag,   
   NULLIF(MakeFlag,FinishedGoodsFlag)AS 'Null if Equal'  
FROM Production.Product  
WHERE ProductID < 10;  
GO  
  
SELECT ProductID, MakeFlag, FinishedGoodsFlag,'Null if Equal' =  
   CASE  
       WHEN MakeFlag = FinishedGoodsFlag THEN NULL  
       ELSE MakeFlag  
   END  
FROM Production.Product  
WHERE ProductID < 10;  
GO  
```  
  
## Examples: ssSDWfull and ssPDW  
  
### C: Returning budget amounts that contain no data  
 The following example creates a `budgets` table, loads data, and uses `NULLIF` to return a null if neither `current_year` nor `previous_year` contains data.  
  
```  
CREATE TABLE budgets (  
   dept           tinyint,  
   current_year   decimal(10,2),  
   previous_year  decimal(10,2)  
);  
  
INSERT INTO budgets VALUES(1, 100000, 150000);  
INSERT INTO budgets VALUES(2, NULL, 300000);  
INSERT INTO budgets VALUES(3, 0, 100000);  
INSERT INTO budgets VALUES(4, NULL, 150000);  
INSERT INTO budgets VALUES(5, 300000, 300000);  
  
SELECT dept, NULLIF(current_year,  
   previous_year) AS LastBudget  
FROM budgets;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `dept   LastBudget`  
  
 `----   -----------`  
  
 `1      100000.00`  
  
 `2      null`  
  
 `3      0.00`  
  
 `4      null`  
  
 `5      null`  
  
## See Also  
 [CASE &#40;Transact-SQL&#41;](../../t-sql/language-elements/case-transact-sql.md)   
 [decimal and numeric &#40;Transact-SQL&#41;](../../t-sql/data-types/decimal-and-numeric-transact-sql.md)   
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/system-functions-for-transact-sql.md)  
  
  

