---
title: "@@LANGID (Transact-SQL) | Microsoft Docs"
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
  - "@@LANGID"
  - "@@LANGID_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "languages [SQL Server], current in use"
  - "@@LANGID function"
  - "current language in use"
  - "ID for language in use"
  - "local language IDs [SQL Server]"
ms.assetid: 7a0fc089-2a48-4a81-9d78-2aaedb540d37
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# @@LANGID (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the local language identifier (ID) of the language that is currently being used.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
@@LANGID  
```  
  
## Return Types  
 **smallint**  
  
## Remarks  
 To view information about language settings, including language ID numbers, run **sp_helplanguage** without a parameter specified.  
  
## Examples  
 The following example sets the language for the current session to `Italian`, and then uses `@@LANGID` to return the ID for Italian.  
  
```  
SET LANGUAGE 'Italian'  
SELECT @@LANGID AS 'Language ID'  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
```  
Changed language setting to Italiano.  
Language ID  
-----------  
6            
```  
  
## See Also  
 [Configuration Functions &#40;Transact-SQL&#41;](../../t-sql/functions/configuration-functions-transact-sql.md)   
 [SET LANGUAGE &#40;Transact-SQL&#41;](../../t-sql/statements/set-language-transact-sql.md)   
 [sp_helplanguage &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-helplanguage-transact-sql.md)  
  
  