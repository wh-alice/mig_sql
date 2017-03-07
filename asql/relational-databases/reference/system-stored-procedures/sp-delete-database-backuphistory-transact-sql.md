---
title: "sp_delete_database_backuphistory (Transact-SQL) | Microsoft Docs"
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
  - "sp_delete_database_backuphistory"
  - "sp_delete_database_backuphistory_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_database_backuphistory"
ms.assetid: 4c237944-453d-49fb-8d0e-4596945ac147
caps.latest.revision: 49
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_delete_database_backuphistory (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Deletes information about the specified database from the backup and restore history tables.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_delete_database_backuphistory [ @database_name = ] 'database_name'  
```  
  
## Arguments  
 [ **@database_name=** ] *database_name*  
 Specifies the name of the database involved in backup and restore operations. *database_name* is **sysname**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 **sp_delete_database_backuphistory** must be run from the **msdb** database.  
  
 This stored procedure affects the following tables:  
  
-   [backupfile](../../../relational-databases/reference/system-tables/backupfile-transact-sql.md)  
  
-   [backupfilegroup](../../../relational-databases/reference/system-tables/backupfilegroup-transact-sql.md)  
  
-   [backupmediafamily](../../../relational-databases/reference/system-tables/backupmediafamily-transact-sql.md)  
  
-   [backupmediaset](../../../relational-databases/reference/system-tables/backupmediaset-transact-sql.md)  
  
-   [backupset](../../../relational-databases/reference/system-tables/backupset-transact-sql.md)  
  
-   [restorefile](../../../relational-databases/reference/system-tables/restorefile-transact-sql.md)  
  
-   [restorefilegroup](../../../relational-databases/reference/system-tables/restorefilegroup-transact-sql.md)  
  
-   [restorehistory](../../../relational-databases/reference/system-tables/restorehistory-transact-sql.md)  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example deletes all entries for the [!INCLUDE[ssSampleDBobject](../../../a9retired/includes/sssampledbobject-md.md)] database in the backup-and-restore history tables.  
  
```  
USE msdb;  
GO  
EXEC sp_delete_database_backuphistory @database_name = 'AdventureWorks2012';  
  
```  
  
## See Also  
 [sp_delete_backuphistory &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-delete-backuphistory-transact-sql.md)   
 [Backup History and Header Information &#40;SQL Server&#41;](../../../relational-databases/backup-restore/backup-history-and-header-information-sql-server.md)  
  
  