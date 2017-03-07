---
title: "DBCC FREESESSIONCACHE (Transact-SQL) | Microsoft Docs"
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
  - "FREESESSIONCACHE"
  - "FREESESSIONCACHE_TSQL"
  - "DBCC_FREESESSIONCACHE_TSQL"
  - "DBCC FREESESSIONCACHE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DBCC FREESESSIONCACHE statement"
  - "distributed queries [SQL Server], cache"
  - "clearing distributed query cache"
  - "flushing distributed query cache"
ms.assetid: a256ba63-7e11-4d5e-abc0-1fa4ed072e63
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC FREESESSIONCACHE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Flushes the distributed query connection cache used by distributed queries against an instance of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DBCC FREESESSIONCACHE [ WITH NO_INFOMSGS ]  
```  
  
## Arguments  
 WITH NO_INFOMSGS  
 Suppresses all informational messages.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example flushes the distributed query cache.  
  
```  
USE AdventureWorks2012;  
GO  
DBCC FREESESSIONCACHE WITH NO_INFOMSGS;  
GO  
```  
  
## See Also  
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)  
  
  