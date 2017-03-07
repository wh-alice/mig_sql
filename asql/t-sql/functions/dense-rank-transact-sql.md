---
title: "DENSE_RANK (Transact-SQL) | Microsoft Docs"
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
  - "DENSE_RANK_TSQL"
  - "DENSE_RANK"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "row ranking [SQL Server]"
  - "DENSE_RANK function"
  - "tied rows [SQL Server]"
  - "ranking rows"
ms.assetid: 03871fc6-9592-4016-b0b2-ff543f132b20
caps.latest.revision: 46
ms.author: "rickbyh"
manager: "jhubbard"
---
# DENSE_RANK (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the rank of rows within the partition of a result set, without any gaps in the ranking. The rank of a row is one plus the number of distinct ranks that come before the row in question.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
DENSE_RANK ( ) OVER ( [ <partition_by_clause> ] < order_by_clause > )  
```  
  
## Arguments  
 <partition_by_clause>  
 Divides the result set produced by the [FROM](../../t-sql/queries/from-transact-sql.md) clause into partitions to which the DENSE_RANK function is applied. For the PARTITION BY syntax, see [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md).  
  
 <order_by_clause>  
 Determines the order in which the DENSE_RANK function is applied to the rows in a partition.  
  
## Return Types  
 **bigint**  
  
## Remarks  
 If two or more rows tie for a rank in the same partition, each tied rows receives the same rank. For example, if the two top salespeople have the same SalesYTD value, they are both ranked one. The salesperson with the next highest SalesYTD is ranked number two. This is one more than the number of distinct rows that come before this row. Therefore, the numbers returned by the DENSE_RANK function do not have gaps and always have consecutive ranks.  
  
 The sort order used for the whole query determines the order in which the rows appear in a result. This implies that a row ranked number one does not have to be the first row in the partition.  
  
 DENSE_RANK is nondeterministic. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A. Ranking rows within a partition  
 The following example ranks the products in inventory the specified inventory locations according to their quantities. The result set is partitioned by `LocationID` and logically ordered by `Quantity`. Notice that products 494 and 495 have the same quantity. Because they are tied, they are both ranked one.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT i.ProductID, p.Name, i.LocationID, i.Quantity  
    ,DENSE_RANK() OVER   
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
ProductID   Name                               LocationID Quantity Rank  
----------- ---------------------------------- ---------- -------- -----  
494         Paint - Silver                     3          49       1  
495         Paint - Blue                       3          49       1  
493         Paint - Red                        3          41       2  
496         Paint - Yellow                     3          30       3  
492         Paint - Black                      3          17       4  
495         Paint - Blue                       4          35       1  
496         Paint - Yellow                     4          25       2  
493         Paint - Red                        4          24       3  
492         Paint - Black                      4          14       4  
494         Paint - Silver                     4          12       5  
  
(10 row(s) affected)  
  
```  
  
### B. Ranking all rows in a result set  
 The following example returns the top ten employees ranked by their salary. Because a PARTITION BY clause was not specified, the DENSE_RANK function was applied to all rows in the result set.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT TOP(10) BusinessEntityID, Rate,   
       DENSE_RANK() OVER (ORDER BY Rate DESC) AS RankBySalary  
FROM HumanResources.EmployeePayHistory;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
BusinessEntityID Rate                  RankBySalary  
---------------- --------------------- --------------------  
1                125.50                1  
25               84.1346               2  
273              72.1154               3  
2                63.4615               4  
234              60.0962               5  
263              50.4808               6  
7                50.4808               6  
234              48.5577               7  
285              48.101                8  
274              48.101                8  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C: Ranking rows within a partition  
 The following example ranks the sales representatives in each sales territory according to their total sales. The rowset is partitioned by `SalesTerritoryGroup` and sorted by `SalesAmountQuota`.  
  
```  
-- Uses AdventureWorks  
  
SELECT LastName, SUM(SalesAmountQuota) AS TotalSales, SalesTerritoryGroup,  
    DENSE_RANK() OVER (PARTITION BY SalesTerritoryGroup ORDER BY SUM(SalesAmountQuota) DESC ) AS RankResult  
FROM dbo.DimEmployee AS e  
INNER JOIN dbo.FactSalesQuota AS sq ON e.EmployeeKey = sq.EmployeeKey  
INNER JOIN dbo.DimSalesTerritory AS st ON e.SalesTerritoryKey = st.SalesTerritoryKey  
WHERE SalesPersonFlag = 1 AND SalesTerritoryGroup != N'NA'  
GROUP BY LastName,SalesTerritoryGroup;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `LastName          TotalSales     SalesTerritoryGroup  RankResult`  
  
 `----------------  -------------  -------------------  --------`  
  
 `Pak               10514000.0000  Europe               1`  
  
 `Varkey Chudukatil  5557000.0000  Europe               2`  
  
 `Valdez             2287000.0000  Europe               3`  
  
 `Carson            12198000.0000  North America        1`  
  
 `Mitchell          11786000.0000  North America        2`  
  
 `Blythe            11162000.0000  North America        3`  
  
 `Reiter             8541000.0000  North America        4`  
  
 `Ito                7804000.0000  North America        5`  
  
 `Saraiva            7098000.0000  North America        6`  
  
 `Vargas             4365000.0000  North America        7`  
  
 `Campbell           4025000.0000  North America        8`  
  
 `Ansman-Wolfe       3551000.0000  North America        9`  
  
 `Mensa-Annan        2753000.0000  North America        10`  
  
 `Tsoflias           1687000.0000  Pacific              1`  
  
## See Also  
 [RANK &#40;Transact-SQL&#41;](../../t-sql/functions/rank-transact-sql.md)   
 [ROW_NUMBER &#40;Transact-SQL&#41;](../../t-sql/functions/row-number-transact-sql.md)   
 [NTILE &#40;Transact-SQL&#41;](../../t-sql/functions/ntile-transact-sql.md)   
 [Ranking Functions &#40;Transact-SQL&#41;](../../t-sql/functions/ranking-functions-transact-sql.md)   
 [Built-in Functions &#40;Transact-SQL&#41;](../Topic/Built-in%20Functions%20\(Transact-SQL\).md)  
  
  

