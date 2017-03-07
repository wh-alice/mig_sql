---
title: "EXP (Transact-SQL) | Microsoft Docs"
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
  - "EXP_TSQL"
  - "EXP"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "exponential functions"
  - "EXP function"
ms.assetid: 5a9b8c52-6fb6-4e33-8b02-a878785b2f51
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# EXP (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the exponential value of the specified **float** expression.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
EXP ( float_expression )  
```  
  
## Arguments  
 *float_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of type **float** or of a type that can be implicitly converted to **float**.  
  
## Return Types  
 **float**  
  
## Remarks  
 The constant **e** (2.718281…), is the base of natural logarithms.  
  
 The exponent of a number is the constant **e** raised to the power of the number. For example EXP(1.0) = e^1.0 = 2.71828182845905 and EXP(10) = e^10 = 22026.4657948067.  
  
 The exponential of the natural logarithm of a number is the number itself: EXP (LOG (*n*)) = *n*. And the natural logarithm of the exponential of a number is the number itself: LOG (EXP (*n*)) = *n*.  
  
## Examples  
  
### A. Finding the exponent of a number  
 The following example declares a variable and returns the exponential value of the specified variable (`10`) with a text description.  
  
```  
DECLARE @var float  
SET @var = 10  
SELECT 'The EXP of the variable is: ' + CONVERT(varchar,EXP(@var))  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
----------------------------------------------------------  
The EXP of the variable is: 22026.5  
(1 row(s) affected)  
```  
  
### B. Finding exponentials and natural logarithms  
 The following example returns the exponential value of the natural logarithm of `20` and the natural logarithm of the exponential of `20`. Because these functions are inverse functions of one another, the return value in both cases is `20`.  
  
```  
SELECT EXP( LOG(20)), LOG( EXP(20))  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
---------------------- ----------------------  
20                     20  
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C. Finding the exponent of a number  
 The following example returns the exponential value of the specified value (`10`).  
  
```  
SELECT EXP(10);  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
----------  
22026.4657948067  
```  
  
### D. Finding exponential values and natural logarithms  
 The following example returns the exponential value of the natural logarithm of `20` and the natural logarithm of the exponential of `20`. Because these functions are inverse functions of one another, the return value in both cases is `20`.  
  
```  
SELECT EXP( LOG(20)), LOG( EXP(20));  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
-------------- -----------------  
20                  20  
```  
  
## See Also  
 [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)   
 [LOG &#40;Transact-SQL&#41;](../../t-sql/functions/log-transact-sql.md)   
 [LOG10 &#40;Transact-SQL&#41;](../../t-sql/functions/log10-transact-sql.md)  
  
  

