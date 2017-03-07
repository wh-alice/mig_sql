---
title: "RANK (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-25"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "RANK"
  - "RANK_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "row ranking [SQL Server]"
  - "tied rows [SQL Server]"
  - "ranking rows"
  - "RANK function [Transact-SQL]"
ms.assetid: 2d96f6d2-5db7-4b3c-a63e-213c58e4af55
caps.latest.revision: 62
ms.author: "rickbyh"
manager: "jhubbard"
---
# RANK (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the rank of each row within the partition of a result set. The rank of a row is one plus the number of ranks that come before the row in question.  

  ROW_NUMBER and RANK are similar. ROW_NUMBER numbers all rows sequentially (for example 1, 2, 3, 4, 5). RANK provides the same numeric value for ties (for example 1, 2, 2, 4, 5).   
  
> [!NOTE]
> RANK is a temporary value calulated when the query is run. To persist numbers in a table, see [IDENTITY Property](IDENTITY%20\(Property\)%20\(Transact-SQL\).md) and [SEQUENCE](../../t-sql/statements/create-sequence-transact-sql.md). 
   
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
RANK ( ) OVER ( [ partition_by_clause ] order_by_clause )  
```  
  
## Arguments  
 OVER **(** [ *partition_by_clause* ] *order_by_clause***)**  
 *partition_by_clause* divides the result set produced by the FROM clause into partitions to which the function is applied. If not specified, the function treats all rows of the query result set as a single group. *order_by_clause* determines the order of the data before the function is applied. The *order_by_clause* is required. The \<rows or range clause> of the OVER clause cannot be specified for the RANK function. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md).  
  
## Return Types  
 **bigint**  
  
## Remarks  
 If two or more rows tie for a rank, each tied rows receives the same rank. For example, if the two top salespeople have the same SalesYTD value, they are both ranked one. The salesperson with the next highest SalesYTD is ranked number three, because there are two rows that are ranked higher. Therefore, the RANK function does not always return consecutive integers.  
  
 The sort order that is used for the whole query determines the order in which the rows appear in a result set.  
  
 RANK is nondeterministic. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A. Ranking rows within a partition  
 The following example ranks the products in inventory the specified inventory locations according to their quantities. The result set is partitioned by `LocationID` and logically ordered by `Quantity`. Notice that products 494 and 495 have the same quantity. Because they are tied, they are both ranked one.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT i.ProductID, p.Name, i.LocationID, i.Quantity  
    ,RANK() OVER   
    (PARTITION BY i.LocationID ORDER BY i.Quantity DESC) AS Rank  
FROM Production.ProductInventory AS i   
INNER JOIN Production.Product AS p   
    ON i.ProductID = p.ProductID  
WHERE i.LocationID BETWEEN 3 AND 4  
ORDER BY i.LocationID;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
ProductID   Name                   LocationID   Quantity Rank  
----------- ---------------------- ------------ -------- ----  
494         Paint - Silver         3            49       1  
495         Paint - Blue           3            49       1  
493         Paint - Red            3            41       3  
496         Paint - Yellow         3            30       4  
492         Paint - Black          3            17       5  
495         Paint - Blue           4            35       1  
496         Paint - Yellow         4            25       2  
493         Paint - Red            4            24       3  
492         Paint - Black          4            14       4  
494         Paint - Silver         4            12       5  
 (10 row(s) affected)  
```  
  
### B. Ranking all rows in a result set  
 The following example returns the top ten employees ranked by their salary. Because a PARTITION BY clause was not specified, the RANK function was applied to all rows in the result set.  
  
```  
USE AdventureWorks2012  
SELECT TOP(10) BusinessEntityID, Rate,   
       RANK() OVER (ORDER BY Rate DESC) AS RankBySalary  
FROM HumanResources.EmployeePayHistory AS eph1  
WHERE RateChangeDate = (SELECT MAX(RateChangeDate)   
                        FROM HumanResources.EmployeePayHistory AS eph2  
                        WHERE eph1.BusinessEntityID = eph2.BusinessEntityID)  
ORDER BY BusinessEntityID;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
BusinessEntityID Rate                  RankBySalary  
---------------- --------------------- --------------------  
1                125.50                1  
2                63.4615               4  
3                43.2692               8  
4                29.8462               19  
5                32.6923               16  
6                32.6923               16  
7                50.4808               6  
8                40.8654               10  
9                40.8654               10  
10               42.4808               9  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C: Ranking rows within a partition  
 The following example ranks the sales representatives in each sales territory according to their total sales. The rowset is partitioned by `SalesTerritoryGroup` and sorted by `SalesAmountQuota`.  
  
```  
-- Uses AdventureWorks  
  
SELECT LastName, SUM(SalesAmountQuota) AS TotalSales, SalesTerritoryRegion,  
    RANK() OVER (PARTITION BY SalesTerritoryRegion ORDER BY SUM(SalesAmountQuota) DESC ) AS RankResult  
FROM dbo.DimEmployee AS e  
INNER JOIN dbo.FactSalesQuota AS sq ON e.EmployeeKey = sq.EmployeeKey  
INNER JOIN dbo.DimSalesTerritory AS st ON e.SalesTerritoryKey = st.SalesTerritoryKey  
WHERE SalesPersonFlag = 1 AND SalesTerritoryRegion != N'NA'  
GROUP BY LastName, SalesTerritoryRegion;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `LastName          TotalSales     SalesTerritoryGroup  RankResult`  
  
 `----------------  -------------  -------------------  --------`  
  
 `Tsoflias          1687000.0000   Australia            1`  
  
 `Saraiva           7098000.0000   Canada               1`  
  
 `Vargas            4365000.0000   Canada               2`  
  
 `Carson            12198000.0000  Central              1`  
  
 `Varkey Chudukatil 5557000.0000   France               1`  
  
 `Valdez            2287000.0000   Germany              1`  
  
 `Blythe            11162000.0000  Northeast            1`  
  
 `Campbell          4025000.0000   Northwest            1`  
  
 `Ansman-Wolfe      3551000.0000   Northwest            2`  
  
 `Mensa-Annan       2753000.0000   Northwest            3`  
  
 `Reiter            8541000.0000   Southeast            1`  
  
 `Mitchell          11786000.0000  Southwest            1`  
  
 `Ito               7804000.0000   Southwest            2`  
  
 `Pak               10514000.0000  United Kingdom       1`  
  
## See Also  
 [DENSE_RANK &#40;Transact-SQL&#41;](../../t-sql/functions/dense-rank-transact-sql.md)   
 [ROW_NUMBER &#40;Transact-SQL&#41;](../../t-sql/functions/row-number-transact-sql.md)   
 [NTILE &#40;Transact-SQL&#41;](../../t-sql/functions/ntile-transact-sql.md)   
 [Ranking Functions &#40;Transact-SQL&#41;](../../t-sql/functions/ranking-functions-transact-sql.md)   
 [Built-in Functions &#40;Transact-SQL&#41;](../Topic/Built-in%20Functions%20\(Transact-SQL\).md)  
  
  

