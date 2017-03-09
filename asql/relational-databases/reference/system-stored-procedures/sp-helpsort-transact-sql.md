---
title: "sp_helpsort (Transact-SQL) | Microsoft Docs"
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
  - "sp_helpsort_TSQL"
  - "sp_helpsort"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_helpsort"
ms.assetid: 2a88d079-3755-43cb-8a54-97d0114149e6
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpsort (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Displays the sort order and character set for the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_helpsort  
```  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 Returns server default collation.  
  
## Remarks  
 If an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is installed with a collation specified to be compatible with an earlier installation of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], **sp_helpsort** returns blank results. When this behavior occurs, you can determine the collation by querying the SERVERPROPERTY object, such as: `SELECT SERVERPROPERTY ('Collation');`.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following example displays the name of the default sort order of the server, its character set, and a table of its primary sort values.  
  
```  
sp_helpsort;  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
 `Server default collation`  
  
 `------------------------`  
  
 `Latin1-General, case-sensitive, accent-sensitive, kanatype-insensitive, width-insensitive for Unicode Data, SQL Server Sort Order 51 on Code Page 1252 for non-Unicode Data.`  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [COLLATE &#40;Transact-SQL&#41;](../Topic/COLLATE%20\(Transact-SQL\).md)   
 [sys.fn_helpcollations &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-helpcollations-transact-sql.md)   
 [SERVERPROPERTY &#40;Transact-SQL&#41;](../../../t-sql/functions/serverproperty-transact-sql.md)  
  
  