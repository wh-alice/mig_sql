---
title: "COS (Transact-SQL) | Microsoft Docs"
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
  - "COS"
  - "COS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "cosine"
  - "COS function"
ms.assetid: c9fa8ae1-3373-4f3e-9b97-fa05077c1040
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# COS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Is a mathematical function that returns the trigonometric cosine of the specified angle, in radians, in the specified expression.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
COS ( float_expression )  
```  
  
## Arguments  
 *float_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of type **float**.  
  
## Return Types  
 **float**  
  
## Examples  
 The following example returns the COS of the specific angle.  
  
```  
DECLARE @angle float;  
SET @angle = 14.78;  
SELECT 'The COS of the angle is: ' + CONVERT(varchar,COS(@angle));  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
The COS of the angle is: -0.599465                        
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example returns the COS of the specific angle.  
  
```  
SELECT COS(14.76) AS cosCalc1, COS(-0.1472738) AS cosCalc2;   
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `cosCalc1  cosCalc2`  
  
 `--------  --------`  
  
 `-0.58     0.99`  
  
## See Also  
 [Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)  
  
  

