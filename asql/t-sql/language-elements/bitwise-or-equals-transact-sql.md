---
title: "|= (Bitwise OR EQUALS) (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-01-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "|="
  - "|=_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "compound operators, |="
  - "|= (bitwize OR equals)"
ms.assetid: bd746a4f-6498-4196-bf2e-b6f457a15d44
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# |= (Bitwise OR EQUALS) (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Performs a bitwise logical OR operation between two specified integer values as translated to binary expressions within [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements, and sets a value to the result of the operation.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
expression |= expression  
```  
  
## Arguments  
 *expression*  
 Is any valid [expression](../../t-sql/language-elements/expressions-transact-sql.md) of any one of the data types in the numeric category except the **bit** data type.  
  
## Result Types  
 Returns the data type of the argument with the higher precedence. For more information, see [Data Type Precedence &#40;Transact-SQL&#41;](../../t-sql/data-types/data-type-precedence-transact-sql.md).  
  
## Remarks  
 For more information, see [&#124; &#40;Bitwise OR&#41; &#40;Transact-SQL&#41;](../../t-sql/language-elements/bitwise-or-transact-sql.md).  
  
## See Also  
 [Compound Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/compound-operators-transact-sql.md)   
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [Bitwise Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/bitwise-operators-transact-sql.md)  
  
  