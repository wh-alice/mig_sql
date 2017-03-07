---
title: "Search Condition (Transact-SQL) | Microsoft Docs"
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
  - "search"
  - "Search Condition"
  - "condition"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "OR operator [Transact-SQL]"
  - "CONTAINS predicate (Transact-SQL)"
  - "ESCAPE keyword"
  - "operators [Transact-SQL], search condition"
  - "search conditions [SQL Server]"
  - "WHERE clause, search conditions"
  - "ALL keyword"
  - "FREETEXT predicate (Transact-SQL)"
  - "EXISTS keyword"
  - "search conditions [SQL Server], about search conditions"
  - "NOT operator [Transact-SQL]"
  - "BETWEEN operator"
  - "SOME | ANY keyword"
  - "predicates [full-text search]"
  - "AND, about search conditions"
  - "logical operators [SQL Server], about search conditions"
  - "precedence [SQL Server], logical operators"
  - "logical operators [SQL Server], precedence"
  - "LIKE comparisons"
ms.assetid: 09974469-c5d2-4be8-bc5a-78e404660b2c
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# Search Condition (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Is a combination of one or more predicates that use the logical operators AND, OR, and NOT.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
<search_condition> ::=   
    { [ NOT ] <predicate> | ( <search_condition> ) }   
    [ { AND | OR } [ NOT ] { <predicate> | ( <search_condition> ) } ]   
[ ,...n ]   
  
<predicate> ::=   
    { expression { = | < > | ! = | > | > = | ! > | < | < = | ! < } expression   
    | string_expression [ NOT ] LIKE string_expression   
  [ ESCAPE 'escape_character' ]   
    | expression [ NOT ] BETWEEN expression AND expression   
    | expression IS [ NOT ] NULL   
    | CONTAINS   
  ( { column | * } , '<contains_search_condition>' )   
    | FREETEXT ( { column | * } , 'freetext_string' )   
    | expression [ NOT ] IN ( subquery | expression [ ,...n ] )   
    | expression { = | < > | ! = | > | > = | ! > | < | < = | ! < }   
  { ALL | SOME | ANY} ( subquery )   
    | EXISTS ( subquery )     }   
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
< search_condition > ::=   
    { [ NOT ] <predicate> | ( <search_condition> ) }   
    [ { AND | OR } [ NOT ] { <predicate> | ( <search_condition> ) } ]   
[ ,...n ]   
  
<predicate> ::=   
    { expression { = | < > | ! = | > | > = | < | < = } expression   
    | string_expression [ NOT ] LIKE string_expression   
    | expression [ NOT ] BETWEEN expression AND expression   
    | expression IS [ NOT ] NULL   
    | expression [ NOT ] IN (subquery | expression [ ,...n ] )   
    | expression [ NOT ] EXISTS (subquery)     }   
