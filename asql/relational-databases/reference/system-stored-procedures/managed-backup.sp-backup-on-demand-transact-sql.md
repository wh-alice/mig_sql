---
title: "managed_backup.sp_backup_on_demand (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "smart_admin.sp_backup_on_demand"
  - "smart_admin.sp_backup_on_demand_TSQL"
  - "sp_backup_on_demand_TSQL"
  - "sp_backup_on_demand"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "smart_admin.sp_backup_on_demand"
  - "sp_backup_on_demand"
ms.assetid: 638f809f-27fa-4c44-a549-9cf37ecc920c
caps.latest.revision: 13
ms.author: "mikeray"
manager: "jhubbard"
---
# managed_backup.sp_backup_on_demand (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Requests [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)] to perform a backup of the specified database.  
  
 Use this stored procedure to perform ad hoc backups for a database configured with [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)]. This prevents any break in the backup chain and [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)] processes are aware and the backup is stored in the same Windows Azure Blob storage container.  
  
 Upon successful completion of the backup the full backup file path is returned. This includes the name and location of the new backup file resulting from the backup operation.  
  
 An error is returned if [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)] is in the process of executing a backup of given type for the specified database. In this case, the error message returned includes the full backup file path where the current backup is being uploaded to.  
   
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```tsql  
EXEC managed_backup.sp_backup_on_demand   
[@database_name  =]  'database name',[@type = ] { 'Database' | 'Log' }  
  
```  
  
##  <a name="Arguments"></a> Arguments  
 @database_name  
 The name of the database on which the backup is to be performed. The @database_name is **SYSNAME**.  
  
 @type  
 The type of backup to be performed:  Database or Log. The @type parameter is **NVARCHAR(32)**.  
  
## Return Code Value  
 0 (success) or 1 (failure)  
  
## Security  
  
### Permissions  
 Requires membership in **db_backupoperator** database role, with **ALTER ANY CREDENTIAL** permissions, and **EXECUTE** permissions on **sp_delete_backuphistory**stored procedure.  
  
## Examples  
 The following example makes a database backup request for the database ‘TestDB’. This database has [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)] enabled.  
  
```  
Use MSDB  
Go  
EXEC managed_backup.sp_backup_on_demand  
 @database_name = 'TestDB'  
,@type = 'Database'  
  
```  
  
 For each code snippet, select 'tsql' in the language attribute field.  
  
  