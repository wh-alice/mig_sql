---
title: "TOP (Transact-SQL) | Microsoft Docs"
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
  - "TOP_TSQL"
  - "TOP"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "TOP clause"
  - "first set of query result rows [SQL Server]"
  - "TOP clause, about TOP clause"
  - "queries [SQL Server], results"
ms.assetid: da983c0a-06c5-4cf8-a6a4-7f9d66f34f2c
caps.latest.revision: 60
ms.author: "rickbyh"
manager: "jhubbard"
---
# TOP (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Limits the rows returned in a query result set to a specified number of rows or percentage of rows in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]. When TOP is used in conjunction with the ORDER BY clause, the result set is limited to the first *N* number of ordered rows; otherwise, it returns the first *N* number of rows in an undefined order. Use this clause to specify the number of rows returned from a SELECT statement or affected by an INSERT, UPDATE, MERGE, or DELETE statement.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
[   
    TOP (expression) [PERCENT]  
    [ WITH TIES ]  
]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
[   
    TOP ( expression )   
    [ WITH TIES ]  
]  
```  
  
## Arguments  
 *expression*  
 Is the numeric expression that specifies the number of rows to be returned. *expression* is implicitly converted to a **float** value if PERCENT is specified; otherwise, it is converted to **bigint**.  
  
 PERCENT  
 Indicates that the query returns only the first *expression* percent of rows from the result set. Fractional values are rounded up to the next integer value.  
  
 WITH TIES  
 Used when you want to return two or more rows that tie for last place in the limited results set. Must be used with the **ORDER BY** clause. **WITH TIES** may cause more rows to be returned than the value specified in *expression*. For example, if *expression* is set to 5 but 2 additional rows match the values of the **ORDER BY** columns in row 5, the result set will contain 7 rows.  
  
 TOP...WITH TIES can be specified only in SELECT statements, and only if an ORDER BY clause is specified. The returned order of tying records is arbitrary. ORDER BY does not affect this rule.  
  
## Best Practices  
 In a SELECT statement, always use an ORDER BY clause with the TOP clause. This is the only way to predictably indicate which rows are affected by TOP.  
  
 Use OFFSET and FETCH in the ORDER BY clause instead of the TOP clause to implement a query paging solution. A paging solution (that is, sending chunks or "pages" of data to the client) is easier to implement using OFFSET and FETCH clauses. For more information, see [ORDER BY Clause &#40;Transact-SQL&#41;](../Topic/ORDER%20BY%20Clause%20\(Transact-SQL\).md).  
  
 Use TOP (or OFFSET and FETCH) instead of SET ROWCOUNT to limit the number of rows returned. These methods are preferred over using SET ROWCOUNT for the following reasons:  
  
-   As a part of a SELECT statement, the query optimizer can consider the value of *expression* in the TOP or FETCH clauses during query optimization. Because SET ROWCOUNT is used outside a statement that executes a query, its value cannot be considered in a query plan.  
  
## Compatibility Support  
 For backward compatibility, the parentheses are optional in SELECT statements. We recommend that you always use parentheses for TOP in SELECT statements for consistency with its required use in INSERT, UPDATE, MERGE, and DELETE statements in which the parentheses are required.  
  
## Interoperability  
 The TOP expression does not affect statements that may be executed because of a trigger. The **inserted** and **deleted** tables in the triggers will return only the rows that were truly affected by the INSERT, UPDATE, MERGE, or DELETE statements. For example, if an INSERT TRIGGER is fired as the result of an INSERT statement that used a TOP clause,  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] allows for updating rows through views. Because the TOP clause can be included in the view definition, certain rows may disappear from the view because of an update if the rows no longer meet the requirements of the TOP expression.  
  
 When specified in the MERGE statement, the TOP clause is applied *after* the entire source table and the entire target table are joined and the joined rows that do not qualify for an insert, update, or delete action are removed. The TOP clause further reduces the number of joined rows to the specified value and the insert, update, or delete actions are applied to the remaining joined rows in an unordered fashion. That is, there is no order in which the rows are distributed among the actions defined in the WHEN clauses. For example, if specifying TOP (10) affects 10 rows; of these rows, 7 may be updated and 3 inserted, or 1 may be deleted, 5 updated, and 4 inserted, and so on. Because the MERGE statement performs a full table scan of both the source and target tables, I/O performance can be affected when using the TOP clause to modify a large table by creating multiple batches. In this scenario, it is important to ensure that all successive batches target new rows.  
  
 Use caution when specifying the TOP clause in a query that contains a UNION, UNION ALL, EXCEPT, or INTERSECT operator. It is possible to write a query that returns unexpected results because the order in which the TOP and ORDER BY clauses are logically processed is not always intuitive when these operators are used in a select operation. For example, given the following table and data, assume that you want to return the least expensive red car and the least expensive blue car. That is, the red sedan and the blue van.  
  
```  
CREATE TABLE dbo.Cars(Model varchar(15), Price money, Color varchar(10));  
INSERT dbo.Cars VALUES  
    ('sedan', 10000, 'red'), ('convertible', 15000, 'blue'),   
    ('coupe', 20000, 'red'), ('van', 8000, 'blue');  
