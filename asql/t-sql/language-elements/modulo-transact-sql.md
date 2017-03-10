---
title: "Modulo (Transact-SQL) | Microsoft Docs"
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
  - "modulo"
  - "% (Modulo)"
  - "MOD_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "% (modulo operator)"
  - "remainder of division operation"
  - "modulo operator (%)"
ms.assetid: f93c662e-f405-486e-bf23-a2d03907b5bd
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# Modulo (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the remainder of one number divided by another.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse
    
dividend % divisor  
```  
  
## Arguments  
 *dividend*  
 Is the numeric expression to divide. *dividend* must be a valid [expression](../../t-sql/language-elements/expressions-transact-sql.md) of any one of the data types in the integer and monetary data type categories, or the **numeric** data type.  
  
 *divisor*  
 Is the numeric expression by which to divide the dividend. *divisor* must be any valid expression of any one of the data types in the integer and monetary data type categories, or the **numeric** data type.  
  
## Result Types  
 Determined by data types of the two arguments.  
  
## Remarks  
 You can use the modulo arithmetic operator in the select list of the SELECT statement with any combination of column names, numeric constants, or any valid expression of the integer and monetary data type categories or the **numeric** data type.  
  
## Examples  
  
### A. Simple example  
 The following example divides the number 38 by 5. This results in 7 as the integer portion of the result and demonstrates how modulo returns the remainder of 3.  
  
```  
SELECT 38 / 5 AS Integer, 38 % 5 AS Remainder ;  
  
```  
  
### B. Example using columns in a table  
 The following example returns the product ID number, the unit price of the product, and the modulo (remainder) of dividing the price of each product, converted to an integer value, into the number of products ordered.  
  
```  
-- Uses AdventureWorks  
  
SELECT TOP(100)ProductID, UnitPrice, OrderQty,  
   CAST((UnitPrice) AS int) % OrderQty AS Modulo  
FROM Sales.SalesOrderDetail;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C: Simple example  
 The following example shows results for the `%` operator when dividing 3 by 2.  
  
```  
-- Uses AdventureWorks  
  
SELECT TOP(1) 3%2 FROM dimEmployee;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
---------   
1         
```  
  
## See Also  
 [Built-in Functions &#40;Transact-SQL&#41;](../Topic/Built-in%20Functions%20\(Transact-SQL\).md)   
 [LIKE &#40;Transact-SQL&#41;](../../t-sql/language-elements/like-transact-sql.md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [Modulo EQUALS &#40;Transact-SQL&#41;](../../t-sql/language-elements/modulo-equals-transact-sql.md)   
 [Compound Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/compound-operators-transact-sql.md)  
  
  

