---
title: "DBCC DROPCLEANBUFFERS (Transact-SQL) | Microsoft Docs"
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
  - "DROPCLEANBUFFERS"
  - "DBCC_DROPCLEANBUFFERS_TSQL"
  - "DROPCLEANBUFFERS_TSQL"
  - "DBCC DROPCLEANBUFFERS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "clean buffers"
  - "cold buffer cache"
  - "buffer pools [SQL Server]"
  - "dropping buffers"
  - "removing buffers"
  - "DBCC DROPCLEANBUFFERS statement"
ms.assetid: a4121927-f2ce-4926-aa2c-9b1519dac048
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC DROPCLEANBUFFERS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Removes all clean buffers from the buffer pool, and columnstore objects from the columnstore object pool.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server  
  
DBCC DROPCLEANBUFFERS [ WITH NO_INFOMSGS ]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
DBCC DROPCLEANBUFFERS ( COMPUTE | ALL ) [ WITH NO_INFOMSGS ]  
```  
  
## Arguments  
 WITH NO_INFOMSGS  
 Suppresses all informational messages. Informational messages are always suppressed on [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)].  
  
 COMPUTE  
 Purge the query plan cache from each Compute node.  
  
 ALL  
 Purge the query plan cache from each Compute node and from the Control node. This is the default if you do not specify a value.  
  
## Remarks  
 Use DBCC DROPCLEANBUFFERS to test queries with a cold buffer cache without shutting down and restarting the server.  
  
 To drop clean buffers from the buffer pool and columnstore objects from the columnstore object pool, first use CHECKPOINT to produce a cold buffer cache. This forces all dirty pages for the current database to be written to disk and cleans the buffers. After you do this, you can issue DBCC DROPCLEANBUFFERS command to remove all buffers from the buffer pool.  
  
## Result Sets  
 DBCC DROPCLEANBUFFERS on [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] returns:  
  
```  
DBCC execution completed. If DBCC printed error messages, contact your system administrator.  
```  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role on [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 Requires CONTROL permission on [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)].  
  
 Requires ALTER SERVER STATE permission on [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)].  
  
## See Also  
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [CHECKPOINT &#40;Transact-SQL&#41;](../../t-sql/language-elements/checkpoint-transact-sql.md)  
  
  