```  
  
 To achieve these results, you might write the following query.  
  
```  
SELECT TOP(1) Model, Color, Price  
FROM dbo.Cars  
WHERE Color = 'red'  
UNION ALL  
SELECT TOP(1) Model, Color, Price  
FROM dbo.Cars  
WHERE Color = 'blue'  
ORDER BY Price ASC;  
```  
  
 Here is the result set.  
  
 `Model         Color      Price`  
  
 `------------- ---------- -------`  
  
 `sedan         red        10000.00`  
  
 `convertible   blue       15000.00`  
  
 The unexpected results are returned because the TOP clause is logically executed before the ORDER BY clause, which sorts the results of the operator (UNION ALL in this case). Thus, the previous query returns any one red car and any one blue car and then orders the result of that union by the price. The following example shows the correct method of writing this query to achieve the desired result.  
  
```  
SELECT Model, Color, Price  
FROM (SELECT TOP(1) Model, Color, Price  
      FROM dbo.Cars  
      WHERE Color = 'red'  
      ORDER BY Price ASC) AS a  
UNION ALL  
SELECT Model, Color, Price  
FROM (SELECT TOP(1) Model, Color, Price  
      FROM dbo.Cars  
      WHERE Color = 'blue'  
      ORDER BY Price ASC) AS b;  
```  
  
 By using TOP and ORDER BY in a subselect operation, you ensure that the results of the ORDER BY clause is used applied to the TOP clause and not to sorting the result of the UNION operation.  
  
 Here is the result set.  
  
 `Model         Color      Price`  
  
 `------------- ---------- -------`  
  
 `sedan         red        10000.00`  
  
 `van           blue        8000.00`  
  
## Limitations and Restrictions  
 When TOP is used with INSERT, UPDATE, MERGE, or DELETE, the referenced rows are not arranged in any order and the ORDER BY clause can not be directly specified in these statements. If you need to use TOP to insert, delete, or modify rows in a meaningful chronological order, you must use TOP together with an ORDER BY clause that is specified in a subselect statement. See the Examples section that follows in this topic.  
  
 TOP cannot be used in an UPDATE and DELETE statements on partitioned views.  
  
 TOP cannot be combined with OFFSET and FETCH in the same query expression (in the same query scope). For more information, see [ORDER BY Clause &#40;Transact-SQL&#41;](../Topic/ORDER%20BY%20Clause%20\(Transact-SQL\).md).  
  
## Examples  
  
|Category|Featured syntax elements|  
|--------------|------------------------------|  
|[Basic syntax](#BasicSyntax)|TOP • PERCENT|  
|[Including tie values](#tie)|WITH TIES|  
|[Limiting the rows affected by DELETE, INSERT, or UPDATE](#DML)|DELETE • INSERT • UPDATE|  
  
###  <a name="BasicSyntax"></a> Basic syntax  
 Examples in this section demonstrate the basic functionality of the ORDER BY clause using the minimum required syntax.  
  
#### A. Using TOP with a constant value  
 The following examples use a constant value to specify the number of employees that are returned in the query result set. In the first example, the first 10 undefined rows are returned because an ORDER BY clause is not used. In the second example, an ORDER BY clause is used to return the top 10 recently hired employees.  
  
```  
USE AdventureWorks2012;  
GO  
-- Select the first 10 random employees.  
SELECT TOP(10)JobTitle, HireDate  
FROM HumanResources.Employee;  
GO  
-- Select the first 10 employees hired most recently.  
SELECT TOP(10)JobTitle, HireDate  
FROM HumanResources.Employee  
ORDER BY HireDate DESC;  
  
