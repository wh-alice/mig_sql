---
title: "LAST_VALUE (Transact-SQL) | Microsoft Docs"
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
  - "LAST_VALUE"
  - "LAST_VALUE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "analytic functions, LAST_VALUE"
  - "LAST_VALUE function"
ms.assetid: fd833e34-8092-42b7-80fc-95ca6b0eab6b
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# LAST_VALUE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-asdb-asdw-xxx_md](../../t-sql/data-types/includes/tsql-appliesto-ss2012-asdb-asdw-xxx-md.md)]

  Returns the last value in an ordered set of values in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
LAST_VALUE ( [scalar_expression )   
    OVER ( [ partition_by_clause ] order_by_clause rows_range_clause )   
```  
  
## Arguments  
 *scalar_expression*  
 Is the value to be returned. *scalar_expression* can be a column, subquery, or other expression that results in a single value. Other analytic functions are not permitted.  
  
 OVER **(** [ *partition_by_clause* ] *order_by_clause* [ *rows_range_clause* ] **)**  
 *partition_by_clause* divides the result set produced by the FROM clause into partitions to which the function is applied. If not specified, the function treats all rows of the query result set as a single group.  
  
 *order_by_clause* determines the order of the data before the function is applied. The *order_by_clause* is required. *rows_range_clause* further limits the rows within the partition by specifying start and end points. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-over-clause-transact-sql.md).  
  
## Return Types  
 Is the same type as *scalar_expression*.  
  
## General Remarks  
 LAST_VALUE is nondeterministic. For more information, see [Deterministic and Nondeterministic Functions](../../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## Examples  
  
### A. Using LAST_VALUE over partitions  
 The following example returns the hire date of the last employee in each department for the given salary (Rate). The PARTITION BY clause partitions the employees by department and the LAST_VALUE function is applied to each partition independently. The ORDER BY clause specified in the OVER clause determines the logical order in which the LAST_VALUE function is applied to the rows in each partition.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT Department, LastName, Rate, HireDate,   
    LAST_VALUE(HireDate) OVER (PARTITION BY Department ORDER BY Rate) AS LastValue  
FROM HumanResources.vEmployeeDepartmentHistory AS edh  
INNER JOIN HumanResources.EmployeePayHistory AS eph    
    ON eph.BusinessEntityID = edh.BusinessEntityID  
INNER JOIN HumanResources.Employee AS e  
    ON e.BusinessEntityID = edh.BusinessEntityID  
WHERE Department IN (N'Information Services',N'Document Control');  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
Department                  LastName                Rate         HireDate     LastValue  
--------------------------- ----------------------- ------------ ----------   ----------  
Document Control            Chai                    10.25        2003-02-23   2003-03-13  
Document Control            Berge                   10.25        2003-03-13   2003-03-13  
Document Control            Norred                  16.8269      2003-04-07   2003-01-17  
Document Control            Kharatishvili           16.8269      2003-01-17   2003-01-17  
Document Control            Arifin                  17.7885      2003-02-05   2003-02-05  
Information Services        Berg                    27.4038      2003-03-20   2003-01-24  
Information Services        Meyyappan               27.4038      2003-03-07   2003-01-24  
Information Services        Bacon                   27.4038      2003-02-12   2003-01-24  
Information Services        Bueno                   27.4038      2003-01-24   2003-01-24  
Information Services        Sharma                  32.4519      2003-01-05   2003-03-27  
Information Services        Connelly                32.4519      2003-03-27   2003-03-27  
Information Services        Ajenstat                38.4615      2003-02-18   2003-02-23  
Information Services        Wilson                  38.4615      2003-02-23   2003-02-23  
Information Services        Conroy                  39.6635      2003-03-08   2003-03-08  
Information Services        Trenary                 50.4808      2003-01-12   2003-01-12  
  
```  
  
### B. Using FIRST_VALUE and LAST_VALUE in a computed expression  
 The following example uses the FIRST_VALUE and LAST_VALUE functions in computed expressions to show the difference between the sales quota value for the current quarter and the first and last quarter of the year respectively for a given number of employees. The FIRST_VALUE function returns the sales quota value for the first quarter of the year, and subtracts it from the sales quota value for the current quarter. It is returned in the derived column entitled DifferenceFromFirstQuarter. For the first quarter of a year, the value of the DifferenceFromFirstQuarter column is 0. The LAST_VALUE function returns the sales quota value for the last quarter of the year, and subtracts it from the sales quota value for the current quarter. It is returned in the derived column entitled DifferenceFromLastQuarter. For the last quarter of a year, the value of the DifferenceFromLastQuarter column is 0.  
  
 The clause “RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING” is required in this example for the non-zero values to be returned in the DifferenceFromLastQuarter column, as shown below. The default range is “RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW”. In this example, using that default range (or not including a range, resulting in the default being used) would result in zeroes being returned in the DifferenceFromLastQuarter column. For more information, see [OVER Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-over-clause-transact-sql.md).  
  
```  
USE AdventureWorks2012;  
SELECT BusinessEntityID, DATEPART(QUARTER,QuotaDate)AS Quarter, YEAR(QuotaDate) AS SalesYear,   
    SalesQuota AS QuotaThisQuarter,   
    SalesQuota - FIRST_VALUE(SalesQuota)   
        OVER (PARTITION BY BusinessEntityID, YEAR(QuotaDate)   
              ORDER BY DATEPART(QUARTER,QuotaDate) ) AS DifferenceFromFirstQuarter,   
    SalesQuota - LAST_VALUE(SalesQuota)   
        OVER (PARTITION BY BusinessEntityID, YEAR(QuotaDate)   
              ORDER BY DATEPART(QUARTER,QuotaDate)   
              RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) AS DifferenceFromLastQuarter   
FROM Sales.SalesPersonQuotaHistory   
WHERE YEAR(QuotaDate) > 2005   
AND BusinessEntityID BETWEEN 274 AND 275   
ORDER BY BusinessEntityID, SalesYear, Quarter;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
BusinessEntityID Quarter     SalesYear   QuotaThisQuarter      DifferenceFromFirstQuarter DifferenceFromLastQuarter  
---------------- ----------- ----------- --------------------- --------------------------- -----------------------  
274              1           2006        91000.00              0.00                        -63000.00  
274              2           2006        140000.00             49000.00                    -14000.00  
274              3           2006        70000.00              -21000.00                   -84000.00  
274              4           2006        154000.00             63000.00                    0.00  
274              1           2007        107000.00             0.00                        -9000.00  
274              2           2007        58000.00              -49000.00                   -58000.00  
274              3           2007        263000.00             156000.00                   147000.00  
274              4           2007        116000.00             9000.00                     0.00  
274              1           2008        84000.00              0.00                        -103000.00  
274              2           2008        187000.00             103000.00                   0.00  
275              1           2006        502000.00             0.00                        -822000.00  
275              2           2006        550000.00             48000.00                    -774000.00  
275              3           2006        1429000.00            927000.00                   105000.00  
275              4           2006        1324000.00            822000.00                   0.00  
275              1           2007        729000.00             0.00                        -489000.00  
275              2           2007        1194000.00            465000.00                   -24000.00  
275              3           2007        1575000.00            846000.00                   357000.00  
275              4           2007        1218000.00            489000.00                   0.00  
275              1           2008        849000.00             0.00                        -20000.00  
275              2           2008        869000.00             20000.00                    0.00  
  
(20 row(s) affected)  
  
```  
  
  