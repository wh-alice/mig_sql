---
title: "SIN (Transact-SQL) | Microsoft Docs"
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
  - "SIN_TSQL"
  - "SIN"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SIN function"
  - "sine"
ms.assetid: bc1781e9-185f-4981-929b-e77371be6b26
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# SIN (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the trigonometric sine of the specified angle, in radians, and in an approximate numeric, **float**, expression.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SIN ( float_expression )  
```  
  

## Arguments  
 *float_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of type **float** or of a type that can be implicitly converted to float.  
  
## Return Types  
 **float**  
  
## Examples  
 The following example calculates the SIN for a specified angle.  
  
```  
DECLARE @angle float;  
SET @angle = 45.175643;  
SELECT 'The SIN of the angle is: ' + CONVERT(varchar,SIN(@angle));  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
The SIN of the angle is: 0.929607                         
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following example calculates the sine for a specified angle.  
  
```  
SELECT SIN(45.175643);  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `---------`  
  
 `0.929607`  
  
## See Also  
 [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)  
  
  