```  
  
#### B. Using TOP with a variable  
 The following example uses a variable to specify the number of employees that are returned in the query result set.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @p AS int = 10;  
SELECT TOP(@p)JobTitle, HireDate, VacationHours  
FROM HumanResources.Employee  
ORDER BY VacationHours DESC  
GO  
  
```  
  
#### C. Specifying a percentage  
 The following example uses PERCENT to specify the number of employees that are returned in the query result set. There are 290 employees in the `HumanResources.Employee` table. Because 5 percent of 290 is a fractional value, the value is rounded up to the next whole number.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT TOP(5)PERCENT JobTitle, HireDate  
FROM HumanResources.Employee  
ORDER BY HireDate DESC;  
  
```  
  
###  <a name="tie"></a> Including tie values  
  
#### A. Using WITH TIES to include rows that match the values in the last row  
 The following example obtains the top `10` percent of all employees with the highest salary and returns them in descending order according to their salary. Specifying `WITH TIES` makes sure that any employees that have salaries equal to the lowest salary returned (the last row) are also included in the result set, even if doing this exceeds `10` percent of employees.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT TOP(10)WITH TIES  
pp.FirstName, pp.LastName, e.JobTitle, e.Gender, r.Rate  
FROM Person.Person AS pp   
    INNER JOIN HumanResources.Employee AS e  
        ON pp.BusinessEntityID = e.BusinessEntityID  
    INNER JOIN HumanResources.EmployeePayHistory AS r  
        ON r.BusinessEntityID = e.BusinessEntityID  
ORDER BY Rate DESC;  
  
```  
  
###  <a name="DML"></a> Limiting the rows affected by DELETE, INSERT, or UPDATE  
  
#### A. Using TOP to limit the number of rows deleted  
 When a TOP (*n*) clause is used with DELETE, the delete operation is performed on an undefined selection of *n* number of rows. That is, the DELETE statement chooses any (*n*) number of rows that meet the criteria defined in the WHERE clause. The following example deletes `20` rows from the `PurchaseOrderDetail` table that have due dates that are earlier than July 1, 2002.  
  
```  
USE AdventureWorks2012;  
GO  
DELETE TOP (20)   
FROM Purchasing.PurchaseOrderDetail  
WHERE DueDate < '20020701';  
GO  
  
```  
  
 If you have to use TOP to delete rows in a meaningful chronological order, you must use TOP together with ORDER BY in a subselect statement. The following query deletes the 10 rows of the `PurchaseOrderDetail` table that have the earliest due dates. To ensure that only 10 rows are deleted, the column specified in the subselect statement (`PurchaseOrderID`) is the primary key of the table. Using a nonkey column in the subselect statement may result in the deletion of more than 10 rows if the specified column contains duplicate values.  
  
```  
USE AdventureWorks2012;  
GO  
DELETE FROM Purchasing.PurchaseOrderDetail  
WHERE PurchaseOrderDetailID IN  
   (SELECT TOP 10 PurchaseOrderDetailID   
    FROM Purchasing.PurchaseOrderDetail   
    ORDER BY DueDate ASC);  
GO  
```  
  
#### B. Using TOP to limit the number of rows inserted  
 The following example creates the table `EmployeeSales` and inserts the name and year-to-date sales data for the top 5 employees from the table `HumanResources.Employee`. The INSERT statement chooses any 5 rows returned by the `SELECT` statement that meet the criteria defined in the WHERE clause.  The OUTPUT clause displays the rows that are inserted into the `EmployeeSales` table. Notice that the ORDER BY clause in the SELECT statement is not used to determine the top 5 employees.  
  
