---
title: "LEN (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-09-03"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "LEN"
  - "LEN_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "LEN function"
  - "characters [SQL Server], number of"
  - "number of characters"
ms.assetid: fa20fee4-884d-4301-891a-c03e901345ae
caps.latest.revision: 47
ms.author: "rickbyh"
manager: "jhubbard"
---
# LEN (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the number of characters of the specified string expression, excluding trailing blanks.  
  
> [!NOTE]  
>  To return the number of bytes used to represent an expression, use the [DATALENGTH](../../t-sql/functions/datalength-transact-sql.md) function.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
LEN ( string_expression )  
```  
  
## Arguments  
 *string_expression*  
 Is the string [expression](../../t-sql/language-elements/expressions-transact-sql.md) to be evaluated. *string_expression* can be a constant, variable, or column of either character or binary data.  
  
## Return Types  
 **bigint** if *expression* is of the **varchar(max)**, **nvarchar(max)** or **varbinary(max)** data types; otherwise, **int**.  
  
 If you are using SC collations, the returned integer value counts UTF-16 surrogate pairs as a single character. For more information, see [Collation and Unicode Support](../../relational-databases/collations/collation-and-unicode-support.md).  
  
## Remarks  
 LEN excludes trailing blanks. If that is a problem, consider using the [DATALENGTH &#40;Transact-SQL&#41;](../../t-sql/functions/datalength-transact-sql.md) function which does not trim the string. If processing a unicode string, DATALENGTH will return twice the number of characters. The following example demonstrates LEN and DATALENGTH with a trailing space.  
  
```  
DECLARE @v1 varchar(40),  
    @v2 nvarchar(40);  
SELECT   
@v1 = 'Test of 22 characters ',   
@v2 = 'Test of 22 characters ';  
SELECT LEN(@v1) AS [varchar LEN] , DATALENGTH(@v1) AS [varchar DATALENGTH];  
SELECT LEN(@v2) AS [nvarchar LEN], DATALENGTH(@v2) AS [nvarchar DATALENGTH];  
  
```  
  
## Examples  
 The following example selects the number of characters and the data in `FirstName` for people located in `Australia`. This example uses the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT LEN(FirstName) AS Length, FirstName, LastName   
FROM Sales.vIndividualCustomer  
WHERE CountryRegionName = 'Australia';  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example returns the number of characters in the column `FirstName` and the first and last names of employees located in `Australia`.  
  
```  
-- Uses AdventureWorks  
  
SELECT DISTINCT LEN(FirstName) AS FNameLength, FirstName, LastName   
FROM dbo.DimEmployee AS e  
INNER JOIN dbo.DimGeography AS g   
    ON e.SalesTerritoryKey = g.SalesTerritoryKey   
WHERE EnglishCountryRegionName = 'Australia';  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `FNameLength  FirstName  LastName`  
  
 `-----------  ---------  ---------------`  
  
 `4            Lynn       Tsoflias`  
  
## See Also  
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [String Functions &#40;Transact-SQL&#41;](../../t-sql/functions/string-functions-transact-sql.md)   
 [DATALENGTH &#40;Transact-SQL&#41;](../../t-sql/functions/datalength-transact-sql.md)   
 [LEFT &#40;Transact-SQL&#41;](../../t-sql/functions/left-transact-sql.md)   
 [RIGHT &#40;Transact-SQL&#41;](../../t-sql/functions/right-transact-sql.md)  
  
  

