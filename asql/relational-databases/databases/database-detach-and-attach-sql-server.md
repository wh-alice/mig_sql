---
title: "Database Detach and Attach (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "upgrading databases"
  - "databases [SQL Server], detaching"
  - "detach database [SQL Server]"
  - "databases [SQL Server], attaching"
  - "removing databases"
  - "transaction logs [SQL Server], detaching"
  - "databases [SQL Server], removing"
  - "restoring [SQL Server], attached databases"
  - "transaction logs [SQL Server], attaching"
  - "differential backups, after detaching"
  - "moving databases"
  - "attach database [SQL Server]"
  - "detaching databases [SQL Server]"
  - "differential base [SQL Server]"
  - "attaching databases [SQL Server]"
  - "databases [SQL Server], moving"
ms.assetid: d0de0639-bc54-464e-98b1-6af22a27eb86
caps.latest.revision: 98
ms.author: "jhubbard"
manager: "jhubbard"
---
# Database Detach and Attach (SQL Server)
  The data and transaction log files of a database can be detached and then reattached to the same or another instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. Detaching and attaching a database is useful if you want to change the database to a different instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] on the same computer or to move the database.  
  
  
##  <a name="Security"></a> Security  
 File access permissions are set during a number of database operations, including detaching or attaching a database.  
  
> [!IMPORTANT]  
>  We recommend that you do not attach or restore databases from unknown or untrusted sources. Such databases could contain malicious code that might execute unintended [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] code or cause errors by modifying the schema or the physical database structure. Before you use a database from an unknown or untrusted source, run [DBCC CHECKDB](../../t-sql/database-console-commands/dbcc-checkdb-transact-sql.md) on the database on a nonproduction server and also examine the code, such as stored procedures or other user-defined code, in the database.  
  
##  <a name="DetachDb"></a> Detaching a Database  
 Detaching a database removes it from the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] but leaves the database intact within its data files and transaction log files. These files can then be used to attach the database to any instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], including the server from which the database was detached.  
  
 You cannot detach a database if any of the following are true:  
  
-   The database is replicated and published. If replicated, the database must be unpublished. Before you can detach it, you must disable publishing by running [sp_replicationdboption](../../relational-databases/reference/system-stored-procedures/sp-replicationdboption-transact-sql.md).  
  
    > [!NOTE]  
    >  If you cannot use **sp_replicationdboption**, you can remove replication by running [sp_removedbreplication](../../relational-databases/reference/system-stored-procedures/sp-removedbreplication-transact-sql.md).  
  
-   A database snapshot exists on the database.  
  
     Before you can detach the database, you must drop all of its snapshots. For more information, see [Drop a Database Snapshot &#40;Transact-SQL&#41;](../../relational-databases/databases/drop-a-database-snapshot-transact-sql.md).  
  
    > [!NOTE]  
    >  A database snapshot cannot be detached or attached.  
  
-   The database is being mirrored in a database mirroring session.  
  
     The database cannot be detached unless the session is terminated. For more information, see [Removing Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/removing-database-mirroring-sql-server.md).  
  
-   The database is suspect. A suspect database cannot be detached; before you can detach it, you must put it into emergency mode. For more information about how to put a database into emergency mode, see [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md).  
  
-   The database is a system database.  
  
### Backup and Restore and Detach  
 Detaching a read-only database loses information about the differential bases of differential backups. For more information, see [Differential Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/differential-backups-sql-server.md).  
  
### Responding to Detach Errors  
 Errors produced while detaching a database can prevent the database from closing cleanly and the transaction log from being rebuilt. If you receive an error message, perform the following corrective actions:  
  
1.  Reattach all files associated with the database, not just the primary file.  
  
2.  Resolve the problem that caused the error message.  
  
3.  Detach the database again.  
  
##  <a name="AttachDb"></a> Attaching a Database  
 You can attach a copied or detached [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database. When you attach a [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] database that contains full-text catalog files onto a [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] server instance, the catalog files are attached from their previous location along with the other database files, the same as in [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)]. For more information, see [Upgrade Full-Text Search](../../relational-databases/search/upgrade-full-text-search.md).  
  
 When you attach a database, all data files (MDF and NDF files) must be available. If any data file has a different path from when the database was first created or last attached, you must specify the current path of the file.  
  
> [!NOTE]  
>  If the primary data file being attached is read-only, the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] assumes that the database is read-only.  
  
 When an encrypted database is first attached to an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], the database owner must open the master key of the database by executing the following statement: OPEN MASTER KEY DECRYPTION BY PASSWORD = **'***password***'**. We recommend that you enable automatic decryption of the master key by executing the following statement: ALTER MASTER KEY ADD ENCRYPTION BY SERVICE MASTER KEY. For more information, see [CREATE MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-master-key-transact-sql.md) and [ALTER MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-master-key-transact-sql.md).  
  
 The requirement for attaching log files depends partly on whether the database is read-write or read-only, as follows:  
  
