---
title: "REPLICATE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "REPLICATE_TSQL"
  - "REPLICATE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "expressions [SQL Server], repeating"
  - "REPLICATE function"
  - "repeating character expressions"
ms.assetid: 0cd467fb-3f22-471a-892c-0039d9f7fa1a
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# REPLICATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Repeats a string value a specified number of times.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
REPLICATE ( string_expression ,integer_expression )   
```  
  
## Arguments  
 *string_expression*  
 Is an expression of a character string or binary data type. *string_expression* can be either character or binary data.  
  
> [!NOTE]  
>  If *string_expression* is not of type **varchar(max)** or **nvarchar(max)**, REPLICATE truncates the return value at 8,000 bytes. To return values greater than 8,000 bytes, *string_expression* must be explicitly cast to the appropriate large-value data type.  
  
 *integer_expression*  
 Is an expression of any integer type, including **bigint**. If *integer_expression* is negative, NULL is returned.  
  
## Return Types  
 Returns the same type as *string_expression*.  
  
## Examples  
  
### A. Using REPLICATE  
 The following example replicates a `0` character four times in front of a production line code in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
SELECT [Name]  
, REPLICATE('0', 4) + [ProductLine] AS 'Line Code'  
FROM [Production].[Product]  
WHERE [ProductLine] = 'T'  
ORDER BY [Name];  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Name                                               Line Code  
-------------------------------------------------- ---------  
HL Touring Frame - Blue, 46                        0000T   
HL Touring Frame - Blue, 50                        0000T   
HL Touring Frame - Blue, 54                        0000T   
HL Touring Frame - Blue, 60                        0000T   
HL Touring Frame - Yellow, 46                      0000T   
HL Touring Frame - Yellow, 50                      0000T  
...  
```  
  
### B. Using REPLICATE and DATALENGTH  
 The following example left pads numbers to a specified length as they are converted from a numeric data type to character or Unicode.  
  
```  
IF EXISTS(SELECT name FROM sys.tables  
      WHERE name = 't1')  
   DROP TABLE t1;  
GO  
CREATE TABLE t1   
(  
 c1 varchar(3),  
 c2 char(3)  
);  
GO  
INSERT INTO t1 VALUES ('2', '2'), ('37', '37'),('597', '597');  
GO  
SELECT REPLICATE('0', 3 - DATALENGTH(c1)) + c1 AS 'Varchar Column',  
       REPLICATE('0', 3 - DATALENGTH(c2)) + c2 AS 'Char Column'  
FROM t1;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
  
Varchar Column        Char Column  
--------------------  ------------  
002                   2    
037                   37   
597                   597  
  
(3 row(s) affected)  
  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C: Using REPLICATE  
 The following example replicates a `0` character four times in front of an `ItemCode` value.  
  
```  
-- Uses AdventureWorks  
  
SELECT EnglishProductName AS Name,  
   ProductAlternateKey AS ItemCode,  
   REPLICATE('0', 4) + ProductAlternateKey AS FullItemCode  
FROM dbo.DimProduct  
ORDER BY Name;  
```  
  
 Here are the first rows in the result set.  
  
 `Name                     ItemCode       FullItemCode`  
  
 `------------------------ -------------- ---------------`  
  
 `Adjustable Race          AR-5381        0000AR-5381`  
  
 `All-Purpose Bike Stand   ST-1401        0000ST-1401`  
  
 `AWC Logo Cap             CA-1098        0000CA-1098`  
  
 `AWC Logo Cap             CA-1098        0000CA-1098`  
  
 `AWC Logo Cap             CA-1098        0000CA-1098`  
  
 `BB Ball Bearing          BE-2349        0000BE-2349`  
  
## See Also  
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [String Functions &#40;Transact-SQL&#41;](../../t-sql/functions/string-functions-transact-sql.md)  
  
  

