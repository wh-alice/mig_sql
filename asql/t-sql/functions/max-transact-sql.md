---
title: "MAX (Transact-SQL) | Microsoft Docs"
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
  - "MAX"
  - "MAX_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MAX function [Transact-SQL]"
  - "values [SQL Server], maximum"
  - "maximum values [SQL Server]"
ms.assetid: 9b002b69-ab5e-472d-b12e-dc2fbe35ef42
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# MAX (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the maximum value in the expression.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
MAX ( [ ALL | DISTINCT ] expression )  
   OVER ( [ partition_by_clause ] order_by_clause )     
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
-- Aggregation Function Syntax  
MAX ( [ ALL | DISTINCT ] expression )  
  
-- Aggregation Function Syntax   
MAX ( expression ) OVER ( [ <partition_by_clause> ] [ <order_by_clause> ] )  
```  
  
## Arguments  
 **ALL**  
 Applies the aggregate function to all values. ALL is the default.  
  
 DISTINCT  
 Specifies that each unique value is considered. DISTINCT is not meaningful with MAX and is available for ISO compatibility only.  
  
 *expression*  
 Is a constant, column name, or function, and any combination of arithmetic, bitwise, and string operators. MAX can be used with **numeric**, **character**, **uniqueidentifier**, and **datetime** columns, but not with **bit** columns. Aggregate functions and subqueries are not permitted.  
  
 For more information, see [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md).  
  
 OVER **(** [ *partition_by_clause* ] *order_by_clause***)**  
 *partition_by_clause* divides the result set produced by the FROM clause into partitions to which the function is applied. If not specified, the function treats all rows of the query result set as a single group. *order_by_clause* determines the logical order in which the operation is performed. *order_by_clause* is required. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-over-clause-transact-sql.md).  
  
## Return Types  
 Returns a value same as *expression*.  
  
## Remarks  
 MAX ignores any null values.  
  
 For character columns, MAX finds the highest value in the collating sequence.  
  
 MAX is a deterministic function when used without the OVER and ORDER BY clauses. It is nondeterministic when specified with the OVER and ORDER BY clauses. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A. Simple example  
 The following example returns the highest (maximum) tax rate in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT MAX(TaxRate)  
FROM Sales.SalesTaxRate;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `-------------------`  
  
 `19.60`  
  
 `Warning, null value eliminated from aggregate.`  
  
 `(1 row(s) affected)`  
  
### B. Using the OVER clause  
 The following example uses the MIN, MAX, AVG and COUNT functions with the OVER clause to provide aggregated values for each department in the `HumanResources.Department` table in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT DISTINCT Name  
       , MIN(Rate) OVER (PARTITION BY edh.DepartmentID) AS MinSalary  
       , MAX(Rate) OVER (PARTITION BY edh.DepartmentID) AS MaxSalary  
       , AVG(Rate) OVER (PARTITION BY edh.DepartmentID) AS AvgSalary  
       ,COUNT(edh.BusinessEntityID) OVER (PARTITION BY edh.DepartmentID) AS EmployeesPerDept  
FROM HumanResources.EmployeePayHistory AS eph  
JOIN HumanResources.EmployeeDepartmentHistory AS edh  
     ON eph.BusinessEntityID = edh.BusinessEntityID  
JOIN HumanResources.Department AS d  
 ON d.DepartmentID = edh.DepartmentID  
WHERE edh.EndDate IS NULL  
ORDER BY Name;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Name                          MinSalary             MaxSalary             AvgSalary             EmployeesPerDept  
----------------------------- --------------------- --------------------- --------------------- ----------------  
Document Control              10.25                 17.7885               14.3884               5  
Engineering                   32.6923               63.4615               40.1442               6  
Executive                     39.06                 125.50                68.3034               4  
Facilities and Maintenance    9.25                  24.0385               13.0316               7  
Finance                       13.4615               43.2692               23.935                10  
Human Resources               13.9423               27.1394               18.0248               6  
Information Services          27.4038               50.4808               34.1586               10  
Marketing                     13.4615               37.50                 18.4318               11  
Production                    6.50                  84.1346               13.5537               195  
Production Control            8.62                  24.5192               16.7746               8  
Purchasing                    9.86                  30.00                 18.0202               14  
Quality Assurance             10.5769               28.8462               15.4647               6  
Research and Development      40.8654               50.4808               43.6731               4  
Sales                         23.0769               72.1154               29.9719               18  
Shipping and Receiving        9.00                  19.2308               10.8718               6  
Tool Design                   8.62                  29.8462               23.5054               6  
  
 (16 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C. Using MAX  
 The following example uses the MAX aggregate function to return the price of the most expensive (maximum) product in a specified set of sales orders.  
  
```  
-- Uses AdventureWorks  
  
SELECT DISTINCT MAX(UnitPrice)   
FROM dbo.FactResellerSales   
WHERE SalesOrderNumber IN (N'SO43659', N'SO43660', N'SO43664');  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `----------`  
  
 `2039.9940`  
  
### D. Using MAX with OVER  
 The following examples use the MAX OVER() analytic function to return the price of the most expensive product in each sales order.  
  
```  
-- Uses AdventureWorks  
  
SELECT DISTINCT MAX(UnitPrice) OVER(PARTITION BY SalesOrderNumber) AS MostExpensiveProduct,  
       SalesOrderNumber  
FROM dbo.FactResellerSales    
WHERE SalesOrderNumber IN (N'SO43659', N'SO43660', N'SO43664')  
ORDER BY SalesOrderNumber  
;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `MostExpensiveProduct SalesOrderNumber`  
  
 `--------------------- ----------------`  
  
 `2039.9940             SO43659`  
  
 `879.7940             SO43660`  
  
 `2039.9940             SO43664`  
  
## See Also  
 [Aggregate Functions &#40;Transact-SQL&#41;](../../t-sql/functions/aggregate-functions-transact-sql.md)   
 [OVER Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-over-clause-transact-sql.md)  
  
  

