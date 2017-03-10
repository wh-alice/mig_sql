---
title: "&lt; (Less Than) (Transact-SQL) | Microsoft Docs"
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
  - "< (Less Than)"
  - "<_TSQL"
  - "Than"
  - "Less"
  - "<"
  - "Less Than"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "less than (<)"
  - "< (less than operator)"
ms.assetid: 54f50bdd-bb62-4593-9af9-4c49edecab75
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# &lt; (Less Than) (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Compares two expressions (a comparison operator). When you compare nonnull expressions, the result is TRUE if the left operand has a value lower than the right operand; otherwise, the result is FALSE. If either or both operands are NULL, see the topic [SET ANSI_NULLS &#40;Transact-SQL&#41;](../../t-sql/statements/set-ansi-nulls-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
expression < expression  
```  
  
## Arguments  
 *expression*  
 Is any valid [expression](../../t-sql/language-elements/expressions-transact-sql.md). Both expressions must have implicitly convertible data types. The conversion depends on the rules of [data type precedence](../../t-sql/data-types/data-type-precedence-transact-sql.md).  
  
## Result Types  
 **Boolean**  
  
## Examples  
  
### A. Using < in a simple query  
 The following example returns all rows in the `HumanResources.Department` table that have a value in `DepartmentID` that is less than the value 3.  
  
```  
-- Uses AdventureWorks  
  
SELECT DepartmentID, Name  
FROM HumanResources.Department  
WHERE DepartmentID < 3  
ORDER BY DepartmentID;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
DepartmentID Name  
------------ --------------------------------------------------  
1            Engineering  
2            Tool Design  
  
(2 row(s) affected)  
  
```  
  
### B. Using < to compare two variables  
  
```  
DECLARE @a int = 45, @b int = 40;  
SELECT IIF ( @a < @b, 'TRUE', 'FALSE' ) AS Result;  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
------  
FALSE  
  
(1 row(s) affected)  
  
```  
  
## See Also  
 [IIF &#40;Transact-SQL&#41;](../../t-sql/functions/logical-functions-iif-transact-sql.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)  
  
  