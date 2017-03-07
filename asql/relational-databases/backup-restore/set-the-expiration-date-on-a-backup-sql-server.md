---
title: "Set the Expiration Date on a Backup (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-backup-restore"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "backing up databases [SQL Server], expiration dates"
  - "expiration [SQL Server]"
  - "database backups [SQL Server], expiration dates"
ms.assetid: 76e814df-6487-4893-9f09-7759f1863a5c
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# Set the Expiration Date on a Backup (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic describes how to set the expiration date on a backup in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To set the expiration date on a backup, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 BACKUP DATABASE and BACKUP LOG permissions default to members of the **sysadmin** fixed server role and the **db_owner** and **db_backupoperator** fixed database roles.  
  
 Ownership and permission problems on the backup device's physical file can interfere with a backup operation. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must be able to read and write to the device; the account under which the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service runs must have write permissions. However, [sp_addumpdevice](../../relational-databases/system-stored-procedures/sp-addumpdevice-transact-sql.md), which adds an entry for a backup device in the system tables, does not check file access permissions. Such problems on the backup device's physical file may not appear until the physical resource is accessed when the backup or restore is attempted.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To set the expiration date on a backup  
  
1.  After connecting to the appropriate instance of the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)], in Object Explorer, click the server name to expand the server tree.  
  
2.  Expand **Databases**, and, depending on the database, either select a user database or expand **System Databases** and select a system database.  
  
3.  Right-click the database, point to **Tasks**, and then click **Back Up**. The **Back Up Database** dialog box appears.  
  
4.  On the **General** page, for **Backup set will expire**, specify an expiration date to indicate when the backup set can be overwritten by another backup:  
  
    -   To have the backup set expire after a specific number of days, click **After** (the default option), and enter the number of days after set creation that the set will expire. This value can be from 0 to 99999 days; a value of 0 days means that the backup set will never expire.  
  
         The default value is set in the **Default backup media retention (in days)** option of the **Server Properties** dialog box (**Database Settings** page). To access this, right-click the server name in Object Explorer and select properties; then select the **Database Settings** page.  
  
    -   To have the backup set expire on a specific date, click **On**, and enter the date on which the set will expire.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To set the expiration date on a backup  
  
1.  Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  In the [BACKUP](../../t-sql/statements/backup-transact-sql.md) statement, specify either the EXPIREDATE or RETAINDAYS option to determine when the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] can overwrite the backup. If neither option is specified, the expiration date is determined by the [media retention](../../database-engine/configure/windows/configure-the-media-retention-server-configuration-option.md) server configuration setting. This example uses the `EXPIREDATE` option to specify an expiration date of June 30, 2015 (`6/30/2015`).  
  
```tsql  
USE AdventureWorks2012;  
GO  
BACKUP DATABASE AdventureWorks2012  
 TO DISK = 'Z:\SQLServerBackups\AdventureWorks2012.Bak'  
   WITH EXPIREDATE = '6/30/2015' ;  
GO  
```  
  
## See Also  
 [Create a Full Database Backup &#40;SQL Server&#41;](../../relational-databases/backup-restore/create-a-full-database-backup-sql-server.md)   
 [Back Up Files and Filegroups &#40;SQL Server&#41;](../../relational-databases/backup-restore/back-up-files-and-filegroups-sql-server.md)   
 [Back Up a Transaction Log &#40;SQL Server&#41;](../../relational-databases/backup-restore/back-up-a-transaction-log-sql-server.md)   
 [Create a Differential Database Backup &#40;SQL Server&#41;](../../relational-databases/backup-restore/create-a-differential-database-backup-sql-server.md)  
  
  