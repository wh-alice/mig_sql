---
title: "PERCENTILE_DISC (Transact-SQL) | Microsoft Docs"
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
  - "PERCENTILE_DISC"
  - "PERCENTILE_DISC_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PERCENTILE_DISC function"
  - "analytic functions,PERCENTILE_DISC"
ms.assetid: b545413d-c4f7-4c8e-8617-607599a26680
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# PERCENTILE_DISC (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  Computes a specific percentile for sorted values in an entire rowset or within distinct partitions of a rowset in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For a given percentile value *P*, PERCENTILE_DISC sorts the values of the expression in the ORDER BY clause and returns the value with the smallest CUME_DIST value (with respect to the same sort specification) that is greater than or equal to *P*. For example, PERCENTILE_DISC (0.5) will compute the 50th percentile (that is, the median) of an expression. PERCENTILE_DISC calculates the percentile based on a discrete distribution of the column values; the result is equal to a specific value in the column.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
PERCENTILE_DISC ( numeric_literal ) WITHIN GROUP ( ORDER BY order_by_expression [ ASC | DESC ] )  
    OVER ( [ <partition_by_clause> ] )  
```  
  
## Arguments  
 *literal*  
 The percentile to compute. The value must range between 0.0 and 1.0.  
  
 WITHIN GROUP **(** ORDER BY *order_by_expression* [ **ASC** | DESC ]**)**  
 Specifies a list of values to sort and compute the percentile over. Only one *order_by_expression* is allowed. The default sort order is ascending. The list of values can be of any of the data types that are valid for the sort operation.  
  
 OVER **(** <partition_by_clause> **)**  
 Divides the result set produced by the FROM clause into partitions to which the percentile function is applied. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../Topic/OVER%20Clause%20\(Transact-SQL\).md). The \<ORDER BY clause> and \<rows or range clause>cannot be specified in a PERCENTILE_DISC function.  
  
## Return Types  
 The return type is determined by the *order_by_expression* type.  
  
## Compatibility Support  
 Under compatibility level 110 and higher, WITHIN GROUP is a reserved keyword. For more information, see [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20Compatibility%20Level%20\(Transact-SQL\).md).  
  
## General Remarks  
 Any nulls in the data set are ignored.  
  
 PERCENTILE_DISC is nondeterministic. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A. Basic syntax example  
 The following example uses PERCENTILE_CONT and PERCENTILE_DISC to find the median employee salary in each department. Note that these functions may not return the same value. This is because PERCENTILE_CONT interpolates the appropriate value, whether or not it exists in the data set, while PERCENTILE_DISC always returns an actual value from the set.  
  
```  
USE AdventureWorks2012;  
  
SELECT DISTINCT Name AS DepartmentName  
      ,PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ph.Rate)   
                            OVER (PARTITION BY Name) AS MedianCont  
      ,PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY ph.Rate)   
                            OVER (PARTITION BY Name) AS MedianDisc  
FROM HumanResources.Department AS d  
INNER JOIN HumanResources.EmployeeDepartmentHistory AS dh   
    ON dh.DepartmentID = d.DepartmentID  
INNER JOIN HumanResources.EmployeePayHistory AS ph  
    ON ph.BusinessEntityID = dh.BusinessEntityID  
WHERE dh.EndDate IS NULL;  
```  
  
 Here is a partial result set.  
  
 `DepartmentName        MedianCont    MedianDisc`  
  
 `--------------------   ----------   ----------`  
  
 `Document Control       16.8269      16.8269`  
  
 `Engineering            34.375       32.6923`  
  
 `Executive              54.32695     48.5577`  
  
 `Human Resources        17.427850    16.5865`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### B. Basic syntax example  
 The following example uses PERCENTILE_CONT and PERCENTILE_DISC to find the median employee salary in each department. Note that these functions may not return the same value. This is because PERCENTILE_CONT interpolates the appropriate value, whether or not it exists in the data set, while PERCENTILE_DISC always returns an actual value from the set.  
  
```  
-- Uses AdventureWorks  
  
SELECT DISTINCT DepartmentName  
       ,PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY BaseRate)  
        OVER (PARTITION BY DepartmentName) AS MedianCont  
       ,PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY BaseRate)  
        OVER (PARTITION BY DepartmentName) AS MedianDisc  
FROM dbo.DimEmployee;  
  
```  
  
 Here is a partial result set.  
  
 `DepartmentName        MedianCont    MedianDisc`  
  
 `--------------------   ----------   ----------`  
  
 `Document Control       16.826900    16.8269`  
  
 `Engineering            34.375000    32.6923`  
  
 `Human Resources        17.427850    16.5865`  
  
 `Shipping and Receiving  9.250000     9.0000`  
  
## See Also  
 [PERCENTILE_CONT &#40;Transact-SQL&#41;](../../t-sql/functions/percentile-cont-transact-sql.md)  
  
  

