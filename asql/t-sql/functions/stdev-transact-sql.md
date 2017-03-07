---
title: "STDEV (Transact-SQL) | Microsoft Docs"
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
  - "STDEV_TSQL"
  - "STDEV"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "expressions [SQL Server], statistical standard deviation"
  - "STDEV function [Transact-SQL]"
  - "statistical standard deviation"
ms.assetid: ff41b4fc-4f71-4f18-bf78-96614ea908cc
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# STDEV (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the statistical standard deviation of all values in the specified expression.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
STDEV ( [ ALL | DISTINCT ] expression )   
   OVER ( [ partition_by_clause ] order_by_clause )    
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
-- Aggregate Function Syntax   
STDEV ( [ ALL | DISTINCT ] expression )  
  
-- Analytic Function Syntax   
STDEV (expression) OVER ( [ partition_by_clause ] order_by_clause)  
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
 If STDEV is used on all items in a SELECT statement, each value in the result set is included in the calculation. STDEV can be used with numeric columns only. Null values are ignored.  
  
 STDEV is a deterministic function when used without the OVER and ORDER BY clauses. It is nondeterministic when specified with the OVER and ORDER BY clauses. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A: Using STDEV  
 The following example returns the standard deviation for all bonus values in the `SalesPerson` table in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT STDEV(Bonus)  
FROM Sales.SalesPerson;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### B: Using STDEV  
 The following example returns the standard deviation of the sales quota values in the table `dbo.FactSalesQuota`. The first column contains the standard deviation of all distinct values and the second column contains the standard deviation of all values including any duplicates values.  
  
```  
-- Uses AdventureWorks  
  
SELECT STDEV(DISTINCT SalesAmountQuota)AS Distinct_Values, STDEV(SalesAmountQuota) AS All_Values  
FROM dbo.FactSalesQuota;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Distinct_Values   All_Values`  
  
 `----------------  ----------------`  
  
 `398974.27         398450.57`  
  
### C. Using STDEV with OVER  
 The following example returns the standard deviation of the sales quota values for each quarter in a calendar year. Notice that the ORDER BY in the OVER clause orders the STDEV and the ORDER BY of the SELECT statement orders the result set.  
  
```  
-- Uses AdventureWorks  
  
SELECT CalendarYear AS Year, CalendarQuarter AS Quarter, SalesAmountQuota AS SalesQuota,  
       STDEV(SalesAmountQuota) OVER (ORDER BY CalendarYear, CalendarQuarter) AS StdDeviation  
FROM dbo.FactSalesQuota  
WHERE EmployeeKey = 272 AND CalendarYear = 2002  
ORDER BY CalendarQuarter;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Year  Quarter  SalesQuota              StdDeviation`  
  
 `----  -------  ----------------------  -------------------`  
  
 `2002  1         91000.0000             null`  
  
 `2002  2        140000.0000             34648.23`  
  
 `2002  3         70000.0000             35921.21`  
  
 `2002  4        154000.0000             39752.36`  
  
## See Also  
 [Aggregate Functions &#40;Transact-SQL&#41;](../../t-sql/functions/aggregate-functions-transact-sql.md)   
 [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md)  
  
  

