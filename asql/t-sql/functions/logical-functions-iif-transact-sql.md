---
title: "IIF (Transact-SQL) | Microsoft Docs"
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
  - "IIF_TSQL"
  - "IIF"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IIF function"
ms.assetid: e3ccf8ed-1cec-43ac-90b7-d8597c24b050
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# Logical Functions - IIF (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns one of two values, depending on whether the Boolean expression evaluates to true or false in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
IIF ( boolean_expression, true_value, false_value )  
```  
  
## Arguments  
 *boolean_expression*  
 A valid Boolean expression.  
  
 If this argument is not a Boolean expression, then a syntax error is raised.  
  
 *true_value*  
 Value to return if *boolean_expression* evaluates to true.  
  
 *false_value*  
 Value to return if *boolean_expression* evaluates to false.  
  
## Return Types  
 Returns the data type with the highest precedence from the types in *true_value* and *false_value*. For more information, see [Data Type Precedence &#40;Transact-SQL&#41;](../../t-sql/data-types/data-type-precedence-transact-sql.md).  
  
## Remarks  
 IIF is a shorthand way for writing a CASE expression. It evaluates the Boolean expression passed as the first argument, and then returns either of the other two arguments based on the result of the evaluation. That is, the *true_value* is returned if the Boolean expression is true, and the *false_value* is returned if the Boolean expression is false or unknown. *true_value* and *false_value* can be of any type. The same rules that apply to the CASE expression for Boolean expressions, null handling, and return types also apply to IIF. For more information, see [CASE &#40;Transact-SQL&#41;](../Topic/CASE%20\(Transact-SQL\).md).  
  
 The fact that IIF is translated into CASE also has an impact on other aspects of the behavior of this function. Since CASE expressions can be nested only up to the level of 10, IIF statements can also be nested only up to the maximum level of 10. Also, IIF is remoted to other servers as a semantically equivalent CASE expression, with all the behaviors of a remoted CASE expression.  
  
## Examples  
  
### A. Simple IIF example  
  
```  
DECLARE @a int = 45, @b int = 40;  
SELECT IIF ( @a > @b, 'TRUE', 'FALSE' ) AS Result;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
--------  
TRUE  
  
(1 row(s) affected)  
```  
  
### B. IIF with NULL constants  
  
```  
SELECT IIF ( 45 > 30, NULL, NULL ) AS Result;  
```  
  
 The result of this statement is an error.  
  
### C. IIF with NULL parameters  
  
```  
DECLARE @P INT = NULL, @S INT = NULL;  
SELECT IIF ( 45 > 30, @p, @s ) AS Result;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Result  
--------  
NULL  
  
(1 row(s) affected)  
```  
  
## See Also  
 [CASE &#40;Transact-SQL&#41;](../Topic/CASE%20\(Transact-SQL\).md)   
 [CHOOSE &#40;Transact-SQL&#41;](../Topic/CHOOSE%20\(Transact-SQL\).md)  
  
  