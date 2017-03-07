---
title: "managed_backup.sp_ backup_master_switch (Transact-SQL) | Microsoft Docs"
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
  - "sp_ backup_master_switch"
  - "smart_admin.sp_ backup_master_switch"
  - "sp_ backup_master_switch_TSQL"
  - "smart_admin.sp_ backup_master_switch_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_ backup_master_switch"
  - "smart_admin.sp_ backup_master_switch"
ms.assetid: 1ed2b2b2-c897-41cc-bed5-1c6bc47b9dd2
caps.latest.revision: 12
ms.author: "mikeray"
manager: "jhubbard"
---
# managed_backup.sp_ backup_master_switch (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Pauses or resumes the [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)].  
  
 Use this stored procedure to temporarily pause and them resume [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)]. This makes sure that all the configurations settings remain and is retained when the operations resume. When [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)] is paused the retention period is not enforced. This means that there is no check to determine whether files should be deleted from storage or if there are backup file corrupted, or break in log chain.  
  

  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```tsql  
EXEC managed_backup.sp_backup_master_switch   
                     [@state = ] { 0 | 1}  
```  
  
##  <a name="Arguments"></a> Arguments  
 @state  
 Set the state of [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)]. The @state parameter is **BIT**. When set to a value of 0 the operations are paused, and when set to a value of 1 the operation resume.  
  
## Return Code Value  
 0 (success) or 1 (failure)  
  
## Security  
 Describes security issues related to the statement.Include Permissions as a subsection (H3 heading). Consider including other subsections for Ownership Chaining and Auditing if appropriate.  
  
### Permissions  
 Requires membership in **db_backupoperator** database role, with **ALTER ANY CREDENTIAL** permissions, and **EXECUTE** permissions on **sp_delete_backuphistory**stored procedure.  
  
## Examples  
 The following example can be used to pause [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)] on the instance it is executed on:  
  
```  
Use msdb;  
GO  
EXEC managed_backup.sp_master_switch @state=0;  
Go  
  
```  
  
 The following example can be used to resume [!INCLUDE[ss_smartbackup](../../../relational-databases/backup-restore/includes/ss-smartbackup-md.md)].  
  
```  
Use msdb;  
GO  
EXEC managed_backup.sp_master_switch @state=1;  
Go  
  
```  
  
## See Also  
 [SQL Server Managed Backup to Microsoft Azure](../../../relational-databases/backup-restore/sql-server-managed-backup-to-microsoft-azure.md)  
  
  