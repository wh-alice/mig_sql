---
title: "SIGN (Transact-SQL) | Microsoft Docs"
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
  - "SIGN_TSQL"
  - "SIGN"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "- (negative)"
  - "+ (positive sign)"
  - "zero (0)"
  - "SIGN function"
  - "positive values [SQL Server]"
  - "0 (zero)"
  - "negative values"
ms.assetid: c3a98b52-6fbe-4127-a5c9-8a4922e83e28
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# SIGN (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the positive (+1), zero (0), or negative (-1) sign of the specified expression.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SIGN ( numeric_expression )  
```  
  

## Arguments  
 *numeric_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of the exact numeric or approximate numeric data type category, except for the **bit** data type.  
  
## Return Types  
  
|Specified expression|Return type|  
|--------------------------|-----------------|  
|**bigint**|**bigint**|  
|**int/smallint/tinyint**|**int**|  
|**money/smallmoney**|**money**|  
|**numeric/decimal**|**numeric/decimal**|  
|**Other types**|**float**|  
  
## Examples  
 The following example returns the SIGN values of numbers from -1 to 1.  
  
```  
DECLARE @value real  
SET @value = -1  
WHILE @value < 2  
   BEGIN  
      SELECT SIGN(@value)  
      SET NOCOUNT ON  
      SELECT @value = @value + 1  
      SET NOCOUNT OFF  
   END  
SET NOCOUNT OFF  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
(1 row(s) affected)  
  
------------------------   
-1.0                       
  
(1 row(s) affected)  
  
------------------------   
0.0                        
  
(1 row(s) affected)  
  
------------------------   
1.0                        
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following example returns the SIGN values of three numbers.  
  
```  
SELECT SIGN(-125), SIGN(0), SIGN(564);  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `-----  -----  -----`  
  
 `-1     0      1`  
  
## See Also  
 [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)  
  
  

