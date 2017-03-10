---
title: "Percent character (Wildcard - Character(s) to Match) (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-06"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "Azure SQL Data Warehouse"
  - "Azure SQL Database"
  - "SQL Server (starting with 2008)"
f1_keywords: 
  - "%"
  - "%_TSQL"
  - "wildcard"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "conditions [SQL Server], wildcards"
  - "% (wildcard - character(s) to match)"
  - "matching conditions [SQL Server]"
  - "wildcard characters [SQL Server]"
  - "characters [SQL Server], wildcard"
ms.assetid: d4cbc1a9-37e1-4101-97fb-e6ac30c1223e
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# Percent character (Wildcard - Character(s) to Match) (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Matches any string of zero or more characters. This wildcard character can be used as either a prefix or a suffix.  
  
## Examples  
 The following example returns all the first names of people in the `Person` table of `AdventureWorks2012` that start with `Dan`.  
  
```  
-- Uses AdventureWorks  
  
SELECT FirstName, LastName  
FROM Person.Person  
WHERE FirstName LIKE 'Dan%';  
GO  
```  
  
## See Also  
 [LIKE &#40;Transact-SQL&#41;](../../t-sql/language-elements/like-transact-sql.md)   
 [Operators &#40;Transact-SQL&#41;](../../t-sql/language-elements/operators-transact-sql.md)   
 [Expressions &#40;Transact-SQL&#41;](../../t-sql/language-elements/expressions-transact-sql.md)  
 [&#91; &#93; (Wildcard - Character(s) to Match)](../../t-sql/language-elements/wildcard-character-s-to-match-transact-sql.md)   
  [&#91;^&#93; (Wildcard - Character(s) Not to Match)](../../t-sql/language-elements/wildcard-character-s-not-to-match-transact-sql.md)     
 [_ (Wildcard - Match One Character)](../../t-sql/language-elements/wildcard-match-one-character-transact-sql.md)  
    
  