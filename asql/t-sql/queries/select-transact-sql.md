---
title: "SELECT (Transact-SQL) | Microsoft Docs"
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
  - "SELECT_TSQL"
  - "SELECT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "retrieving rows"
  - "SELECT statement [SQL Server]"
  - "SELECT statement [SQL Server], about SELECT statement"
  - "row retrieval [SQL Server], SELECT statement"
  - "DML [SQL Server], SELECT statement"
  - "data manipulation language [SQL Server], SELECT statement"
  - "row retrieval [SQL Server]"
  - "queries [SQL Server], results"
ms.assetid: dc85caea-54d1-49af-b166-f3aa2f3a93d0
caps.latest.revision: 51
ms.author: "rickbyh"
manager: "jhubbard"
---
# SELECT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Retrieves rows from the database and enables the selection of one or many rows or columns from one or many tables in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. The full syntax of the SELECT statement is complex, but the main clauses can be summarized as:  
  
 [ WITH { [ XMLNAMESPACES ,] [ <common_table_expression> ] } ]  
  
 SELECT *select_list* [ INTO *new_table* ]  
  
 [ FROM *table_source* ] [ WHERE *search_condition* ]  
  
 [ GROUP BY *group_by_expression* ]  
  
 [ HAVING *search_condition* ]  
  
 [ ORDER BY *order_expression* [ ASC | DESC ] ]  
  
 The UNION, EXCEPT and INTERSECT operators can be used between queries to combine or compare their results into one result set.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
<SELECT statement> ::=    
    [ WITH { [ XMLNAMESPACES ,] [ <common_table_expression> [,...n] ] } ]  
    <query_expression>   
    [ ORDER BY { order_by_expression | column_position [ ASC | DESC ] }   
  [ ,...n ] ]   
    [ <FOR Clause>]   
    [ OPTION ( <query_hint> [ ,...n ] ) ]   
<query_expression> ::=   
    { <query_specification> | ( <query_expression> ) }   
    [  { UNION [ ALL ] | EXCEPT | INTERSECT }  
        <query_specification> | ( <query_expression> ) [...n ] ]   
<query_specification> ::=   
SELECT [ ALL | DISTINCT ]   
    [TOP ( expression ) [PERCENT] [ WITH TIES ] ]   
    < select_list >   
    [ INTO new_table ]   
    [ FROM { <table_source> } [ ,...n ] ]   
    [ WHERE <search_condition> ]   
    [ <GROUP BY> ]   
    [ HAVING < search_condition > ]   
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
[ WITH <common_table_expression> [ ,...n ] ]  
SELECT <select_criteria>  
[;]  
  
<select_criteria> ::=  
    [ TOP ( top_expression ) ]   
    [ ALL | DISTINCT ]   
    { * | column_name | expression } [ ,...n ]   
    [ FROM { table_source } [ ,...n ] ]  
    [ WHERE <search_condition> ]   
    [ GROUP BY <group_by_clause> ]   
    [ HAVING <search_condition> ]   
    [ ORDER BY <order_by_expression> ]  
    [ OPTION ( <query_option> [ ,...n ] ) ]  
  
```  
  
## Remarks  
 Because of the complexity of the SELECT statement, detailed syntax elements and arguments are shown by clause:  
  
|||  
|-|-|  
|[WITH XMLNAMESPACES](../../t-sql/data-types/with-xmlnamespaces.md)<br /><br /> [WITH common_table_expression](../../t-sql/queries/with-common-table-expression-transact-sql.md)|[HAVING](../../t-sql/queries/select-having-transact-sql.md)|  
|[SELECT Clause](../../t-sql/queries/select-clause-transact-sql.md)|[UNION](../Topic/UNION%20\(Transact-SQL\).md)|  
|[INTO Clause](../../t-sql/queries/select-into-clause-transact-sql.md)|[EXCEPT and INTERSECT](../Topic/EXCEPT%20and%20INTERSECT%20\(Transact-SQL\).md)|  
|[FROM](../../t-sql/queries/from-transact-sql.md)|[ORDER BY](../../t-sql/queries/select-order-by-clause-transact-sql.md)|  
|[WHERE](../../t-sql/queries/where-transact-sql.md)|[FOR Clause](../../t-sql/queries/select-for-clause-transact-sql.md)|  
|[GROUP BY](../../t-sql/queries/select-group-by-transact-sql.md)|[OPTION Clause](../../t-sql/queries/option-clause-transact-sql.md)|  
  
 The order of the clauses in the SELECT statement is significant. Any one of the optional clauses can be omitted, but when the optional clauses are used, they must appear in the appropriate order.  
  
 SELECT statements are permitted in user-defined functions only if the select lists of these statements contain expressions that assign values to variables that are local to the functions.  
  
 A four-part name constructed with the OPENDATASOURCE function as the server-name part can be used as a table source wherever a table name can appear in a SELECT statement. A four-part name cannot be specified for [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].  
  
 Some syntax restrictions apply to SELECT statements that involve remote tables.  
  
## Logical Processing Order of the SELECT statement  
 The following steps show the logical processing order, or binding order, for a SELECT statement. This order determines when the objects defined in one step are made available to the clauses in subsequent steps. For example, if the query processor can bind to (access) the tables or views defined in the FROM clause, these objects and their columns are made available to all subsequent steps. Conversely, because the SELECT clause is step 8, any column aliases or derived columns defined in that clause cannot be referenced by preceding clauses. However, they can be referenced by subsequent clauses such as the ORDER BY clause. Note that the actual physical execution of the statement is determined by the query processor and the order may vary from this list.  
  
1.  FROM  
  
2.  ON  
  
3.  JOIN  
  
4.  WHERE  
  
5.  GROUP BY  
  
6.  WITH CUBE or WITH ROLLUP  
  
7.  HAVING  
  
8.  SELECT  
  
9. DISTINCT  
  
10. ORDER BY  
  
11. TOP  
  
## Permissions  
 Selecting data requires **SELECT** permission on the table or view, which could be inherited from a higher scope such as **SELECT** permission on the schema or **CONTROL** permission on the table. Or requires membership in the **db_datareader** or **db_owner** fixed database roles, or the **sysadmin** fixed server role. Creating a new table using **SELECTINTO** also requires both the **CREATETABLE** permission, and the **ALTERSCHEMA** permission on the schema that owns the new table.  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### A. Using SELECT to retrieve rows and columns  
 This section shows three code examples. This first code example returns all rows (no WHERE clause is specified) and all columns (using the `*`) from the `DimEmployee` table in the [!INCLUDE[ssawPDW](../../t-sql/database-console-commands/includes/ssawpdw-md.md)] database.  
  
```  
-- Uses AdventureWorks  
  
