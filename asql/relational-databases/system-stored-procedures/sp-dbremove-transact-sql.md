---
title: "sp_dbremove (Transact-SQL) | Microsoft Docs"
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
  - "sp_dbremove"
  - "sp_dbremove_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_dbremove"
ms.assetid: a8513f4a-c025-49c8-99c3-4c83cb7f51ed
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dbremove (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a database and all files associated with that database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] We recommend that you use [DROP DATABASE](../../t-sql/statements/drop-database-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_dbremove [ @dbname = ] 'database' [ , [ @dropdev = ] 'dropdev' ]   
```  
  
## Arguments  
 [ **@dbname=** ] **'***database***'**  
 Is the name of the database to be removed. *database* is **sysname**, with a default value of NULL.  
  
 [ **@dropdev=** ] **'***dropdev***'**  
 Is a flag provided for backward compatibility only and is currently ignored. *dropdev* has the value **dropdev**.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example removes a database named `sales` and all files associated with it.  
  
```  
EXEC sp_dbremove sales;  
```  
  
## See Also  
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)   
 [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md)   
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [sp_detach_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-detach-db-transact-sql.md)  
  
  