---
title: "DBCC FREESYSTEMCACHE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "FREESYSTEMCACHE_TSQL"
  - "DBCC_FREESYSTEMCACHE_TSQL"
  - "DBCC FREESYSTEMCACHE"
  - "FREESYSTEMCACHE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "clearing unused cache entries"
  - "DBCC FREESYSTEMCACHE statement"
  - "unused cache entries"
  - "releasing unused cache entries"
  - "freeing unused cache entries"
  - "cleaning unused cache entries"
ms.assetid: 4b5c460b-e4ad-404a-b4ca-d65aba38ebbb
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC FREESYSTEMCACHE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Releases all unused cache entries from all caches. The [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] proactively cleans up unused cache entries in the background to make memory available for current entries. However, you can use this command to manually remove unused entries from all caches or from a specified Resource Governor pool cache.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
DBCC FREESYSTEMCACHE   
    ( 'ALL' [, pool_name ] )   
    [WITH   
    { [ MARK_IN_USE_FOR_REMOVAL ] , [ NO_INFOMSGS ]  }  
    ]  
```  
  
## Arguments  
 ( 'ALL' [,*pool_name* ] )  
 ALL specifies all supported caches.  
  
 *pool_name* specifies a Resource Governor pool cache. Only entries associated with this pool will be freed.  
  
 MARK_IN_USE_FOR_REMOVAL  
 Asynchronously frees currently used entries from their respective caches after they become unused. New entries created in the cache after the DBCC FREESYSTEMCACHE WITH MARK_IN_USE_FOR_REMOVAL is executed are not affected.  
  
 NO_INFOMSGS  
 Suppresses all informational messages.  
  
## Result Sets  
 DBCC FREESYSTEMCACHE returns:  
  
 "DBCC execution completed. If DBCC printed error messages, contact your system administrator."  
  
## Remarks  
 Executing DBCC FREESYSTEMCACHE clears the plan cache for the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Clearing the plan cache causes a recompilation of all subsequent execution plans and can cause a sudden, temporary decrease in query performance. For each cleared cachstore in the plan cache, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log will contain the following informational message: "[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] has encountered %d occurrence(s) of cachestore flush for the '%s' cachestore (part of plan cache) due to 'DBCC FREEPROCCACHE' or 'DBCC FREESYSTEMCACHE' operations." This message is logged every five minutes as long as the cache is flushed within that time interval.  
  
## Permissions  
 Requires ALTER SERVER STATE permission on the server.  
  
## Examples  
  
### A. Releasing unused cache entries from a Resource Governor pool cache  
 The following example illustrates how to clean caches that are dedicated to a specified Resource Governor resource pool.  
  
```  
-- Clean all the caches with entries specific to the resource pool named "default".  
DBCC FREESYSTEMCACHE ('ALL', default);  
```  
  
### B. Releasing entries from their respective caches after they become unused  
 The following example uses the MARK_IN_USE_FOR_REMOVAL clause to release entries from all current caches once the entries become unused.  
  
```  
DBCC FREESYSTEMCACHE ('ALL') WITH MARK_IN_USE_FOR_REMOVAL;  
```  
  
## See Also  
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [DBCC FREEPROCCACHE &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-freeproccache-transact-sql.md)   
 [DBCC FREESESSIONCACHE &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-freesessioncache-transact-sql.md)   
 [Resource Governor](../../relational-databases/resource-governor/resource-governor.md)  
  
  