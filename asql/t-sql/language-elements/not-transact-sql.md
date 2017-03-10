---
title: "NOT (Transact-SQL) | Microsoft Docs"
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
  - "NOT_TSQL"
  - "NOT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "negating Boolean input"
  - "NOT operator [Transact-SQL]"
  - "expressions [SQL Server], negating"
  - "reversing Boolean expression values"
ms.assetid: dc07cc35-20f1-46e6-9995-2938390dc19a
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# NOT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Negates a Boolean input.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
[ NOT ] boolean_expression  
```  
  
## Arguments  
 *boolean_expression*  
 Is any valid Boolean [expression](../../t-sql/language-elements/expressions-transact-sql.md).  
  
## Result Types  
 **Boolean**  
  
## Result Value  
 NOT reverses the value of any Boolean expression.  
  
## Remarks  
 Using NOT negates an expression.  
  
 The following table shows the results of comparing TRUE and FALSE values using the NOT operator.  
  
||NOT|  
|------|---------|  
|**TRUE**|FALSE|  
|**FALSE**|TRUE|  
|**UNKNOWN**|UNKNOWN|  
  
## Examples  
 The following example finds all Silver colored bicycles that do not have a standard price over $400.  
  
```  
-- Uses AdventureWorks  
  
SELECT ProductID, Name, Color, StandardCost  
FROM Production.Product  
WHERE ProductNumber LIKE 'BK-%' AND Color = 'Silver' AND NOT StandardCost > 400;  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `ProductID   Name                     Color         StandardCost`  
  
 `---------   -------------------      ------      ------------`  
  
 `984         Mountain-500 Silver, 40  Silver        308.2179`  
  
 `985         Mountain-500 Silver, 42  Silver        308.2179`  
  
 `986         Mountain-500 Silver, 44  Silver        308.2179`  
  
 `987         Mountain-500 Silver, 48  Silver        308.2179`  
  
 `988         Mountain-500 Silver, 52  Silver        308.2179`  
  
 `(6 row(s) affected)`  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example restricts results to `SalesOrderNumber` to values starting with `SO6` and `ProductKeys` greater than or equal to 400.  
  
```  
-- Uses AdventureWorks  
  
SELECT ProductKey, CustomerKey, OrderDateKey, ShipDateKey  
FROM FactInternetSales  
WHERE SalesOrderNumber LIKE 'SO6%' AND NOT ProductKey < 400;  
```  
  
## See Also  
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [Built-in Functions &#40;Transact-SQL&#41;](../Topic/Built-in%20Functions%20\(Transact-SQL\).md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [WHERE &#40;Transact-SQL&#41;](../../t-sql/queries/where-transact-sql.md)  
  
  

