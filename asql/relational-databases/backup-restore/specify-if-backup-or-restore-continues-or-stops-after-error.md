---
title: "Specify Whether a Backup or Restore Operation Continues or Stops After Encountering an Error (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-backup-restore"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "errors [SQL Server], backups"
  - "backing up databases [SQL Server], errors"
  - "backups [SQL Server], errors"
  - "database backups [SQL Server], errors"
ms.assetid: 042be17a-b9b0-4629-b6bb-b87a8bc6c316
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
---
# Specify If Backup or Restore Continues or Stops After Error
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic describes how to specify whether a backup or restore operation continues or stops after encountering an error in [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To specify whether a backup or restore operation continues after encountering an error, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 BACKUP  
 BACKUP DATABASE and BACKUP LOG permissions default to members of the **sysadmin** fixed server role and the **db_owner** and **db_backupoperator** fixed database roles.  
  
 Ownership and permission problems on the backup device's physical file can interfere with a backup operation. [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] must be able to read and write to the device; the account under which the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] service runs must have write permissions. However, [sp_addumpdevice](../../relational-databases/reference/system-stored-procedures/sp-addumpdevice-transact-sql.md), which adds an entry for a backup device in the system tables, does not check file access permissions. Such problems on the backup device's physical file may not appear until the physical resource is accessed when the backup or restore is attempted.  
  
 RESTORE  
 If the database being restored does not exist, the user must have CREATE DATABASE permissions to be able to execute RESTORE. If the database exists, RESTORE permissions default to members of the **sysadmin** and **dbcreator** fixed server roles and the owner (**dbo**) of the database (for the FROM DATABASE_SNAPSHOT option, the database always exists).  
  
 RESTORE permissions are given to roles in which membership information is always readily available to the server. Because fixed database role membership can be checked only when the database is accessible and undamaged, which is not always the case when RESTORE is executed, members of the **db_owner** fixed database role do not have RESTORE permissions.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To specify whether backup continues or stops after an error is encountered  
  
1.  Follow the steps to [create a database backup](../../relational-databases/backup-restore/create-a-full-database-backup-sql-server.md).  
  
2.  On the **Options** page, in the **Reliability** section, click **Perform checksum before writing to media** and **Continue on error**.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To specify whether a backup operation continues or stops after encountering an error  
  
1.  Connect to the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  In the [BACKUP](../../t-sql/statements/backup-transact-sql.md) statement, specify the CONTINUE_AFTER ERROR option to continue or the STOP_ON_ERROR option to stop. The default behavior is to stop after encountering an error. This example instructs the backup operation to continue despite encountering an error.  
  
```tsql  
BACKUP DATABASE AdventureWorks2012   
 TO DISK = 'Z:\SQLServerBackups\AdvWorksData.bak'  
   WITH CHECKSUM, CONTINUE_AFTER_ERROR;  
GO  
```  
  
#### To specify whether a restore operation continues or stops after encountering an error  
  
1.  Connect to the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  In the [RESTORE](../../t-sql/statements/restore-statements-transact-sql.md) statement, specify the CONTINUE_AFTER ERROR option to continue or the STOP_ON_ERROR option to stop. The default behavior is to stop after encountering an error. This example instructs the restore operation to continue despite encountering an error.  
  
```tsql  
RESTORE DATABASE AdventureWorks2012   
 FROM DISK = 'Z:\SQLServerBackups\AdvWorksData.bak'   
   WITH CHECKSUM, CONTINUE_AFTER_ERROR;  
GO  
```  
  
## See Also  
 [RESTORE FILELISTONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-filelistonly-transact-sql.md)   
 [RESTORE HEADERONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-headeronly-transact-sql.md)   
 [RESTORE LABELONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-labelonly-transact-sql.md)   
 [RESTORE VERIFYONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-verifyonly-transact-sql.md)   
 [BACKUP &#40;Transact-SQL&#41;](../../t-sql/statements/backup-transact-sql.md)   
 [backupset &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupset-transact-sql.md)   
 [RESTORE Arguments &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-arguments-transact-sql.md)   
 [Possible Media Errors During Backup and Restore &#40;SQL Server&#41;](../../relational-databases/backup-restore/possible-media-errors-during-backup-and-restore-sql-server.md)   
 [Enable or Disable Backup Checksums During Backup or Restore &#40;SQL Server&#41;](../../relational-databases/backup-restore/enable-or-disable-backup-checksums-during-backup-or-restore-sql-server.md)  
  
  