```  
  
## Arguments  
 <search_condition>  
 Specifies the conditions for the rows returned in the result set for a SELECT statement, query expression, or subquery. For an UPDATE statement, specifies the rows to be updated. For a DELETE statement, specifies the rows to be deleted. There is no limit to the number of predicates that can be included in a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement search condition.  
  
 NOT  
 Negates the Boolean expression specified by the predicate. For more information, see [NOT &#40;Transact-SQL&#41;](../Topic/NOT%20\(Transact-SQL\).md).  
  
 AND  
 Combines two conditions and evaluates to TRUE when both of the conditions are TRUE. For more information, see [AND &#40;Transact-SQL&#41;](../Topic/AND%20\(Transact-SQL\).md).  
  
 OR  
 Combines two conditions and evaluates to TRUE when either condition is TRUE. For more information, see [OR &#40;Transact-SQL&#41;](../Topic/OR%20\(Transact-SQL\).md).  
  
 \< predicate >  
 Is an expression that returns TRUE, FALSE, or UNKNOWN.  
  
 *expression*  
 Is a column name, a constant, a function, a variable, a scalar subquery, or any combination of column names, constants, and functions connected by an operator or operators, or a subquery. The expression can also contain the CASE expression.  
  
> [!NOTE]  
>  When referencing the Unicode character data types **nchar**, **nvarchar**, and **ntext**, 'expression' should be prefixed with the capital letter 'N'. If 'N' is not specified, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] converts the string to the code page that corresponds to the default collation of the database or column. Any characters not found in this code page are lost.  
  
 =  
 Is the operator used to test the equality between two expressions.  
  
 <>  
 Is the operator used to test the condition of two expressions not being equal to each other.  
  
 !=  
 Is the operator used to test the condition of two expressions not being equal to each other.  
  
 \>  
 Is the operator used to test the condition of one expression being greater than the other.  
  
 \>=  
 Is the operator used to test the condition of one expression being greater than or equal to the other expression.  
  
 !>  
 Is the operator used to test the condition of one expression not being greater than the other expression.  
  
 <  
 Is the operator used to test the condition of one expression being less than the other.  
  
 <=  
 Is the operator used to test the condition of one expression being less than or equal to the other expression.  
  
 !<  
 Is the operator used to test the condition of one expression not being less than the other expression.  
  
 *string_expression*  
 Is a string of characters and wildcard characters.  
  
 [ NOT ] LIKE  
 Indicates that the subsequent character string is to be used with pattern matching. For more information, see [LIKE &#40;Transact-SQL&#41;](../Topic/LIKE%20\(Transact-SQL\).md).  
  
 ESCAPE **'***escape_ character***'**  
 Allows for a wildcard character to be searched for in a character string instead of functioning as a wildcard. *escape_character* is the character that is put in front of the wildcard character to indicate this special use.  
  
 [ NOT ] BETWEEN  
 Specifies an inclusive range of values. Use AND to separate the starting and ending values. For more information, see [BETWEEN &#40;Transact-SQL&#41;](../Topic/BETWEEN%20\(Transact-SQL\).md).  
  
 IS [ NOT ] NULL  
 Specifies a search for null values, or for values that are not null, depending on the keywords used. An expression with a bitwise or arithmetic operator evaluates to NULL if any one of the operands is NULL.  
  
 CONTAINS  
 Searches columns that contain character-based data for precise or less precise (*fuzzy*) matches to single words and phrases, the proximity of words within a certain distance of one another, and weighted matches. This option can only be used with SELECT statements. For more information, see [CONTAINS &#40;Transact-SQL&#41;](../Topic/CONTAINS%20\(Transact-SQL\).md).  
  
 FREETEXT  
 Provides a simple form of natural language query by searching columns that contain character-based data for values that match the meaning instead of the exact words in the predicate. This option can only be used with SELECT statements. For more information, see [FREETEXT &#40;Transact-SQL&#41;](../Topic/FREETEXT%20\(Transact-SQL\).md).  
  
 [ NOT ] IN  
 Specifies the search for an expression, based on whether the expression is included in or excluded from a list. The search expression can be a constant or a column name, and the list can be a set of constants or, more typically, a subquery. Enclose the list of values in parentheses. For more information, see [IN &#40;Transact-SQL&#41;](../Topic/IN%20\(Transact-SQL\).md).  
  
 *subquery*  
 Can be considered a restricted SELECT statement and is similar to <query_expresssion> in the SELECT statement. The ORDER BY clause and the INTO keyword are not allowed. For more information, see [SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md).  
  
 ALL  
 Used with a comparison operator and a subquery. Returns TRUE for \<predicate> when all values retrieved for the subquery satisfy the comparison operation, or FALSE when not all values satisfy the comparison or when the subquery returns no rows to the outer statement. For more information, see [ALL &#40;Transact-SQL&#41;](../Topic/ALL%20\(Transact-SQL\).md).  
  
 { SOME | ANY }  
 Used with a comparison operator and a subquery. Returns TRUE for \<predicate> when any value retrieved for the subquery satisfies the comparison operation, or FALSE when no values in the subquery satisfy the comparison or when the subquery returns no rows to the outer statement. Otherwise, the expression is UNKNOWN. For more information, see [SOME &#124; ANY &#40;Transact-SQL&#41;](../Topic/SOME%20%7C%20ANY%20\(Transact-SQL\).md).  
  
 EXISTS  
 Used with a subquery to test for the existence of rows returned by the subquery. For more information, see [EXISTS &#40;Transact-SQL&#41;](../Topic/EXISTS%20\(Transact-SQL\).md).  
  
## Remarks  
 The order of precedence for the logical operators is NOT (highest), followed by AND, followed by OR. Parentheses can be used to override this precedence in a search condition. The order of evaluation of logical operators can vary depending on choices made by the query optimizer. For more information about how the logical operators operate on logic values, see [AND &#40;Transact-SQL&#41;](../Topic/AND%20\(Transact-SQL\).md), [OR &#40;Transact-SQL&#41;](../Topic/OR%20\(Transact-SQL\).md), and [NOT &#40;Transact-SQL&#41;](../Topic/NOT%20\(Transact-SQL\).md).  
  
## Examples  
  
### A. Using WHERE with LIKE and ESCAPE syntax  
 The following example searches for the rows in which the `LargePhotoFileName` column has the characters `green_`, and uses the `ESCAPE` option because `_` is a wildcard character. Without specifying the `ESCAPE` option, the query would search for any description values that contain the word `green` followed by any single character other than the `_` character.  
  
```  
USE AdventureWorks2012 ;  
GO  
SELECT *   
FROM Production.ProductPhoto  
WHERE LargePhotoFileName LIKE '%greena_%' ESCAPE 'a' ;  
```  
  
### B. Using WHERE and LIKE syntax with Unicode data  
 The following example uses the `WHERE` clause to retrieve the mailing address for any company that is outside the United States (`US`) and in a city whose name starts with `Pa`.  
  
```  
USE AdventureWorks2012 ;  
GO  
SELECT AddressLine1, AddressLine2, City, PostalCode, CountryRegionCode    
FROM Person.Address AS a  
JOIN Person.StateProvince AS s ON a.StateProvinceID = s.StateProvinceID  
WHERE CountryRegionCode NOT IN ('US')  
AND City LIKE N'Pa%' ;  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### C. Using WHERE with LIKE  
 The following example searches for the rows in which the `LastName` column has the characters `and`.  
  
