---
title: "COALESCE (Transact-SQL) | Microsoft Docs"
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
  - "COALESCE"
  - "COALESCE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "expressions [SQL Server], nonnull"
  - "COALESCE function"
  - "first nonnull expressions [SQL Server]"
  - "nonnull expressions"
ms.assetid: fafc0dba-f8a8-4aad-9b7f-908e34b74d88
caps.latest.revision: 52
ms.author: "rickbyh"
manager: "jhubbard"
---
# COALESCE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Evaluates the arguments in order and returns the current value of the first expression that initially does not evaluate to NULL.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
COALESCE ( expression [ ,...n ] )   
```  
  
## Arguments  
 *expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of any type.  
  
## Return Types  
 Returns the data type of *expression* with the highest data type precedence. If all expressions are nonnullable, the result is typed as nonnullable.  
  
## Remarks  
 If all arguments are NULL, COALESCE returns NULL. At least one of the null values must be a typed NULL.  
  
## Comparing COALESCE and CASE  
 The COALESCE expression is a syntactic shortcut for the CASE expression.  That is, the code `COALESCE`(*expression1*,*...n*) is rewritten by the query optimizer as  the following CASE expression:  
  
 `CASE`  
  
 `WHEN (expression1 IS NOT NULL) THEN expression1`  
  
 `WHEN (expression2 IS NOT NULL) THEN expression2`  
  
 `...`  
  
 `ELSE expressionN`  
  
 `END`  
  
 This means that the input values (*expression1*, *expression2*, *expressionN*, etc.) will be evaluated multiple times. Also, in compliance with the SQL standard, a value expression that contains a subquery is considered non-deterministic and the subquery is evaluated twice. In either case, different results can be returned between the first evaluation and subsequent evaluations.  
  
 For example, when the code `COALESCE((subquery), 1)` is executed, the subquery is evaluated twice. As a result, you can get different results depending on the isolation level of the query. For example, the code can return NULL under the READ COMMITTED isolation level in a multi-user environment. To ensure stable results are returned, use the SNAPSHOT ISOLATION isolation level, or replace COALESE with the ISNULL function. Alternatively, you can rewrite the query to push the subquery into a subselect as shown in the following example.  
  
```  
SELECT CASE WHEN x IS NOT NULL THEN x ELSE 1 END  
from  
(  
SELECT (SELECT Nullable FROM Demo WHERE SomeCol = 1) AS x  
) AS T;  
  
```  
  
## Comparing COALESCE and ISNULL  
 The ISNULL function and the COALESCE expression have a similar purpose but can behave differently.  
  
1.  Because ISNULL is a function, it is evaluated only once.  As described above, the input values for the COALESCE expression can be evaluated multiple times.  
  
2.  Data type determination of the resulting expression is different. ISNULL uses the data type of the first parameter, COALESCE follows the CASE expression rules and returns the data type of value with the highest precedence.  
  
3.  The NULLability of the result expression is different for ISNULL and COALESCE. The ISNULL return value is always considered NOT NULLable (assuming the return value is a non-nullable one) whereas COALESCE with non-null parameters is considered to be NULL. So the expressions `ISNULL(NULL, 1)` and `COALESCE(NULL, 1)` although equivalent have different nullability values. This makes a difference if you are using these expressions in computed columns, creating key constraints or making the return value of a scalar UDF deterministic so that it can be indexed as shown in the following example.  
  
    ```  
    USE tempdb;  
    GO  
    -- This statement fails because the PRIMARY KEY cannot accept NULL values  
    -- and the nullability of the COALESCE expression for col2   
    -- evaluates to NULL.  
    CREATE TABLE #Demo   
    (   
    col1 integer NULL,   
    col2 AS COALESCE(col1, 0) PRIMARY KEY,   
    col3 AS ISNULL(col1, 0)   
    );   
  
    -- This statement succeeds because the nullability of the   
    -- ISNULL function evaluates AS NOT NULL.  
  
    CREATE TABLE #Demo   
    (   
    col1 integer NULL,   
    col2 AS COALESCE(col1, 0),   
    col3 AS ISNULL(col1, 0) PRIMARY KEY   
    );  
    ```  
  
4.  Validations for ISNULL and COALESCE are also different. For example, a NULL value for ISNULL is converted to **int** whereas for COALESCE, you must provide a data type.  
  
5.  ISNULL takes only 2 parameters whereas COALESCE takes a variable number of parameters.  
  
## Examples  
  
### A. Running a simple example  
 The following example shows how `COALESCE` selects the data from the first column that has a nonnull value. This example uses the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT Name, Class, Color, ProductNumber,  
COALESCE(Class, Color, ProductNumber) AS FirstNotNull  
FROM Production.Product;  
  
```  
  
### B. Running a complex example  
 In the following example, the `wages` table includes three columns that contain information about the yearly wages of the employees: the hourly wage, salary, and commission. However, an employee receives only one type of pay. To determine the total amount paid to all employees, use `COALESCE` to receive only the nonnull value found in `hourly_wage`, `salary`, and `commission`.  
  
