---
title: "LEAD (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-10-20"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "LEAD_TSQL"
  - "LEAD"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "LEAD function"
  - "analytic functions, LEAD"
ms.assetid: 21f66bbf-d1ea-4f75-a3c4-20dc7fc1c69e
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# LEAD (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  Accesses data from a subsequent row in the same result set without the use of a self-join in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]. LEAD provides access to a row at a given physical offset that follows the current row. Use this analytic function in a SELECT statement to compare values in the current row with values in a following row.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
LEAD ( scalar_expression [ ,offset ] , [ default ] )   
    OVER ( [ partition_by_clause ] order_by_clause )  
```  
  
## Arguments  
 *scalar_expression*  
 The value to be returned based on the specified offset. It is an expression of any type that returns a single (scalar) value. *scalar_expression* cannot be an analytic function.  
  
 *offset*  
 The number of rows forward from the current row from which to obtain a value. If not specified, the default is 1. *offset* can be a column, subquery, or other expression that evaluates to a positive integer or can be implicitly converted to **bigint**. *offset* cannot be a negative value or an analytic function.  
  
 *default*  
 The value to return when *scalar_expression* at *offset* is NULL. If a default value is not specified, NULL is returned. *default* can be a column, subquery, or other expression, but it cannot be an analytic function. *default* must be type-compatible with *scalar_expression*.  
  
 OVER **(** [ *partition_by_clause* ] *order_by_clause***)**  
 *partition_by_clause* divides the result set produced by the FROM clause into partitions to which the function is applied. If not specified, the function treats all rows of the query result set as a single group. *order_by_clause* determines the order of the data before the function is applied. When *partition_by_clause* is specified, it determines the order of the data in each partition. The *order_by_clause* is required. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md).  
  
## Return Types  
 The data type of the specified *scalar_expression*. NULL is returned if *scalar_expression* is nullable or *default* is set to NULL.  
  
 LEAD is nondeterministic. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A. Compare values between years  
 The query uses the LEAD function to return the difference in sales quotas for a specific employee over subsequent years. Notice that because there is no lead value available for the last row, the default of zero (0) is returned.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT BusinessEntityID, YEAR(QuotaDate) AS SalesYear, SalesQuota AS CurrentQuota,   
    LEAD(SalesQuota, 1,0) OVER (ORDER BY YEAR(QuotaDate)) AS NextQuota  
FROM Sales.SalesPersonQuotaHistory  
WHERE BusinessEntityID = 275 and YEAR(QuotaDate) IN ('2005','2006');  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
BusinessEntityID SalesYear   CurrentQuota          NextQuota  
---------------- ----------- --------------------- ---------------------  
275              2005        367000.00             556000.00  
275              2005        556000.00             502000.00  
275              2006        502000.00             550000.00  
275              2006        550000.00             1429000.00  
275              2006        1429000.00            1324000.00  
275              2006        1324000.00            0.00  
```  
  
### B. Compare values within partitions  
 The following example uses the LEAD function to compare year-to-date sales between employees. The PARTITION BY clause is specified to partition the rows in the result set by sales territory. The LEAD function is applied to each partition separately and computation restarts for each partition. The ORDER BY clause specified in the OVER clause orders the rows in each partition before the function is applied. The ORDER BY clause in the SELECT statement orders the rows in the whole result set. Notice that because there is no lead value available for the last row of each partition, the default of zero (0) is returned.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT TerritoryName, BusinessEntityID, SalesYTD,   
       LEAD (SalesYTD, 1, 0) OVER (PARTITION BY TerritoryName ORDER BY SalesYTD DESC) AS NextRepSales  
FROM Sales.vSalesPerson  
WHERE TerritoryName IN (N'Northwest', N'Canada')   
ORDER BY TerritoryName;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
TerritoryName            BusinessEntityID SalesYTD              NextRepSales  
-----------------------  ---------------- --------------------- ---------------------  
Canada                   282              2604540.7172          1453719.4653  
Canada                   278              1453719.4653          0.00  
Northwest                284              1576562.1966          1573012.9383  
Northwest                283              1573012.9383          1352577.1325  
Northwest                280              1352577.1325          0.00  
  
```  
  
### C. Specifying arbitrary expressions  
 The following example demonstrates specifying a variety of arbitrary expressions in the LEAD function syntax.  
  
```  
CREATE TABLE T (a int, b int, c int);   
GO  
INSERT INTO T VALUES (1, 1, -3), (2, 2, 4), (3, 1, NULL), (4, 3, 1), (5, 2, NULL), (6, 1, 5);   
  
SELECT b, c,   
    LEAD(2*c, b*(SELECT MIN(b) FROM T), -c/2.0) OVER (ORDER BY a) AS i  
FROM T;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
b           c           i  
----------- ----------- -----------  
1           -3          8  
2           4           2  
1           NULL        2  
3           1           0  
2           NULL        NULL  
1           5           -2  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### D: Compare values between quarters  
 The following example demonstrates the LEAD function. The query obtains the difference in sales quota values for a specified employee over subsequent calendar quarters. Notice that because there is no lead value available after the last row, the default of zero (0) is used.  
  
```  
-- Uses AdventureWorks  
  
SELECT CalendarYear AS Year, CalendarQuarter AS Quarter, SalesAmountQuota AS SalesQuota,  
       LEAD(SalesAmountQuota,1,0) OVER (ORDER BY CalendarYear, CalendarQuarter) AS NextQuota,  
   SalesAmountQuota - LEAD(Sale sAmountQuota,1,0) OVER (ORDER BY CalendarYear, CalendarQuarter) AS Diff  
FROM dbo.FactSalesQuota  
WHERE EmployeeKey = 272 AND CalendarYear IN (2001,2002)  
ORDER BY CalendarYear, CalendarQuarter;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `Year Quarter  SalesQuota  NextQuota  Diff`  
  
 `---- -------  ----------  ---------  -------------`  
  
 `2001 3        28000.0000   7000.0000   21000.0000`  
  
 `2001 4         7000.0000  91000.0000  -84000.0000`  
  
 `2001 1        91000.0000 140000.0000  -49000.0000`  
  
 `2002 2       140000.0000   7000.0000    7000.0000`  
  
 `2002 3         7000.0000 154000.0000   84000.0000`  
  
 `2002 4       154000.0000      0.0000  154000.0000`  
  
## See Also  
 [LAG &#40;Transact-SQL&#41;](../../t-sql/functions/lag-transact-sql.md)  
  
  