```  
-- Uses AdventureWorks  
  
SELECT EmployeeKey, LastName  
FROM DimEmployee  
WHERE LastName LIKE '%and%';  
```  
  
### D. Using WHERE and LIKE syntax with Unicode data  
 The following example uses the `WHERE` clause to perform a Unicode search on the `LastName` column.  
  
```  
-- Uses AdventureWorks  
  
SELECT EmployeeKey, LastName  
FROM DimEmployee  
WHERE LastName LIKE N'%and%';  
```  
  
## See Also  
 [Aggregate Functions &#40;Transact-SQL&#41;](../../t-sql/functions/aggregate-functions-transact-sql.md)   
 [CASE &#40;Transact-SQL&#41;](../Topic/CASE%20\(Transact-SQL\).md)   
 [CONTAINSTABLE &#40;Transact-SQL&#41;](../../relational-databases/system-functions/containstable-transact-sql.md)   
 [Cursors &#40;Transact-SQL&#41;](../../t-sql/language-elements/cursors-transact-sql.md)   
 [DELETE &#40;Transact-SQL&#41;](../../t-sql/statements/delete-transact-sql.md)   
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [FREETEXTTABLE &#40;Transact-SQL&#41;](../../relational-databases/system-functions/freetexttable-transact-sql.md)   
 [FROM &#40;Transact-SQL&#41;](../../t-sql/queries/from-transact-sql.md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [UPDATE &#40;Transact-SQL&#41;](../../t-sql/queries/update-transact-sql.md)  
  
  