-   For a read-write database, you can usually attach a log file in a new location. However, in some cases, reattaching a database requires its existing log files. Therefore, it is important to always keep all the detached log files until the database has been successfully attached without them.  
  
     If a read-write database has a single log file and you do not specify a new location for the log file, the attach operation looks in the old location for the file. If it is found, the old log file is used, regardless of whether the database was shut down cleanly. However, if the old log file is not found and if the database was shut down cleanly and has no active log chain, the attach operation attempts to build a new log file for the database.  
  
-   If the primary data file being attached is read-only, the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] assumes that the database is read-only. For a read-only database, the log file or files must be available at the location specified in the primary file of the database. A new log file cannot be built because [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] cannot update the log location stored in the primary file.  
  
  
###  <a name="Metadata"></a> Metadata Changes on Attaching a Database  
 When a read-only database is detached and then reattached, the backup information about the current differential base is lost. The *differential base* is the most recent full backup of all the data in the database or in a subset of the files or filegroups of the database. Without the base-backup information, the **master** database becomes unsynchronized with the read-only database, so differential backups taken thereafter may provide unexpected results. Therefore, if you are using differential backups with a read-only database, you should establish a new differential base by taking a full backup after you reattach the database. For information about differential backups, see [Differential Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/differential-backups-sql-server.md).  
  
 On attach, database startup occurs. Generally, attaching a database places it in the same state that it was in when it was detached or copied. However, attach-and-detach operations both disable cross-database ownership chaining for the database. For information about how to enable chaining, see [cross db ownership chaining Server Configuration Option](../../database-engine/configure/windows/cross-db-ownership-chaining-server-configuration-option.md). Also, TRUSTWORTHY is set to OFF whenever the database is attached. For information about how to set TRUSTWORTHY to ON, see [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md).  
  
### Backup and Restore and Attach  
 Like any database that is fully or partially offline, a database with restoring files cannot be attached. If you stop the restore sequence, you can attach the database. Then, you can restart the restore sequence.  
  
###  <a name="OtherServerInstance"></a> Attaching a Database to Another Server Instance  
  
> [!IMPORTANT]  
>  A database created by a more recent version of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] cannot be attached in earlier versions.  
  
 When you attach a database onto another server instance, to provide a consistent experience to users and applications, you might have to re-create some or all of the metadata for the database, such as logins and jobs, on the other server instance. For more information, see [Manage Metadata When Making a Database Available on Another Server Instance &#40;SQL Server&#41;](../../relational-databases/databases/manage-metadata-when-making-a-database-available-on-another-server.md).  
  
##  <a name="RelatedTasks"></a> Related Tasks  
 **To detach a database**  
  
-   [sp_detach_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-detach-db-transact-sql.md)  
  
-   [Detach a Database](../../relational-databases/databases/detach-a-database.md)  
  
 **To attach a database**  
  
-   [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md)  
  
-   [Attach a Database](../../relational-databases/databases/attach-a-database.md)  
  
-   [sp_attach_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-attach-db-transact-sql.md)  
  
-   [sp_attach_single_file_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-attach-single-file-db-transact-sql.md)  
  
 **To upgrade a database using detach and attach operations**  
  
-   [Upgrade a Database Using Detach and Attach &#40;Transact-SQL&#41;](../../relational-databases/databases/upgrade-a-database-using-detach-and-attach-transact-sql.md)  
  
 **To move a database using detach and attach operations**  
  
-   [Move a Database Using Detach and Attach &#40;Transact-SQL&#41;](../../relational-databases/databases/move-a-database-using-detach-and-attach-transact-sql.md)  
  
 **To delete a database snapshot**  
  
-   [Drop a Database Snapshot &#40;Transact-SQL&#41;](../../relational-databases/databases/drop-a-database-snapshot-transact-sql.md)  
  
## See Also  
 [Database Files and Filegroups](../../relational-databases/databases/database-files-and-filegroups.md)  
  
  