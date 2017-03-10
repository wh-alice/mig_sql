---
title: "CEILING (Transact-SQL) | Microsoft Docs"
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
  - "CEILING_TSQL"
  - "CEILING"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "smallest integer great than or equal to expression"
  - "integers [SQL Server]"
  - "CEILING function [Transact-SQL]"
ms.assetid: e736b43a-9457-4781-95a4-4bcf9d4fc46a
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# CEILING (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the smallest integer greater than, or equal to, the specified numeric expression.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
CEILING ( numeric_expression )  
```  
  
## Arguments  
 *numeric_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of the exact numeric or approximate numeric data type category, except for the **bit** data type.  
  
## Return Types  
 Returns the same type as *numeric_expression*.  
  
## Examples  
 The following example shows positive numeric, negative, and zero values with the CEILING function.  
  
```  
SELECT CEILING($123.45), CEILING($-123.45), CEILING($0.0);  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
--------- --------- -------------------------   
124.00    -123.00    0.00                       
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example shows use of positive numeric, negative, and zero values with the CEILING function.  
  
```  
SELECT CEILING(123.45), CEILING(-123.45), CEILING(0.0);  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `------- --------- --------`  
  
 `124.00  -123.00   0.00`  
  
## See Also  
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/system-functions-for-transact-sql.md)  
  
  

