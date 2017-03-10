---
title: "sp_delete_backup_file_snapshot (Transact-SQL) | Microsoft Docs"
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 5afe5530-a404-4fa5-af3c-bc7c3ca43ce6
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
---
# Snapshot Backup - sp_delete_backup_file_snapshot
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Deletes a specified backup snapshot from the specified database. Use this system stored procedure in conjunction with the **sys.fn_db_backup_file_snapshots** system function to identify and delete orphaned backup snapshots. For more information, see [File-Snapshot Backups for Database Files in Azure](../../../relational-databases/backup-restore/file-snapshot-backups-for-database-files-in-azure.md).  

  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.sp_delete_backup_file_snapshot  
    [ @db_name = ] N’<database_name>  
    , [ @snapshot_url = ] N’<snapshot_url>  
```  
  
## Arguments  
 *[ @db_name = ] database_name*  
 The name of the database containing the snapshot to be deleted, provided as a Unicode string.  
  
 *[ @snapshot_url = ] snapshot_url*  
 The URL of the snapshot to be deleted, provided as a Unicode string.  
  
## Permissions  
 Requires ALTER ANY DATABASE permission.  
  
## See Also  
 [sys.fn_db_backup_file_snapshots &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-db-backup-file-snapshots-transact-sql.md)   
 [sp_delete_backup &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/snapshot-backup-sp-delete-backup.md)  
  
  