---
title: "SQL Server Collation Name (Transact-SQL) | Microsoft Docs"
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
  - "collations [SQL Server], SQL collations"
  - "SQL collations"
  - "names [SQL Server], collations"
ms.assetid: 56483d24-add7-483d-9b96-c6fda460ddbc
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server Collation Name (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Is a single string that specifies the collation name for a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collation.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports Windows collations. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] also supports a limited number (<80) of collations called [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations which were developed before [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supported Windows collations. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations are still supported for backward compatibility, but should not be used for new development work. For more information about Windows collations, see [Windows Collation Name &#40;Transact-SQL&#41;](../../t-sql/statements/windows-collation-name-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
<SQL_collation_name> :: =   
SQL_SortRules[_Pref]_CPCodepage_<ComparisonStyle>  
  
<ComparisonStyle> ::=  
_CaseSensitivity_AccentSensitivity  
| _BIN  
```  
  
## Arguments  
 *SortRules*  
 A string identifying the alphabet or language whose sorting rules are applied when dictionary sorting is specified. Examples are Latin1_General or Polish.  
  
 **Pref**  
 Specifies uppercase preference. Even if comparison is case-insensitive, the uppercase version of a letter sorts before the lowercase version, when there is no other distinction.  
  
 *Codepage*  
 Specifies a one- to four-digit number that identifies the code page used by the collation. **CP1** specifies code page 1252, for all other code pages the complete code page number is specified. For example, **CP1251** specifies code page 1251 and **CP850** specifies code page 850.  
  
 *CaseSensitivity*  
 **CI** specifies case-insensitive, **CS** specifies case-sensitive.  
  
 *AccentSensitivity*  
 **AI** specifies accent-insensitive, **AS** specifies accent-sensitive.  
  
 **BIN**  
 Specifies the binary sort order to be used.  
  
## Remarks  
 To list the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collations supported by your server, execute the following query.  
  
```  
SELECT * FROM sys.fn_helpcollations()   
WHERE name LIKE 'SQL%';  
```  
  
 <sup>1</sup>For Sort Order ID 80, use any of the Window collations with the code page of 1250, and binary order. For example: Albanian_BIN, Croatian_BIN, Czech_BIN, Romanian_BIN, Slovak_BIN, Slovenian_BIN.  
  
## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)   
 [Constants &#40;Transact-SQL&#41;](../../t-sql/data-types/constants-transact-sql.md)   
 [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)   
 [DECLARE @local_variable &#40;Transact-SQL&#41;](../../t-sql/language-elements/declare-local-variable-transact-sql.md)   
 [table &#40;Transact-SQL&#41;](../../t-sql/data-types/table-transact-sql.md)   
 [sys.fn_helpcollations &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/sys.fn-helpcollations-transact-sql.md)  
  
  