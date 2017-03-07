---
title: "SOUNDEX (Transact-SQL) | Microsoft Docs"
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
  - "SOUNDEX"
  - "SOUNDEX_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SOUNDEX function"
  - "comparing string data"
  - "strings [SQL Server], similarity"
  - "strings [SQL Server], comparing"
  - "SOUNDEX values"
ms.assetid: 8f1ed34e-8467-4512-a211-e0f43dee6584
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# SOUNDEX (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a four-character (SOUNDEX) code to evaluate the similarity of two strings.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
SOUNDEX ( character_expression )  
```  
  
## Arguments  
 *character_expression*  
 Is an alphanumeric [expression](../../t-sql/language-elements/expressions-transact-sql.md) of character data. *character_expression* can be a constant, variable, or column.  
  
## Return Types  
 **varchar**  
  
## Remarks  
 SOUNDEX converts an alphanumeric string to a four-character code that is based on how the string sounds when spoken. The first character of the code is the first character of *character_expression*, converted to upper case. The second through fourth characters of the code are numbers that represent the letters in the expression. The letters A, E, I, O, U, H, W, and Y are ignored unless they are the first letter of the string. Zeroes are added at the end if necessary to produce a four-character code. For more information about the SOUNDEX code, see [The Soundex Indexing System](https://www.archives.gov/research/census/soundex.html).  
  
 SOUNDEX codes from different strings can be compared to see how similar the strings sound when spoken. The DIFFERENCE function performs a SOUNDEX on two strings, and returns an integer that represents how similar the SOUNDEX codes are for those strings.  
  
 SOUNDEX is collation sensitive. String functions can be nested.  
  
## SOUNDEX Compatibility  
 In previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the SOUNDEX function applied a subset of the SOUNDEX rules. Under database compatibility level 110 or higher, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] applies a more complete set of the rules.  
  
 After upgrading to compatibility level 110 or higher, you may need to rebuild the indexes, heaps, or CHECK constraints that use the SOUNDEX function.  
  
-   A heap that contains a persisted computed column defined with SOUNDEX cannot be queried until the heap is rebuilt by running the statement `ALTER TABLE <table> REBUILD`.  
  
-   CHECK constraints defined with SOUNDEX are disabled upon upgrade. To enable the constraint, run the statement `ALTER TABLE <table> WITH CHECK CHECK CONSTRAINT ALL`.  
  
-   Indexes (including indexed views) that contain a persisted computed column defined with SOUNDEX cannot be queried until the index is rebuilt by running the statement `ALTER INDEX ALL ON <object> REBUILD`.  
  
## Examples  
 The following example shows the SOUNDEX function and the related DIFFERENCE function. In the first example, the standard `SOUNDEX` values are returned for all consonants. Returning the `SOUNDEX` for `Smith` and `Smythe` returns the same SOUNDEX result because all vowels, the letter `y`, doubled letters, and the letter `h`, are not included.  
  
```  
-- Using SOUNDEX  
SELECT SOUNDEX ('Smith'), SOUNDEX ('Smythe');  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)] Valid for a Latin1_General collation.  
  
```  
  
----- -----   
S530  S530    
  
(1 row(s) affected)  
```  
  
 The `DIFFERENCE` function compares the difference of the `SOUNDEX` pattern results. The following example shows two strings that differ only in vowels. The difference returned is `4`, the lowest possible difference.  
  
```  
-- Using DIFFERENCE  
SELECT DIFFERENCE('Smithers', 'Smythers');  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)] Valid for a Latin1_General collation.  
  
```  
-----------   
4             
  
(1 row(s) affected)  
```  
  
 In the following example, the strings differ in consonants; therefore, the difference returned is `2`, the greater difference.  
  
```  
SELECT DIFFERENCE('Anothers', 'Brothers');  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)] Valid for a Latin1_General collation.  
  
```  
-----------   
2             
  
(1 row(s) affected)  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example shows the SOUNDEX function and the related DIFFERENCE function. In the first example, the standard `SOUNDEX` values are returned for all consonants. Returning the `SOUNDEX` for `Smith` and `Smythe` returns the same SOUNDEX result because all vowels, the letter `y`, doubled letters, and the letter `h`, are not included.  
  
```  
-- Using SOUNDEX  
SELECT SOUNDEX ('Smith'), SOUNDEX ('Smythe');  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)] Valid for a Latin1_General collation.  
  
```  
  
----- -----   
S530  S530    
  
(1 row(s) affected)  
```  
  
 The `DIFFERENCE` function compares the difference of the `SOUNDEX` pattern results. The following example shows two strings that differ only in vowels. The difference returned is `4`, the lowest possible difference.  
  
```  
-- Using DIFFERENCE  
SELECT DIFFERENCE('Smithers', 'Smythers');  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)] Valid for a Latin1_General collation.  
  
```  
-----------   
4             
  
(1 row(s) affected)  
```  
  
 In the following example, the strings differ in consonants; therefore, the difference returned is `2`, the greater difference.  
  
```  
SELECT DIFFERENCE('Anothers', 'Brothers');  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)] Valid for a Latin1_General collation.  
  
```  
-----------   
2             
  
(1 row(s) affected)  
```  
  
## See Also  
 [DIFFERENCE &#40;Transact-SQL&#41;](../../t-sql/functions/difference-transact-sql.md)   
 [String Functions &#40;Transact-SQL&#41;](../../t-sql/functions/string-functions-transact-sql.md)   
 [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20Compatibility%20Level%20\(Transact-SQL\).md)  
  
  

