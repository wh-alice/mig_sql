---
title: "ELSE (IF...ELSE) (Transact-SQL) | Microsoft Docs"
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
  - "ELSE"
  - "ELSE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ELSE (IF...ELSE) keyword"
  - "ELSE keyword"
  - "IF keyword"
ms.assetid: 6f2b4278-0dea-4603-bbd3-7cbad602a645
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# ELSE (IF...ELSE) (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Imposes conditions on the execution of a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement. The [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement (*sql_statement*) following the *Boolean_expression*is executed if the *Boolean_expression* evaluates to TRUE. The optional ELSE keyword is an alternate [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement that is executed when *Boolean_expression* evaluates to FALSE or NULL.  
  
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
 Is an expression that returns TRUE or FALSE. If the *Boolean_expression* contains a SELECT statement, the SELECT statement must be enclosed in parentheses.  
  
 { *sql_statement* | *statement_block* }  
 Is any valid [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement or statement grouping as defined with a statement block. To define a statement block (batch), use the control-of-flow language keywords BEGIN and END. Although all [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements are valid within a BEGIN...END block, certain [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements should not be grouped together within the same batch (statement block).  
  
## Result Types  
 **Boolean**  
  
## Examples  
  
### A. Using a simple Boolean expression  
 The following example has a simple Boolean expression (`1=1`) that is true and, therefore, prints the first statement.  
  
```  
IF 1 = 1 PRINT 'Boolean_expression is true.'  
ELSE PRINT 'Boolean_expression is false.' ;  
```  
  
 The following example has a simple Boolean expression (`1=2`) that is false, and therefore prints the second statement.  
  
```  
IF 1 = 2 PRINT 'Boolean_expression is true.'  
ELSE PRINT 'Boolean_expression is false.' ;  
GO  
```  
  
### B. Using a query as part of a Boolean expression  
 The following example executes a query as part of the Boolean expression. Because there are 10 bikes in the `Product` table that meet the `WHERE` clause, the first print statement will execute. Change `> 5` to `> 15` to see how the second part of the statement could execute.  
  
```  
USE AdventureWorks2012;  
GO  
IF   
(SELECT COUNT(*) FROM Production.Product WHERE Name LIKE 'Touring-3000%' ) > 5  
PRINT 'There are more than 5 Touring-3000 bicycles.'  
ELSE PRINT 'There are 5 or less Touring-3000 bicycles.' ;  
GO  
```  
  
### C. Using a statement block  
 The following example executes a query as part of the Boolean expression and then executes slightly different statement blocks based on the result of the Boolean expression. Each statement block starts with `BEGIN` and completes with `END`.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @AvgWeight decimal(8,2), @BikeCount int  
IF   
(SELECT COUNT(*) FROM Production.Product WHERE Name LIKE 'Touring-3000%' ) > 5  
BEGIN  
   SET @BikeCount =   
        (SELECT COUNT(*)   
         FROM Production.Product   
         WHERE Name LIKE 'Touring-3000%');  
   SET @AvgWeight =   
        (SELECT AVG(Weight)   
         FROM Production.Product   
         WHERE Name LIKE 'Touring-3000%');  
   PRINT 'There are ' + CAST(@BikeCount AS varchar(3)) + ' Touring-3000 bikes.'  
   PRINT 'The average weight of the top 5 Touring-3000 bikes is ' + CAST(@AvgWeight AS varchar(8)) + '.';  
END  
ELSE   
BEGIN  
SET @AvgWeight =   
        (SELECT AVG(Weight)  
         FROM Production.Product   
         WHERE Name LIKE 'Touring-3000%' );  
   PRINT 'Average weight of the Touring-3000 bikes is ' + CAST(@AvgWeight AS varchar(8)) + '.' ;  
END ;  
GO  
```  
  
### D. Using nested IF...ELSE statements  
 The following example shows how an IF … ELSE statement can be nested inside another. Set the `@Number` variable to `5`, `50`, and `500` to test each statement.  
  
```  
DECLARE @Number int;  
SET @Number = 50;  
IF @Number > 100  
   PRINT 'The number is large.';  
ELSE   
   BEGIN  
      IF @Number < 10  
      PRINT 'The number is small.';  
   ELSE  
      PRINT 'The number is medium.';  
   END ;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### E: Using a query as part of a Boolean expression  
 The following example uses `IF…ELSE` to determine which of two responses to show the user, based on the weight of an item in the `DimProduct` table.  
  
```  
-- Uses AdventureWorks  
  
DECLARE @maxWeight float, @productKey integer  
SET @maxWeight = 100.00  
SET @productKey = 424  
IF @maxWeight <= (SELECT Weight from DimProduct WHERE ProductKey=@productKey)   
    (SELECT @productKey, EnglishDescription, Weight, 'This product is too heavy to ship and is only available for pickup.' FROM DimProduct WHERE ProductKey=@productKey)  
ELSE  
    (SELECT @productKey, EnglishDescription, Weight, 'This product is available for shipping or pickup.' FROM DimProduct WHERE ProductKey=@productKey)  
```  
  
## See Also  
 [ALTER TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/alter-trigger-transact-sql.md)   
 [Control-of-Flow Language &#40;Transact-SQL&#41;](../Topic/Control-of-Flow%20Language%20\(Transact-SQL\).md)   
 [CREATE TRIGGER &#40;Transact-SQL&#41;](../../t-sql/statements/create-trigger-transact-sql.md)   
 [IF...ELSE &#40;Transact-SQL&#41;](../../t-sql/language-elements/if...else-transact-sql.md)  
  
  

