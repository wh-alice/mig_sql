---
title: "RTRIM (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-02-27"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "RTRIM_TSQL"
  - "RTRIM"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "RTRIM function"
  - "character strings [SQL Server], trailing blanks"
  - "blank characters [SQL Server]"
  - "trailing blanks"
ms.assetid: 52fd6e8d-650c-4f66-abcf-67765aa5aa83
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# RTRIM (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a character string after truncating all trailing spaces.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
RTRIM ( character_expression )  
```  
  
## Arguments  
 *character_expression*  
 Is an [expression](../../t-sql/language-elements/expressions-transact-sql.md) of character data. *character_expression* can be a constant, variable, or column of either character or binary data.  
  
 *character_expression* must be of a data type that is implicitly convertible to **varchar**. Otherwise, use [CAST](../../t-sql/functions/cast-and-convert-transact-sql.md) to explicitly convert *character_expression*.  
  
## Return Types  
 **varchar** or **nvarchar**  
  
## Examples  
  
### A. Simple Example  
 The following example takes a string of characters that has spaces at the end of the sentence, and returns the text without the spaces at the end of the sentence.  
  
```  
SELECT RTRIM('Removes trailing spaces.   ');  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
  `Removes trailing spaces.`  
  
### B: Simple Example  
 The following example demonstrates how to use `RTRIM` to remove trailing spaces. This time there is another string concatenated ot the first string to show that the spaces are gone.  
  
```  
SELECT RTRIM('Four spaces are after the period in this sentence.    ') + 'Next string.';  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
`Four spaces are after the period in this sentence.Next string.`  

### C. Using RTRIM with a variable  
 The following example demonstrates how to use `RTRIM` to remove trailing spaces from a character variable.  
  
```  
DECLARE @string_to_trim varchar(60);  
SET @string_to_trim = 'Four spaces are after the period in this sentence.    ';  
SELECT @string_to_trim + ' Next string.';  
SELECT RTRIM(@string_to_trim) + ' Next string.';  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `-------------------------------------------------------------------------`  
 `Four spaces are after the period in this sentence.     Next string.`  
  
 `(1 row(s) affected)`  
 
 `-------------------------------------------------------------------------`  
 `Four spaces are after the period in this sentence. Next string.`  
 
 `(1 row(s) affected)`  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  

  
## See Also  
 [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md)   
 [Data Types &#40;Transact-SQL&#41;](../../t-sql/data-types/data-types-transact-sql.md)   
 [String Functions &#40;Transact-SQL&#41;](../../t-sql/functions/string-functions-transact-sql.md)  
  
  