```  
USE AdventureWorks2012 ;  
GO  
IF OBJECT_ID ('dbo.EmployeeSales', 'U') IS NOT NULL  
    DROP TABLE dbo.EmployeeSales;  
GO  
CREATE TABLE dbo.EmployeeSales  
( EmployeeID   nvarchar(11) NOT NULL,  
  LastName     nvarchar(20) NOT NULL,  
  FirstName    nvarchar(20) NOT NULL,  
  YearlySales  money NOT NULL  
 );  
GO  
INSERT TOP(5)INTO dbo.EmployeeSales  
    OUTPUT inserted.EmployeeID, inserted.FirstName, inserted.LastName, inserted.YearlySales  
    SELECT sp.BusinessEntityID, c.LastName, c.FirstName, sp.SalesYTD   
    FROM Sales.SalesPerson AS sp  
    INNER JOIN Person.Person AS c  
        ON sp.BusinessEntityID = c.BusinessEntityID  
    WHERE sp.SalesYTD > 250000.00  
    ORDER BY sp.SalesYTD DESC;  
  
```  
  
 If you have to use TOP to insert rows in a meaningful chronological order, you must use TOP together with ORDER BY in a subselect statement as shown in the following example. The OUTPUT clause displays the rows that are inserted into the `EmployeeSales` table. Notice that the top 5 employees are now inserted based on the results of the ORDER BY clause instead of undefined rows.  
  
```  
INSERT INTO dbo.EmployeeSales  
    OUTPUT inserted.EmployeeID, inserted.FirstName, inserted.LastName, inserted.YearlySales  
    SELECT TOP (5) sp.BusinessEntityID, c.LastName, c.FirstName, sp.SalesYTD   
    FROM Sales.SalesPerson AS sp  
    INNER JOIN Person.Person AS c  
        ON sp.BusinessEntityID = c.BusinessEntityID  
    WHERE sp.SalesYTD > 250000.00  
    ORDER BY sp.SalesYTD DESC;  
  
```  
  
#### C. Using TOP to limit the number of rows updated  
 The following example uses the TOP clause to update rows in a table. When a TOP (*n*) clause is used with UPDATE, the update operation is performed on an undefined number of rows. That is, the UPDATE statement chooses any (*n*) number of rows that meet the criteria defined in the WHERE clause. The following example assigns 10 customers from one salesperson to another.  
  
```  
USE AdventureWorks2012;  
UPDATE TOP (10) Sales.Store  
SET SalesPersonID = 276  
WHERE SalesPersonID = 275;  
GO  
```  
  
 If you have to use TOP to apply updates in a meaningful chronology, you must use TOP together with ORDER BY in a subselect statement. The following example updates the vacation hours of the 10 employees with the earliest hire dates.  
  
```  
UPDATE HumanResources.Employee  
SET VacationHours = VacationHours + 8  
FROM (SELECT TOP 10 BusinessEntityID FROM HumanResources.Employee  
     ORDER BY HireDate ASC) AS th  
WHERE HumanResources.Employee.BusinessEntityID = th.BusinessEntityID;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example returns the top 31 rows that match the query criteria. The **ORDER BY** clause is used to ensure that the 31 returned rows are the first 31 rows based on an alphabetical ordering of the `LastName` column.  
  
 Using **TOP** without specifying ties.  
  
```  
SELECT TOP (31) FirstName, LastName   
FROM DimEmployee ORDER BY LastName;  
```  
  
 Result: 31 rows are returned.  
  
 Using TOP, specifying WITH TIES.  
  
```  
SELECT TOP (31) WITH TIES FirstName, LastName   
FROM DimEmployee ORDER BY LastName;  
```  
  
 Result: 33 rows are returned, because 3 employees named Brown tie for the 31st row.  
  
## See Also  
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [INSERT &#40;Transact-SQL&#41;](../../t-sql/statements/insert-transact-sql.md)   
 [UPDATE &#40;Transact-SQL&#41;](../../t-sql/queries/update-transact-sql.md)   
 [DELETE &#40;Transact-SQL&#41;](../../t-sql/statements/delete-transact-sql.md)   
 [ORDER BY Clause &#40;Transact-SQL&#41;](../Topic/ORDER%20BY%20Clause%20\(Transact-SQL\).md)   
 [SET ROWCOUNT &#40;Transact-SQL&#41;](../../t-sql/statements/set-rowcount-transact-sql.md)   
 [MERGE &#40;Transact-SQL&#41;](../../t-sql/statements/merge-transact-sql.md)  
  
  