SELECT *  
FROM DimEmployee  
ORDER BY LastName;  
```  
  
 This next example using table aliasing to achieve the same result.  
  
```  
-- Uses AdventureWorks  
  
SELECT e.*  
FROM DimEmployee AS e  
ORDER BY LastName;  
```  
  
 This example returns all rows (no WHERE clause is specified) and a subset of the columns (`FirstName`, `LastName`, `StartDate`) from the `DimEmployee` table in the `AdventureWorksPDW2012` database. The third column heading is renamed to `FirstDay`.  
  
```  
-- Uses AdventureWorks  
  
SELECT FirstName, LastName, StartDate AS FirstDay  
FROM DimEmployee   
ORDER BY LastName;  
```  
  
 This example returns only the rows for `DimEmployee` that have an `EndDate` that is not NULL and a `MaritalStatus` of ‘M’ (married).  
  
```  
-- Uses AdventureWorks  
  
SELECT FirstName, LastName, StartDate AS FirstDay  
FROM DimEmployee   
WHERE EndDate IS NOT NULL   
AND MaritalStatus = 'M'  
ORDER BY LastName;  
```  
  
### B. Using SELECT with column headings and calculations  
 The following example returns all rows from the `DimEmployee` table, and calculates the gross pay for each employee based on their `BaseRate` and a 40 hour work week.  
  
```  
-- Uses AdventureWorks  
  
SELECT FirstName, LastName, BaseRate, BaseRate * 40 AS GrossPay  
FROM DimEmployee  
ORDER BY LastName;  
```  
  
### C. Using DISTINCT with SELECT  
 The following example uses `DISTINCT` to generate a list of all unique titles in the `DimEmployee` table.  
  
```  
-- Uses AdventureWorks  
  
SELECT DISTINCT Title  
FROM DimEmployee  
ORDER BY Title;  
```  
  
### D. Using GROUP BY  
 The following example finds the total amount for all sales on each day.  
  
```  
-- Uses AdventureWorks  
  
SELECT OrderDateKey, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey  
ORDER BY OrderDateKey;  
```  
  
 Because of the `GROUP BY` clause, only one row containing the sum of all sales is returned for each day.  
  
### E. Using GROUP BY with multiple groups  
 The following example finds the average price and the sum of Internet sales for each day, grouped by order date and the promotion key.  
  
```  
-- Uses AdventureWorks  
  
SELECT OrderDateKey, PromotionKey, AVG(SalesAmount) AS AvgSales, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey, PromotionKey  
ORDER BY OrderDateKey;   
```  
  
### F. Using GROUP BY and WHERE  
 The following example puts the results into groups after retrieving only the rows with order dates later than August 1, 2002.  
  
```  
-- Uses AdventureWorks  
  
SELECT OrderDateKey, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
WHERE OrderDateKey > '20020801'  
GROUP BY OrderDateKey  
ORDER BY OrderDateKey;  
```  
  
### G. Using GROUP BY with an expression  
 The following example groups by an expression. You can group by an expression if the expression does not include aggregate functions.  
  
```  
-- Uses AdventureWorks  
  
SELECT SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY (OrderDateKey * 10);  
  
```  
  
### H. Using GROUP BY with ORDER BY  
 The following example finds the sum of sales per day, and orders by the day.  
  
```  
-- Uses AdventureWorks  
  
SELECT OrderDateKey, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey  
ORDER BY OrderDateKey;  
  
```  
  
### I. Using the HAVING clause  
 This query uses the `HAVING` clause to restrict results.  
  
```  
-- Uses AdventureWorks  
  
SELECT OrderDateKey, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey  
HAVING OrderDateKey > 20010000  
ORDER BY OrderDateKey;  
```  
  
## See Also  
 [SELECT Examples &#40;Transact-SQL&#41;](../../t-sql/queries/select-examples-transact-sql.md)  
  
  

