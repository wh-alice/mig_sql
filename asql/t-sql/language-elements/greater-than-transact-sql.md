---
title: "&gt; (Greater Than) (Transact-SQL) | Microsoft Docs"
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
  - "Greater"
  - "Than"
  - "> (Greater Than)"
  - ">_TSQL"
  - "Greater Than"
  - ">"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "greater than operator (>)"
  - "> (greater than operator)"
ms.assetid: 50a7b098-a3fb-4df6-ae42-1272d6346338
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# &gt; (Greater Than) (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Compares two expressions (a comparison operator) in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]. When you compare nonnull expressions, the result is TRUE if the left operand has a value higher than the right operand; otherwise, the result is FALSE. If either or both operands are NULL, see the topic [SET ANSI_NULLS &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-nulls-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
expression > expression  
```  
  
## Arguments  
 *expression*  
 Is any valid [expression](../../t-sql/language-elements/expressions-transact-sql.md). Both expressions must have implicitly convertible data types. The conversion depends on the rules of [data type precedence](../../t-sql/data-types/data-type-precedence-transact-sql.md).  
  
## Result Types  
 **Boolean**  
  
## Examples  
  
### A. Using > in a simple query  
 The following example returns all rows in the `HumanResources.Department` table that have a value in `DepartmentID` that is greater than the value 13.  
  
```  
--Uses AdventureWorks  
  
SELECT DepartmentID, Name  
FROM HumanResources.Department  
WHERE DepartmentID > 13  
ORDER BY DepartmentID;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
DepartmentID Name  
------------ --------------------------------------------------  
14           Facilities and Maintenance  
15           Shipping and Receiving  
16           Executive  
  
(3 row(s) affected)  
  
```  
  
### B. Using > to compare two variables  
  
```  
DECLARE @a int = 45, @b int = 40;  
SELECT IIF ( @a > @b, 'TRUE', 'FALSE' ) AS Result;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
------  
TRUE  
  
(1 row(s) affected)  
  
```  
  
## See Also  
 [IIF &#40;Transact-SQL&#41;](../../t-sql/functions/logical-functions-iif-transact-sql.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)  
  
  