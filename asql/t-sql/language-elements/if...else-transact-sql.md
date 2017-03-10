---
title: "IF...ELSE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-11"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IF_TSQL"
  - "IF"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IF...ELSE keyword"
  - "ELSE (IF...ELSE) keyword"
  - "ELSE keyword"
  - "IF keyword"
ms.assetid: 676c881f-dee1-417a-bc51-55da62398e81
caps.latest.revision: 49
ms.author: "rickbyh"
manager: "jhubbard"
---
# IF...ELSE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Imposes conditions on the execution of a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement. The [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement that follows an IF keyword and its condition is executed if the condition is satisfied: the Boolean expression returns TRUE. The optional ELSE keyword introduces another [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement that is executed when the IF condition is not satisfied: the Boolean expression returns FALSE.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
IF Boolean_expression   
     { sql_statement | statement_block }   
[ ELSE   
     { sql_statement | statement_block } ]   
```  
  
## Arguments  
 *Boolean_expression*  
 Is an expression that returns TRUE or FALSE. If the Boolean expression contains a SELECT statement, the SELECT statement must be enclosed in parentheses.  
  
 { *sql_statement*| *statement_block* }  
 Is any [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement or statement grouping as defined by using a statement block. Unless a statement block is used, the IF or ELSE condition can affect the performance of only one [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement.  
  
 To define a statement block, use the control-of-flow keywords BEGIN and END.  
  
## Remarks  
 An IF...ELSE construct can be used in batches, in stored procedures, and in ad hoc queries. When this construct is used in a stored procedure, it is frequently used to test for the existence of some parameter.  
  
 IF tests can be nested after another IF or following an ELSE. The limit to the number of nested levels depends on available memory.  
  
## Example  
  
```  
IF DATENAME(weekday, GETDATE()) IN (N'Saturday', N'Sunday')
       SELECT 'Weekend';
ELSE 
       SELECT 'Weekday';
```  
  
 For more examples, see [ELSE &#40;IF...ELSE&#41; &#40;Transact-SQL&#41;](../../t-sql/language-elements/else-if...else-transact-sql.md).  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example uses `IF…ELSE` to determine which of two responses to show the user, based on the weight of an item in the `DimProduct` table.  
  
```  
-- Uses AdventureWorksDW  
  
DECLARE @maxWeight float, @productKey integer  
SET @maxWeight = 100.00  
SET @productKey = 424  
IF @maxWeight <= (SELECT Weight from DimProduct 
                  WHERE ProductKey = @productKey)   
    (SELECT @productKey AS ProductKey, EnglishDescription, Weight, 
    'This product is too heavy to ship and is only available for pickup.' 
        AS ShippingStatus
    FROM DimProduct WHERE ProductKey = @productKey);  
ELSE  
    (SELECT @productKey AS ProductKey, EnglishDescription, Weight, 
    'This product is available for shipping or pickup.' 
        AS ShippingStatus
    FROM DimProduct WHERE ProductKey = @productKey);  
```  
  
## See Also  
 [BEGIN...END &#40;Transact-SQL&#41;](../../t-sql/language-elements/begin...end-transact-sql.md)   
 [END &#40;BEGIN...END&#41; &#40;Transact-SQL&#41;](../../t-sql/language-elements/end-begin...end-transact-sql.md)   
 [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)   
 [WHILE &#40;Transact-SQL&#41;](../../t-sql/language-elements/while-transact-sql.md)   
 [CASE &#40;Transact-SQL&#41;](../../t-sql/language-elements/case-transact-sql.md)   
 [Control-of-Flow Language &#40;Transact-SQL&#41;](../Topic/Control-of-Flow%20Language%20\(Transact-SQL\).md)
 [ELSE &#40;IF...ELSE&#41; &#40;Transact-SQL&#41;](../../t-sql/language-elements/else-if...else-transact-sql.md) 
  
  

