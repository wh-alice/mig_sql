---
title: "IN (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IN_TSQL"
  - "IN"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "values [SQL Server], matching"
  - "NOT IN keyword"
  - "8623 (Database Engine error)"
  - "matching values in subquery or list [SQL Server]"
  - "IN keyword"
  - "8632 (Database Engine error)"
ms.assetid: 4419de73-96b1-4dfe-8500-f4507915db04
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# IN (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Determines whether a specified value matches any value in a subquery or a list.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
test_expression [ NOT ] IN   
    ( subquery | expression [ ,...n ]  
    )   
```  
  
## Arguments  
 *test_expression*  
 Is any valid [expression](../../t-sql/language-elements/expressions-transact-sql.md).  
  
 *subquery*  
 Is a subquery that has a result set of one column. This column must have the same data type as *test_expression*.  
  
 *expression*[ **,**... *n* ]  
 Is a list of expressions to test for a match. All expressions must be of the same type as *test_expression*.  
  
## Result Types  
 **Boolean**  
  
## Result Value  
 If the value of *test_expression* is equal to any value returned by *subquery* or is equal to any *expression* from the comma-separated list, the result value is TRUE; otherwise, the result value is FALSE.  
  
 Using NOT IN negates the *subquery* value or *expression*.  
  
> [!CAUTION]  
>  Any null values returned by *subquery* or *expression* that are compared to *test_expression* using IN or NOT IN return UNKNOWN. Using null values in together with IN or NOT IN can produce unexpected results.  
  
## Remarks  
 Explicitly including an extremely large number of values (many thousands of values separated by commas) within the parentheses, in an IN clause can consume resources and return errors 8623 or 8632. To work around this problem, store the items in the IN list in a table, and use a SELECT subquery within an IN clause.  
  
 Error 8623:  
  
 `The query processor ran out of internal resources and could not produce a query plan. This is a rare event and only expected for extremely complex queries or queries that reference a very large number of tables or partitions. Please simplify the query. If you believe you have received this message in error, contact Customer Support Services for more information.`  
  
 Error 8632:  
  
 `Internal error: An expression services limit has been reached. Please look for potentially complex expressions in your query, and try to simplify them.`  
  
## Examples  
  
### A. Comparing OR and IN  
 The following example selects a list of the names of employees who are design engineers, tool designers, or marketing assistants.  
  
```  
-- Uses AdventureWorks  
  
SELECT p.FirstName, p.LastName, e.JobTitle  
FROM Person.Person AS p  
JOIN HumanResources.Employee AS e  
    ON p.BusinessEntityID = e.BusinessEntityID  
WHERE e.JobTitle = 'Design Engineer'   
   OR e.JobTitle = 'Tool Designer'   
   OR e.JobTitle = 'Marketing Assistant';  
GO  
```  
  
 However, you retrieve the same results by using IN.  
  
```  
-- Uses AdventureWorks  
  
SELECT p.FirstName, p.LastName, e.JobTitle  
FROM Person.Person AS p  
JOIN HumanResources.Employee AS e  
    ON p.BusinessEntityID = e.BusinessEntityID  
WHERE e.JobTitle IN ('Design Engineer', 'Tool Designer', 'Marketing Assistant');  
GO  
```  
  
 Here is the result set from either query.  
  
```  
FirstName   LastName      Title  
---------   ---------   ---------------------  
Sharon      Salavaria   Design Engineer                                     
Gail        Erickson    Design Engineer                                     
Jossef      Goldberg    Design Engineer                                     
Janice      Galvin      Tool Designer                                       
Thierry     D'Hers      Tool Designer                                       
Wanida      Benshoof    Marketing Assistant                                 
Kevin       Brown       Marketing Assistant                                 
Mary        Dempsey     Marketing Assistant                                 
  
(8 row(s) affected)  
```  
  
### B. Using IN with a subquery  
 The following example finds all IDs for the salespeople in the `SalesPerson` table for employees who have a sales quota greater than $250,000 for the year, and then selects from the `Employee` table the names of all employees where `EmployeeID` that match the results from the `SELECT` subquery.  
  
```  
-- Uses AdventureWorks  
  
SELECT p.FirstName, p.LastName  
FROM Person.Person AS p  
    JOIN Sales.SalesPerson AS sp  
    ON p.BusinessEntityID = sp.BusinessEntityID  
WHERE p.BusinessEntityID IN  
   (SELECT BusinessEntityID  
   FROM Sales.SalesPerson  
   WHERE SalesQuota > 250000);  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
FirstName   LastName                                             
---------   --------   
Tsvi         Reiter                                              
Michael      Blythe                                              
Tete         Mensa-Annan                                         
  
(3 row(s) affected)  
```  
  
### C. Using NOT IN with a subquery  
 The following example finds the salespersons who do not have a quota greater than $250,000. `NOT IN` finds the salespersons who do not match the items in the values list.  
  
```  
-- Uses AdventureWorks  
  
SELECT p.FirstName, p.LastName  
FROM Person.Person AS p  
    JOIN Sales.SalesPerson AS sp  
    ON p.BusinessEntityID = sp.BusinessEntityID  
WHERE p.BusinessEntityID NOT IN  
   (SELECT BusinessEntityID  
   FROM Sales.SalesPerson  
   WHERE SalesQuota > 250000);  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### D. Using IN and NOT IN  
 The following example finds all entries in the `FactInternetSales` table that match `SalesReasonKey` values in the `DimSalesReason` table.  
  
```  
-- Uses AdventureWorks  
  
SELECT * FROM FactInternetSalesReason   
WHERE SalesReasonKey   
IN (SELECT SalesReasonKey FROM DimSalesReason);   
```  
  
 The following example finds all entries in the `FactInternetSalesReason` table that do not match `SalesReasonKey` values in the `DimSalesReason` table.  
  
```  
-- Uses AdventureWorks  
  
SELECT * FROM FactInternetSalesReason   
WHERE SalesReasonKey   
NOT IN (SELECT SalesReasonKey FROM DimSalesReason);  
```  
  
### E. Using IN with an expression list  
 The following example finds all IDs for the salespeople in the `DimEmployee` table for employees who have a first name that is either `Mike` or `Michael`.  
  
```  
-- Uses AdventureWorks  
  
SELECT FirstName, LastName  
FROM DimEmployee  
WHERE FirstName IN ('Mike', 'Michael');  
```  
  
## See Also  
 [CASE &#40;Transact-SQL&#41;](../../t-sql/language-elements/case-transact-sql.md)   
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [Built-in Functions &#40;Transact-SQL&#41;](../Topic/Built-in%20Functions%20\(Transact-SQL\).md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [WHERE &#40;Transact-SQL&#41;](../../t-sql/queries/where-transact-sql.md)   
 [ALL &#40;Transact-SQL&#41;](../../t-sql/language-elements/all-transact-sql.md)   
 [SOME &#124; ANY &#40;Transact-SQL&#41;](../../t-sql/language-elements/some-any-transact-sql.md)  
  
  

