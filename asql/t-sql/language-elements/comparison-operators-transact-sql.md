---
title: "Comparison Operators (Transact-SQL) | Microsoft Docs"
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
  - "expressions [SQL Server], testing"
  - "operators [Transact-SQL], comparison"
  - "testing expressions"
  - "Boolean data type"
  - "Boolean expressions"
  - "comparing expressions"
  - "comparison operators [SQL Server]"
ms.assetid: b0cc68ef-3029-484c-a917-0c15dcbc230d
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# Comparison Operators (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Comparison operators test whether two expressions are the same. Comparison operators can be used on all expressions except expressions of the **text**, **ntext**, or **image** data types. The following table lists the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] comparison operators.  
  
|Operator|Meaning|  
|--------------|-------------|  
|[= (Equals)](../../t-sql/language-elements/equals-transact-sql.md)|Equal to|  
|[> (Greater Than)](../../t-sql/language-elements/greater-than-transact-sql.md)|Greater than|  
|[\< (Less Than)](../../t-sql/language-elements/less-than-transact-sql.md)|Less than|  
|[>= (Greater Than or Equal To)](../../t-sql/language-elements/greater-than-or-equal-to-transact-sql.md)|Greater than or equal to|  
|[<= (Less Than or Equal To)](../../t-sql/language-elements/less-than-or-equal-to-transact-sql.md)|Less than or equal to|  
|[<> (Not Equal To)](../../t-sql/language-elements/not-equal-to-transact-sql-traditional.md)|Not equal to|  
|[!= (Not Equal To)](../../t-sql/language-elements/not-equal-to-transact-sql-exclamation.md)|Not equal to (not ISO standard)|  
|[!\< (Not Less Than)](../../t-sql/language-elements/not-less-than-transact-sql.md)|Not less than (not ISO standard)|  
|[!> (Not Greater Than)](../../t-sql/language-elements/not-greater-than-transact-sql.md)|Not greater than (not ISO standard)|  
  
## Boolean Data Type  
 The result of a comparison operator has the **Boolean** data type. This has three values: TRUE, FALSE, and UNKNOWN. Expressions that return a **Boolean** data type are known as Boolean expressions.  
  
 Unlike other [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data types, a **Boolean** data type cannot be specified as the data type of a table column or variable, and cannot be returned in a result set.  
  
 When SET ANSI_NULLS is ON, an operator that has one or two NULL expressions returns UNKNOWN. When SET ANSI_NULLS is OFF, the same rules apply, except an equals (=) operator returns TRUE if both expressions are NULL. For example, NULL = NULL returns TRUE when SET ANSI_NULLS is OFF.  
  
 Expressions with **Boolean** data types are used in the WHERE clause to filter the rows that qualify for the search conditions and in control-of-flow language statements such as IF and WHILE, for example:  
  
```  
-- Uses AdventureWorks  
  
DECLARE @MyProduct int;  
SET @MyProduct = 750;  
IF (@MyProduct <> 0)  
   SELECT ProductID, Name, ProductNumber  
   FROM Production.Product  
   WHERE ProductID = @MyProduct;  
```  
  
## See Also  
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)  
  
  