```  
SET NOCOUNT ON;  
GO  
USE tempdb;  
IF OBJECT_ID('dbo.wages') IS NOT NULL  
    DROP TABLE wages;  
GO  
CREATE TABLE dbo.wages  
(  
    emp_id        tinyint   identity,  
    hourly_wage   decimal   NULL,  
    salary        decimal   NULL,  
    commission    decimal   NULL,  
    num_sales     tinyint   NULL  
);  
GO  
INSERT dbo.wages (hourly_wage, salary, commission, num_sales)  
VALUES  
    (10.00, NULL, NULL, NULL),  
    (20.00, NULL, NULL, NULL),  
    (30.00, NULL, NULL, NULL),  
    (40.00, NULL, NULL, NULL),  
    (NULL, 10000.00, NULL, NULL),  
    (NULL, 20000.00, NULL, NULL),  
    (NULL, 30000.00, NULL, NULL),  
    (NULL, 40000.00, NULL, NULL),  
    (NULL, NULL, 15000, 3),  
    (NULL, NULL, 25000, 2),  
    (NULL, NULL, 20000, 6),  
    (NULL, NULL, 14000, 4);  
GO  
SET NOCOUNT OFF;  
GO  
SELECT CAST(COALESCE(hourly_wage * 40 * 52,   
   salary,   
   commission * num_sales) AS money) AS 'Total Salary'   
FROM dbo.wages  
ORDER BY 'Total Salary';  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Total Salary`  
  
 `------------`  
  
 `10000.00`  
  
 `20000.00`  
  
 `20800.00`  
  
 `30000.00`  
  
 `40000.00`  
  
 `41600.00`  
  
 `45000.00`  
  
 `50000.00`  
  
 `56000.00`  
  
 `62400.00`  
  
 `83200.00`  
  
 `120000.00`  
  
 `(12 row(s) affected)`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C: Simple Example  
 The following example demonstrates how COALESCE selects the data from the first column that has a non-null value. Assume for this example that the `Products` table contains this data:  
  
 `Name         Color      ProductNumber`  
  
 `------------ ---------- -------------`  
  
 `Socks, Mens  NULL       PN1278`  
  
 `Socks, Mens  Blue       PN1965`  
  
 `NULL         White      PN9876`  
  
 We then run the following COALESCE query:  
  
```  
SELECT Name, Color, ProductNumber, COALESCE(Color, ProductNumber) AS FirstNotNull   
FROM Products ;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Name         Color      ProductNumber  FirstNotNull`  
  
 `------------ ---------- -------------  ------------`  
  
 `Socks, Mens  NULL       PN1278         PN1278`  
  
 `Socks, Mens  Blue       PN1965         Blue`  
  
 `NULL         White      PN9876         White`  
  
 Notice that in the first row, the `FirstNotNull` value is “PN1278”, not “Socks, Mens”. This is because the `Name` column was not specified as a parameter for COALESCE in the example.  
  
### D: Complex Example  
 The following example uses COALESCE to compare the values in three columns  and return only the non-null value found in the columns.  
  
```  
CREATE TABLE dbo.wages  
(  
    emp_id        tinyint   NULL,  
    hourly_wage   decimal   NULL,  
    salary        decimal   NULL,  
    commission    decimal   NULL,  
    num_sales     tinyint   NULL  
);  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (1, 10.00, NULL, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (2, 20.00, NULL, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (3, 30.00, NULL, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (4, 40.00, NULL, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (5, NULL, 10000.00, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (6, NULL, 20000.00, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (7, NULL, 30000.00, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (8, NULL, 40000.00, NULL, NULL);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (9, NULL, NULL, 15000, 3);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (10,NULL, NULL, 25000, 2);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (11, NULL, NULL, 20000, 6);  
  
INSERT INTO dbo.wages (emp_id, hourly_wage, salary, commission, num_sales)  
VALUES (12, NULL, NULL, 14000, 4);  
  
SELECT CAST(COALESCE(hourly_wage * 40 * 52,   
   salary,   
   commission * num_sales) AS decimal(10,2)) AS TotalSalary   
FROM dbo.wages  
ORDER BY TotalSalary;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Total Salary`  
  
 `------------`  
  
 `10000.00`  
  
 `20000.00`  
  
 `20800.00`  
  
 `30000.00`  
  
 `40000.00`  
  
 `41600.00`  
  
 `45000.00`  
  
 `50000.00`  
  
 `56000.00`  
  
 `62400.00`  
  
 `83200.00`  
  
 `120000.00`  
  
## See Also  
 [ISNULL &#40;Transact-SQL&#41;](../../t-sql/functions/isnull-transact-sql.md)   
 [CASE &#40;Transact-SQL&#41;](../../t-sql/language-elements/case-transact-sql.md)  
  
  




