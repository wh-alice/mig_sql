---
title: "STDEVP (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "STDEVP"
  - "STDEVP_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STDEVP function [Transact-SQL]"
  - "expressions [SQL Server], statistical standard deviation"
  - "statistical standard deviation"
ms.assetid: 29f2a906-d084-4464-abc3-4b275ed19442
caps.latest.revision: 45
ms.author: "rickbyh"
manager: "jhubbard"
---
# STDEVP (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the statistical standard deviation for the population for all values in the specified expression.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
STDEVP ( [ ALL | DISTINCT ] expression )   
   OVER ( [ partition_by_clause ] order_by_clause )    
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
-- Aggregate Function Syntax   
STDEVP ( [ ALL | DISTINCT ] expression )  
  
-- Analytic Function Syntax   
STDEVP (expression) OVER ( [ partition_by_clause ] order_by_clause)  
```  
  
## Arguments  
 **ALL**  
 Applies the function to all values. ALL is the default.  
  
 DISTINCT  
 Specifies that each unique value is considered.  
  
 *expression*  
 Is a numeric [expression](../../t-sql/language-elements/expressions-transact-sql.md). Aggregate functions and subqueries are not permitted. *expression* is an expression of the exact numeric or approximate numeric data type category, except for the **bit** data type.  
  
 OVER **(** [ *partition_by_clause* ] *order_by_clause***)**  
 *partition_by_clause* divides the result set produced by the FROM clause into partitions to which the function is applied. If not specified, the function treats all rows of the query result set as a single group. *order_by_clause* determines the logical order in which the operation is performed. *order_by_clause* is required. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md).  
  
## Return Types  
 **float**  
  
## Remarks  
 If STDEVP is used on all items in a SELECT statement, each value in the result set is included in the calculation. STDEVP can be used with numeric columns only. Null values are ignored.  
  
 STDEVP is a deterministic function when used without the OVER and ORDER BY clauses. It is nondeterministic when specified with the OVER and ORDER BY clauses. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A: Using STDEVP  
 The following example returns the standard deviation for the population for all bonus values in the `SalesPerson` table in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT STDEVP(Bonus)  
FROM Sales.SalesPerson;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### B: Using STDEVP  
 The following example returns the `STDEVP` of the sales quota values in the table `dbo.FactSalesQuota`. The first column contains the standard deviation of all distinct values and the second column contains the standard deviation of all values including any duplicates values.  
  
```  
-- Uses AdventureWorks  
  
SELECT STDEVP(DISTINCT SalesAmountQuota)AS Distinct_Values, STDEVP(SalesAmountQuota) AS All_Values  
FROM dbo.FactSalesQuota;SELECT STDEVP(DISTINCT Quantity)AS Distinct_Values, STDEVP(Quantity) AS All_Values  
FROM ProductInventory;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Distinct_Values   All_Values`  
  
 `----------------  ----------------`  
  
 `397676.79         397226.44`  
  
### C. Using STDEVP with OVER  
 The following example returns the `STDEVP` of the sales quota values for each quarter in a calendar year. Notice that the `ORDER BY` in the `OVER` clause orders the `STDEVP` and the `ORDER BY` of the `SELECT` statement orders the result set.  
  
```  
-- Uses AdventureWorks  
  
SELECT CalendarYear AS Year, CalendarQuarter AS Quarter, SalesAmountQuota AS SalesQuota,  
       STDEVP(SalesAmountQuota) OVER (ORDER BY CalendarYear, CalendarQuarter) AS StdDeviation  
FROM dbo.FactSalesQuota  
WHERE EmployeeKey = 272 AND CalendarYear = 2002  
ORDER BY CalendarQuarter;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Year  Quarter  SalesQuota              StdDeviation`  
  
 `----  -------  ----------------------  -------------------`  
  
 `2002  1         91000.0000             0.00`  
  
 `2002  2        140000.0000             24500.00`  
  
 `2002  3         70000.0000             29329.55`  
  
 `2002  4        154000.0000             34426.55`  
  
## See Also  
 [Aggregate Functions &#40;Transact-SQL&#41;](../../t-sql/functions/aggregate-functions-transact-sql.md)   
 [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md)  
  
  

