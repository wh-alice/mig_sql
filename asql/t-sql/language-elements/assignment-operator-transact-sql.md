---
title: "Assignment Operator (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "operators [Transact-SQL], assignment"
  - "assignment operators [Transact-SQL]"
  - "headings [SQL Server columns]"
  - "relationships [SQL Server], assignment operators"
  - "column headings [SQL Server]"
ms.assetid: c3040db6-21d6-40ac-a783-82c98ec006cc
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# Assignment Operator (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  The equal sign (=) is the only [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] assignment operator. In the following example, the `@MyCounter` variable is created, and then the assignment operator sets `@MyCounter` to a value returned by an expression.  
  
```  
DECLARE @MyCounter INT;  
SET @MyCounter = 1;  
```  
  
 The assignment operator can also be used to establish the relationship between a column heading and the expression that defines the values for the column. The following example displays the column headings `FirstColumnHeading` and `SecondColumnHeading`. The string `xyz` is displayed in the `FirstColumnHeading` column heading for all rows. Then, each product ID from the `Product` table is listed in the `SecondColumnHeading` column heading.  
  
```  
-- Uses AdventureWorks  
  
SELECT FirstColumnHeading = 'xyz',  
       SecondColumnHeading = ProductID  
FROM Production.Product;  
GO  
```  
  
## See Also  
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)  
  
  