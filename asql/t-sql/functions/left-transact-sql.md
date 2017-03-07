---
title: "LEFT (Transact-SQL) | Microsoft Docs"
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
  - "LEFT"
  - "LEFT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "character strings [SQL Server], LEFT"
  - "characters [SQL Server], leftmost"
  - "LEFT function"
  - "leftmost character of expression"
ms.assetid: 44a8c71b-63d8-458b-8b5d-99d570067c3c
caps.latest.revision: 48
ms.author: "rickbyh"
manager: "jhubbard"
---
# LEFT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the left part of a character string with the specified number of characters.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
LEFT ( character_expression , integer_expression )  
```  
  
## Arguments  
 *character_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of character or binary data. *character_expression* can be a constant, variable, or column. *character_expression* can be of any data type, except **text** or **ntext**, that can be implicitly converted to **varchar** or **nvarchar**. Otherwise, use the [CAST](../../t-sql/functions/cast-and-convert-transact-sql.md) function to explicitly convert *character_expression*.  
  
 *integer_expression*  
 Is a positive integer that specifies how many characters of the *character_expression* will be returned. If *integer_expression* is negative, an error is returned. If *integer_expression* is type **bigint** and contains a large value, *character_expression* must be of a large data type such as **varchar(max)**.  
  
 The *integer_expression* parameter counts a UTF-16 surrogate character as one character.  
  
## Return Types  
 Returns **varchar** when *character_expression* is a non-Unicode character data type.  
  
 Returns **nvarchar** when *character_expression* is a Unicode character data type.  
  
## Remarks  
 When using SC collations, the *integer_expression* parameter counts a UTF-16 surrogate pair as one character. For more information, see [Collation and Unicode Support](../../relational-databases/collations/collation-and-unicode-support.md).  
  
## Examples  
  
### A. Using LEFT with a column  
 The following example returns the five leftmost characters of each product name in the `Product` table of the [!INCLUDE[ssSampleDBnormal](../../a9notintoc/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT LEFT(Name, 5)   
FROM Production.Product  
ORDER BY ProductID;  
GO  
```  
  
### B. Using LEFT with a character string  
 The following example uses `LEFT` to return the two leftmost characters of the character string `abcdefg`.  
  
```  
SELECT LEFT('abcdefg',2);  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
--   
ab   
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### C. Using LEFT with a column  
 The following example returns the five leftmost characters of each product name.  
  
```  
-- Uses AdventureWorks  
  
SELECT LEFT(EnglishProductName, 5)   
FROM dbo.DimProduct  
ORDER BY ProductKey;  
```  
  
### D. Using LEFT with a character string  
 The following example uses `LEFT` to return the two leftmost characters of the character string `abcdefg`.  
  
```  
-- Uses AdventureWorks  
  
SELECT LEFT('abcdefg',2) FROM dbo.DimProduct;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
--   
ab  
```  
  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [String Functions &#40;Transact-SQL&#41;](../../t-sql/functions/string-functions-transact-sql.md)  
  
  

