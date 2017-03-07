---
title: "Breaking Changes to Full-Text Search | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "full-text search [SQL Server], breaking changes"
  - "full-text catalogs [SQL Server], breaking changes"
  - "breaking changes [full-text search]"
  - "full-text indexes [SQL Server], breaking changes"
ms.assetid: c55a6748-e5d9-4fdb-9a1f-714475a419c5
caps.latest.revision: 63
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Breaking Changes to Full-Text Search
  This topic describes breaking changes in full-text search. These changes might break applications, scripts, or functionalities that are based on earlier versions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. You might encounter these issues when you upgrade.  
  
## Breaking Changes in Full-Text Search in [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)]  
None
  
## Breaking Changes in Full-Text Search in [!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)]  
 None.  
  
## Breaking Changes in Full-Text Search in [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)]  
  
### Collation Changed for name Column in sys.fulltext_languages  
 The collation of the language **name** column in the catalog view [sys.fulltext_languages &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.fulltext-languages-transact-sql.md) has been changed from the fixed collation of the Resource database to the default collation selected for the instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. This change makes it possible to compare the values in the **name** column when you join the [sys.syslanguages &#40;Transact-SQL&#41;](../relational-databases/reference/system-compatibility-views/sys.syslanguages-transact-sql.md) view with **sys.fulltext_languages**. For example, you can query for all the databases where the default full-text language is different from the default database language.  
  
## See Also  
 [Behavior Changes to Full-Text Search](../a9retired/behavior-changes-to-full-text-search.md)   
 [Full-Text Search](../relational-databases/search/full-text-search.md)  
  
  