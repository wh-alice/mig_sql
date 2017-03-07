---
title: "Restore the master Database (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-backup-restore"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "master database [SQL Server], restoring"
ms.assetid: c83d802c-e84e-4458-b3ca-173d9ba32f73
caps.latest.revision: 42
ms.author: "jhubbard"
manager: "jhubbard"
---
# Restore the master Database (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic explains how to restore the **master** database from a full database backup.  
  
### To restore the master database  
  
1.  Start the server instance in single-user mode.  
  
     For information about how to specify the single-user startup parameter (**-m**), see [Configure Server Startup Options &#40;SQL Server Configuration Manager&#41;](../Topic/Configure%20Server%20Startup%20Options%20\(SQL%20Server%20Configuration%20Manager\).md).  
  
2.  To restore a full database backup of **master**, use the following [RESTORE DATABASE](../Topic/RESTORE%20\(Transact-SQL\).md)[!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement:  
  
     `RESTORE DATABASE master FROM`  *<backup_device>*  `WITH REPLACE`  
  
     The REPLACE option instructs [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to restore the specified database even when a database of the same name already exists. The existing database, if any, is deleted. In single-user mode, we recommend that you enter the RESTORE DATABASE statement in the [sqlcmd utility](../../tools/sqlcmd-utility.md). For more information, see [Use the sqlcmd Utility](../Topic/Use%20the%20sqlcmd%20Utility.md).  
  
    > [!IMPORTANT]  
    >  After **master** is restored, the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] shuts down and terminates the **sqlcmd** process. Before you restart the server instance, remove the single-user startup parameter. For more information, see [Configure Server Startup Options &#40;SQL Server Configuration Manager&#41;](../Topic/Configure%20Server%20Startup%20Options%20\(SQL%20Server%20Configuration%20Manager\).md).  
  
3.  Restart the server instance and continue other recovery steps such as restoring other databases, attaching databases, and correcting user mismatches.  
  
## Example  
 The following example restores the `master` database on the default server instance. The example assumes that the server instance is already running in single-user mode. The example starts `sqlcmd` and executes a `RESTORE DATABASE` statement that restores a full database backup of `master` from a disk device: `Z:\SQLServerBackups\master.bak`.  
  
> [!NOTE]  
>  For a named instance, the **sqlcmd** command must specify the **-S***\<ComputerName>*\\*\<InstanceName>* option.  
  
```  
  
      C:\> sqlcmd  
1> RESTORE DATABASE master FROM DISK = 'Z:\SQLServerBackups\master.bak' WITH REPLACE;  
2> GO  
```  
  
## See Also  
 [Complete Database Restores &#40;Simple Recovery Model&#41;](../../relational-databases/backup-restore/complete-database-restores-simple-recovery-model.md)   
 [Complete Database Restores &#40;Full Recovery Model&#41;](../../relational-databases/backup-restore/complete-database-restores-full-recovery-model.md)   
 [Troubleshoot Orphaned Users &#40;SQL Server&#41;](../../sql-server/failover-clusters/troubleshoot-orphaned-users-sql-server.md)   
 [Database Detach and Attach &#40;SQL Server&#41;](../../relational-databases/databases/database-detach-and-attach-sql-server.md)   
 [Rebuild System Databases](../../relational-databases/databases/rebuild-system-databases.md)   
 [Database Engine Service Startup Options](../../database-engine/configure/windows/database-engine-service-startup-options.md)   
 [SQL Server Configuration Manager](../../relational-databases/sql-server-configuration-manager.md)   
 [Back Up and Restore of System Databases &#40;SQL Server&#41;](../../relational-databases/backup-restore/back-up-and-restore-of-system-databases-sql-server.md)   
 [RESTORE &#40;Transact-SQL&#41;](../Topic/RESTORE%20\(Transact-SQL\).md)   
 [Start SQL Server in Single-User Mode](../../database-engine/configure/windows/start-sql-server-in-single-user-mode.md)  
  
  