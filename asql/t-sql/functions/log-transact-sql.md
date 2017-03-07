---
title: "LOG (Transact-SQL) | Microsoft Docs"
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
  - "LOG"
  - "LOG_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "float expressions"
  - "logarithm of expression"
  - "LOG function"
ms.assetid: f7c39511-cd84-4362-93ba-0d93655217ee
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# LOG (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the natural logarithm of the specified **float** expression in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server  
  
LOG ( float_expression [, base ] )  
```  
  
```  
-- Syntax for Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
LOG ( float_expression )  
```  
  
## Arguments  
 *float_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of type **float** or of a type that can be implicitly converted to **float**.  
  
 *base*  
 Optional integer argument that sets the base for the logarithm.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
## Return Types  
 **float**  
  
## Remarks  
 By default, **LOG()** returns the natural logarithm. Starting with [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], you can change the base of the logarithm to another value by using the optional *base* parameter.  
  
 The natural logarithm is the logarithm to the base **e**, where **e** is an irrational constant approximately equal to 2.718281828.  
  
 The natural logarithm of the exponential of a number is the number itself: LOG( EXP( *n* ) ) = *n*. And the exponential of the natural logarithm of a number is the number itself: EXP( LOG( *n* ) ) = *n*.  
  
## Examples  
  
### A. Calculating the logarithm for a number.  
 The following example calculates the `LOG` for the specified **float** expression.  
  
```  
DECLARE @var float = 10;  
SELECT 'The LOG of the variable is: ' + CONVERT(varchar, LOG(@var));  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
-------------------------------------  
The LOG of the variable is: 2.30259  
  
(1 row(s) affected)  
```  
  
### B. Calculating the logarithm of the exponent of a number.  
 The following example calculates the `LOG` for the exponent of a number.  
  
```  
SELECT LOG (EXP (10));  
  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
----------------------------------  
10  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### C. Calculating the logarithm for a number  
 The following example calculates the `LOG` for the specified **float** expression.  
  
```  
SELECT LOG(10);  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `----------------`  
  
 `2.30`  
  
### D. Calculating the logarithm of the exponent of a number  
 The following example calculates the `LOG` for the exponent of a number.  
  
```  
SELECT LOG(EXP (10));  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `---------`  
  
 `10.00`  
  
## See Also  
 [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)   
 [EXP &#40;Transact-SQL&#41;](../../t-sql/functions/exp-transact-sql.md)   
 [LOG10 &#40;Transact-SQL&#41;](../../t-sql/functions/log10-transact-sql.md)  
  
  

