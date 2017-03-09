---
title: "BACKUP (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-26"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "BACKUP_TSQL"
  - "BACKUP"
  - "BACKUP_DATABASE_TSQL"
  - "BACKUP_LOG_TSQL"
  - "BACKUP LOG"
  - "BACKUP DATABASE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "backup media [SQL Server], BACKUP statement"
  - "backing up filegroups [SQL Server]"
  - "backup file formats [SQL Server]"
  - "backups [SQL Server]"
  - "database backups [SQL Server], BACKUP statement"
  - "multifamily media sets [SQL Server]"
  - "mirrored media sets [SQL Server]"
  - "backing up files [SQL Server]"
  - "backup sets [SQL Server], BACKUP statement"
  - "backup compression [SQL Server], BACKUP statement"
  - "BACKUP statement"
  - "backups [SQL Server], BACKUP statement"
  - "backup history tables [SQL Server]"
  - "transaction log backups [SQL Server], BACKUP LOG statement"
  - "READ_WRITE_FILEGROUPS option"
  - "BACKUP DATABASE statement"
  - "concurrency [SQL Server], backups"
  - "backing up databases [SQL Server]"
  - "passwords [SQL Server], backups"
  - "security [SQL Server], backups"
  - "media families [SQL Server]"
  - "BACKUP LOG statement"
  - "backing up transaction logs [SQL Server]"
  - "stripe sets [SQL Server]"
  - "cross-platform backups"
ms.assetid: 89a4658a-62f1-4289-8982-f072229720a1
caps.latest.revision: 275
ms.author: "jhubbard"
manager: "jhubbard"
---
# BACKUP (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Backs up a complete [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database to create a database backup, or one or more files or filegroups of the database to create a file backup (BACKUP DATABASE). Also, under the full recovery model or bulk-logged recovery model, backs up the transaction log of the database to create a log backup (BACKUP LOG).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
Backing Up a Whole Database   
BACKUP DATABASE { database_name | @database_name_var }   
  TO <backup_device> [ ,...n ]   
  [ <MIRROR TO clause> ] [ next-mirror-to ]  
  [ WITH { DIFFERENTIAL | <general_WITH_options> [ ,...n ] } ]  
[;]  
  
Backing Up Specific Files or Filegroups  
BACKUP DATABASE { database_name | @database_name_var }   
 <file_or_filegroup> [ ,...n ]   
  TO <backup_device> [ ,...n ]   
  [ <MIRROR TO clause> ] [ next-mirror-to ]  
  [ WITH { DIFFERENTIAL | <general_WITH_options> [ ,...n ] } ]  
[;]  
  
Creating a Partial Backup  
BACKUP DATABASE { database_name | @database_name_var }   
 READ_WRITE_FILEGROUPS [ , <read_only_filegroup> [ ,...n ] ]  
  TO <backup_device> [ ,...n ]   
  [ <MIRROR TO clause> ] [ next-mirror-to ]  
  [ WITH { DIFFERENTIAL | <general_WITH_options> [ ,...n ] } ]  
[;]  
  
Backing Up the Transaction Log (full and bulk-logged recovery models)  
BACKUP LOG { database_name | @database_name_var }   
  TO <backup_device> [ ,...n ]   
  [ <MIRROR TO clause> ] [ next-mirror-to ]  
  [ WITH { <general_WITH_options> | <log-specific_optionspec> } [ ,...n ] ]  
[;]  
  
<backup_device>::=   
 {  
   { logical_device_name | @logical_device_name_var }   
 | { DISK | TAPE | URL} =   
     { 'physical_device_name' | @physical_device_name_var }  
 }   
  
<MIRROR TO clause>::=  
 MIRROR TO <backup_device> [ ,...n ]  
  
<file_or_filegroup>::=  
 {  
   FILE = { logical_file_name | @logical_file_name_var }   
 | FILEGROUP = { logical_filegroup_name | @logical_filegroup_name_var }  
 }   
  
<read_only_filegroup>::=  
FILEGROUP = { logical_filegroup_name | @logical_filegroup_name_var }  
  
<general_WITH_options> [ ,...n ]::=   
--Backup Set Options  
   COPY_ONLY   
 | { COMPRESSION | NO_COMPRESSION }   
 | DESCRIPTION = { 'text' | @text_variable }   
 | NAME = { backup_set_name | @backup_set_name_var }   
 | CREDENTIAL  
 | ENCRYPTION  
 | FILE_SNAPSHOT  
 | { EXPIREDATE = { 'date' | @date_var }   
        | RETAINDAYS = { days | @days_var } }   
  
--Media Set Options  
   { NOINIT | INIT }   
 | { NOSKIP | SKIP }   
 | { NOFORMAT | FORMAT }   
 | MEDIADESCRIPTION = { 'text' | @text_variable }   
 | MEDIANAME = { media_name | @media_name_variable }   
 | BLOCKSIZE = { blocksize | @blocksize_variable }   
  
--Data Transfer Options  
   BUFFERCOUNT = { buffercount | @buffercount_variable }   
 | MAXTRANSFERSIZE = { maxtransfersize | @maxtransfersize_variable }  
  
--Error Management Options  
   { NO_CHECKSUM | CHECKSUM }  
 | { STOP_ON_ERROR | CONTINUE_AFTER_ERROR }  
  
--Compatibility Options  
   RESTART   
  
--Monitoring Options  
   STATS [ = percentage ]   
  
--Tape Options  
   { REWIND | NOREWIND }   
 | { UNLOAD | NOUNLOAD }   
  
--Log-specific Options  
   { NORECOVERY | STANDBY = undo_file_name }  
 | NO_TRUNCATE  
  
--Encryption Options  
 ENCRYPTION (ALGORITHM = { AES_128 | AES_192 | AES_256 | TRIPLE_DES_3KEY } , encryptor_options ) <encryptor_options> ::=   
   SERVER CERTIFICATE = Encryptor_Name | SERVER ASYMMETRIC KEY = Encryptor_Name   
```  
  
## Arguments  
 DATABASE  
 Specifies a complete database backup. If a list of files and filegroups is specified, only those files and filegroups are backed up. During a full or differential database backup, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] backs up enough of the transaction log to produce a consistent database when the backup is restored.  
  
 When you restore a backup created by BACKUP DATABASE (a *data backup*), the entire backup is restored. Only a log backup can be restored to a specific time or transaction within the backup.  
  
> [!NOTE]  
>  Only a full database backup can be performed on the **master** database.  
  
 LOG  
 Specifies a backup of the transaction log only. The log is backed up from the last successfully executed log backup to the current end of the log. Before you can create the first log backup, you must create a full backup.  
  
 You can restore a log backup to a specific time or transaction within the backup by specifying WITH STOPAT, STOPATMARK, or STOPBEFOREMARK in your [RESTORE LOG](../../t-sql/statements/restore-statements-transact-sql.md) statement.  
  
> [!NOTE]  
>  After a typical log backup, some transaction log records become inactive, unless you specify WITH NO_TRUNCATE or COPY_ONLY. The log is truncated after all the records within one or more virtual log files become inactive. If the log is not being truncated after routine log backups, something might be delaying log truncation. For more information, see.  
  
 { *database_name*| **@***database_name_var* }  
 Is the database from which the transaction log, partial database, or complete database is backed up. If supplied as a variable (**@***database_name_var*), this name can be specified either as a string constant (**@***database_name_var***=***database name*) or as a variable of character string data type, except for the **ntext** or **text** data types.  
  
> [!NOTE]  
>  The mirror database in a database mirroring partnership cannot be backed up.  
  
 <file_or_filegroup> [ **,**...*n* ]  
 Used only with BACKUP DATABASE, specifies a database file or filegroup to include in a file backup, or specifies a read-only file or filegroup to include in a partial backup.  
  
 FILE **=** { *logical_file_name*| **@***logical_file_name_var* }  
 Is the logical name of a file or a variable whose value equates to the logical name of a file that is to be included in the backup.  
  
 FILEGROUP **=** { *logical_filegroup_name*| **@***logical_filegroup_name_var* }  
 Is the logical name of a filegroup or a variable whose value equates to the logical name of a filegroup that is to be included in the backup. Under the simple recovery model, a filegroup backup is allowed only for a read-only filegroup.  
  
> [!NOTE]  
>  Consider using file backups when the database size and performance requirements make a database backup impractical.  
  
 *n*  
 Is a placeholder that indicates that multiple files and filegroups can be specified in a comma-separated list. The number is unlimited.  
  
 For more information, see: [Full File Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/full-file-backups-sql-server.md) and [Back Up Files and Filegroups &#40;SQL Server&#41;](../../relational-databases/backup-restore/back-up-files-and-filegroups-sql-server.md).  
  
 READ_WRITE_FILEGROUPS [ **,** FILEGROUP = { *logical_filegroup_name*| **@***logical_filegroup_name_var* } [ **,**...*n* ] ]  
 Specifies a partial backup. A partial backup includes all the read/write files in a database: the primary filegroup and any read/write secondary filegroups, and also any specified read-only files or filegroups.  
  
 READ_WRITE_FILEGROUPS  
 Specifies that all read/write filegroups be backed up in the partial backup. If the database is read-only, READ_WRITE_FILEGROUPS includes only the primary filegroup.  
  
> [!IMPORTANT]  
>  Explicitly listing the read/write filegroups by using FILEGROUP instead of READ_WRITE_FILEGROUPS creates a file backup.  
  
 FILEGROUP = { *logical_filegroup_name*| **@***logical_filegroup_name_var* }  
 Is the logical name of a read-only filegroup or a variable whose value equates to the logical name of a read-only filegroup that is to be included in the partial backup. For more information, see "<file_or_filegroup>," earlier in this topic.  
  
 *n*  
 Is a placeholder that indicates that multiple read-only filegroups can be specified in a comma-separated list.  
  
 For more information about partial backups, see [Partial Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/partial-backups-sql-server.md).  
  
 TO <backup_device> [ **,**...*n* ]  
 Indicates that the accompanying set of [backup devices](../../relational-databases/backup-restore/backup-devices-sql-server.md) is either an unmirrored media set or the first of the mirrors within a mirrored media set (for which one or more MIRROR TO clauses are declared).  
  
 <backup_device>  
 Specifies a logical or physical backup device to use for the backup operation.  
  
 { *logical_device_name* | **@***logical_device_name_var* }  
 Is the logical name of the backup device to which the database is backed up. The logical name must follow the rules for identifiers. If supplied as a variable (@*logical_device_name_var*), the backup device name can be specified either as a string constant (@*logical_device_name_var***=** logical backup device name) or as a variable of any character string data type except for the **ntext** or **text** data types.  
  
 { DISK | TAPE | URL} **=** { **'***physical_device_name***'** | **@***physical_device_name_var* }  
 Specifies a disk file or tape device, or a Windows Azure Blob storage service. The URL format is used for creating backups to the Windows Azure storage service. For more information and examples, see [SQL Server Backup and Restore with Microsoft Azure Blob Storage Service](../../relational-databases/backup-restore/sql-server-backup-and-restore-with-microsoft-azure-blob-storage-service.md). For a tutorial, see [Tutorial: SQL Server Backup and Restore to Windows Azure Blob Storage Service](../Topic/Tutorial:%20SQL%20Server%20Backup%20and%20Restore%20to%20Windows%20Azure%20Blob%20Storage%20Service.md).  
  
> [!WARNING]  
>  With [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] SP1 CU2 until [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)], you can only backup to a single device when backing up to URL. In order to backup to multiple devices when backing up to URL you must use [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)) and you must use Shared Access Signature (SAS) tokens. For examples creating a Shared Access Signature, see [SQL Server Backup to URL](../../relational-databases/backup-restore/sql-server-backup-to-url.md) and [Simplifying creation of SQL Credentials with Shared Access Signature ( SAS ) tokens on Azure Storage with Powershell](http://blogs.msdn.com/b/sqlcat/archive/2015/03/21/simplifying-creation-sql-credentials-with-shared-access-signature-sas-keys-on-azure-storage-containers-with-powershell.aspx).  
  
||  
|-|  
|**URL:Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] SP1 CU2 through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 A disk device does not have to exist before it is specified in a BACKUP statement. If the physical device exists and the INIT option is not specified in the BACKUP statement, the backup is appended to the device.  
  
 For more information, see [Backup Devices &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-devices-sql-server.md).  
  
> [!NOTE]  
>  The TAPE option will be removed in a future version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.  
  
 *n*  
 Is a placeholder that indicates that up to 64 backup devices may be specified in a comma-separated list.  
  
 MIRROR TO <backup_device> [ **,**...*n* ]  
 Specifies a set of up to three secondary backup devices, each of which will mirror the backups devices specified in the TO clause. The MIRROR TO clause must be specify the same type and number of the backup devices as the TO clause. The maximum number of MIRROR TO clauses is three.  
  
 This option is available only in the Enterprise edition of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!NOTE]  
>  For MIRROR TO = DISK, BACKUP automatically determines the appropriate block size for disk devices. For more information about block size, see "BLOCKSIZE" later in this table.  
  
 <backup_device>  
 See "<backup_device>," earlier in this section.  
  
 *n*  
 Is a placeholder that indicates that up to 64 backup devices may be specified in a comma-separated list. The number of devices in the MIRROR TO clause must equal the number of devices in the TO clause.  
  
 For more information, see "Media Families in Mirrored Media Sets" in the "Remarks" section, later in this topic.  
  
 [ *next-mirror-to* ]  
 Is a placeholder that indicates that a single BACKUP statement can contain up to three MIRROR TO clauses, in addition to the single TO clause.  
  
### WITH Options  
 Specifies options to be used with a backup operation.  
  
 CREDENTIAL  
 Used only when creating a backup to the Windows Azure Blob storage service.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] SP1 CU2 through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 FILE_SNAPSHOT  
 Used to create an Azure snapshot of the database files when all of the SQL Server database files are stored using the Azure Blob storage service. For more information, see [SQL Server Data Files in Microsoft Azure](../../relational-databases/databases/sql-server-data-files-in-microsoft-azure.md). [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Snapshot Backup takes Azure snapshots of the database files (data and log files) at a consistent state. A consistent set of Azure snapshots make up a backup and are recorded in the backup file. The only difference between **BACKUP DATABASE TO URL WITH FILE_SNAPSHOT** and **BACKUP LOG TO URL WITH FILE_SNAPSHOT** is that the latter also truncates the transaction log while the former does not. With [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Snapshot Backup, after the initial full backup that is required by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to establish the backup chain, only a single transaction log backup is required to restore a database to the point in time of the transaction log backup. Furthermore, only two transaction log backups are required to restore a database to a point in time between the time of the two transaction log backups.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 DIFFERENTIAL  
 Used only with BACKUP DATABASE, specifies that the database or file backup should consist only of the portions of the database or file changed since the last full backup. A differential backup usually takes up less space than a full backup. Use this option so that all individual log backups performed since the last full backup do not have to be applied.  
  
> [!NOTE]  
>  By default, BACKUP DATABASE creates a full backup.  
  
 For more information, see [Differential Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/differential-backups-sql-server.md).  
  
 ENCRYPTION  
 Used to specify encryption for a backup. You can specify an encryption algorithm to encrypt the backup with or specify ‘NO_ENCRYPION’ to not have the backup encrypted. Encryption is recommended practice to help secure backup files. The list of algorithms you can specify are:  
  
-   AES_128  
  
-   AES_192  
  
-   AES_256  
  
-   TRIPLE_DES_3KEY  
  
-   NO_ENCRYPTION  
  
 If you choose to encrypt you will also have to specify the encryptor using the encryptor options:  
  
-   SERVER CERTIFICATE = Encryptor_Name  
  
-   SERVER ASYMMETRIC KEY = Encryptor_Name  
  
    > [!WARNING]  
    >  When encryption is used in conjunction with the FILE_SNAPSHOT argument, the metadata file itself is encrypted using the specified encryption algorithm and the system verifies that TDE was completed for the database. No additional encryption happens for the data itself. The backup will fail if the database was not encrypted or if the encryption was not completed before the backup statement was issued.  
  
 **Backup Set Options**  
  
 These options operate on the backup set that is created by this backup operation.  
  
> [!NOTE]  
>  To specify a backup set for a restore operation, use the FILE **=***<backup_set_file_number>* option. For more information about how to specify a backup set, see "Specifying a Backup Set" in [RESTORE Arguments &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-arguments-transact-sql.md).  
  
 COPY_ONLY  
 Specifies that the backup is a *copy-only backup*, which does not affect the normal sequence of backups. A copy-only backup is created independently of your regularly scheduled, conventional backups. A copy-only backup does not affect your overall backup and restore procedures for the database.  
  
 Copy-only backups should be used in situations in which a backup is taken for a special purpose, such as backing up the log before an online file restore. Typically, a copy-only log backup is used once and then deleted.  
  
-   When used with BACKUP DATABASE, the COPY_ONLY option creates a full backup that cannot serve as a differential base. The differential bitmap is not updated, and differential backups behave as if the copy-only backup does not exist. Subsequent differential backups use the most recent conventional full backup as their base.  
  
    > [!IMPORTANT]  
    >  If DIFFERENTIAL and COPY_ONLY are used together, COPY_ONLY is ignored, and a differential backup is created.  
  
-   When used with BACKUP LOG, the COPY_ONLY option creates a *copy-only log backup*, which does not truncate the transaction log. The copy-only log backup has no effect on the log chain, and other log backups behave as if the copy-only backup does not exist.  
  
 For more information, see [Copy-Only Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/copy-only-backups-sql-server.md).  
  
 { COMPRESSION | NO_COMPRESSION }  
 In [!INCLUDE[ssEnterpriseEd10](../../analysis-services/data-mining/includes/ssenterpriseed10-md.md)] and later versions only, specifies whether [backup compression](../../relational-databases/backup-restore/backup-compression-sql-server.md) is performed on this backup, overriding the server-level default.  
  
 At installation, the default behavior is no backup compression. But this default can be changed by setting the [backup compression default](../../database-engine/configure/windows/view-or-configure-the-backup-compression-default-server-configuration-option.md) server configuration option. For information about viewing the current value of this option, see [View or Change Server Properties &#40;SQL Server&#41;](../../database-engine/configure/windows/view-or-change-server-properties-sql-server.md).  
  
 COMPRESSION  
 Explicitly enables backup compression.  
  
 NO_COMPRESSION  
 Explicitly disables backup compression.  
  
 DESCRIPTION **=** { **'***text***'** | **@***text_variable* }  
 Specifies the free-form text describing the backup set. The string can have a maximum of 255 characters.  
  
 NAME **=** { *backup_set_name*| **@***backup_set_var* }  
 Specifies the name of the backup set. Names can have a maximum of 128 characters. If NAME is not specified, it is blank.  
  
 { EXPIREDATE **='***date***'**| RETAINDAYS **=** *days* }  
 Specifies when the backup set for this backup can be overwritten. If these options are both used, RETAINDAYS takes precedence over EXPIREDATE.  
  
 If neither option is specified, the expiration date is determined by the **mediaretention** configuration setting. For more information, see [Server Configuration Options &#40;SQL Server&#41;](../../database-engine/configure/windows/server-configuration-options-sql-server.md).  
  
> [!IMPORTANT]  
>  These options only prevent [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from overwriting a file. Tapes can be erased using other methods, and disk files can be deleted through the operating system. For more information about expiration verification, see SKIP and FORMAT in this topic.  
  
 EXPIREDATE **=** { **'***date***'**| **@***date_var* }  
 Specifies when the backup set expires and can be overwritten. If supplied as a variable (@*date_var*), this date must follow the configured system **datetime** format and be specified as one of the following:  
  
-   A string constant (@*date_var* **=** date)  
  
-   A variable of character string data type (except for the **ntext** or **text** data types)  
  
-   A **smalldatetime**  
  
-   A **datetime** variable  
  
 For example:  
  
-   `'Dec 31, 2020 11:59 PM'`  
  
-   `'1/1/2021'`  
  
 For information about how to specify **datetime** values, see [Date and Time Types](../../t-sql/data-types/date-and-time-types.md).  
  
> [!NOTE]  
>  To ignore the expiration date, use the SKIP option.  
  
 RETAINDAYS **=** { *days*| **@***days_var* }  
 Specifies the number of days that must elapse before this backup media set can be overwritten. If supplied as a variable (**@***days_var*), it must be specified as an integer.  
  
 **Media Set Options**  
  
 These options operate on the media set as a whole.  
  
 { **NOINIT** | INIT }  
 Controls whether the backup operation appends to or overwrites the existing backup sets on the backup media. The default is to append to the most recent backup set on the media (NOINIT).  
  
> [!NOTE]  
>  For information about the interactions between { **NOINIT** | INIT } and { **NOSKIP** | SKIP }, see "Remarks," later in this topic.  
  
 NOINIT  
 Indicates that the backup set is appended to the specified media set, preserving existing backup sets. If a media password is defined for the media set, the password must be supplied. NOINIT is the default.  
  
 For more information, see [Media Sets, Media Families, and Backup Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/media-sets-media-families-and-backup-sets-sql-server.md).  
  
 INIT  
 Specifies that all backup sets should be overwritten, but preserves the media header. If INIT is specified, any existing backup set on that device is overwritten, if conditions permit. By default, BACKUP checks for the following conditions and does not overwrite the backup media if either condition exists:  
  
-   Any backup set has not yet expired. For more information, see the EXPIREDATE and RETAINDAYS options.  
  
-   The backup set name given in the BACKUP statement, if provided, does not match the name on the backup media. For more information, see the NAME option, earlier in this section.  
  
 To override these checks, use the SKIP option.  
  
 For more information, see [Media Sets, Media Families, and Backup Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/media-sets-media-families-and-backup-sets-sql-server.md).  
  
 { **NOSKIP** | SKIP }  
 Controls whether a backup operation checks the expiration date and time of the backup sets on the media before overwriting them.  
  
> [!NOTE]  
>  For information about the interactions between { **NOINIT** | INIT } and { **NOSKIP** | SKIP }, see "Remarks," later in this topic.  
  
 NOSKIP  
 Instructs the BACKUP statement to check the expiration date of all backup sets on the media before allowing them to be overwritten. This is the default behavior.  
  
 SKIP  
 Disables the checking of backup set expiration and name that is usually performed by the BACKUP statement to prevent overwrites of backup sets. For information about the interactions between { INIT | NOINIT } and { NOSKIP | SKIP }, see "Remarks," later in this topic.  
  
 To view the expiration dates of backup sets, query the **expiration_date** column of the [backupset](../../relational-databases/reference/system-tables/backupset-transact-sql.md) history table.  
  
 { **NOFORMAT** | FORMAT }  
 Specifies whether the media header should be written on the volumes used for this backup operation, overwriting any existing media header and backup sets.  
  
 NOFORMAT  
 Specifies that the backup operation preserves the existing media header and backup sets on the media volumes used for this backup operation. This is the default behavior.  
  
 FORMAT  
 Specifies that a new media set be created. FORMAT causes the backup operation to write a new media header on all media volumes used for the backup operation. The existing contents of the volume become invalid, because any existing media header and backup sets are overwritten.  
  
> [!IMPORTANT]  
>  Use FORMAT carefully. Formatting any volume of a media set renders the entire media set unusable. For example, if you initialize a single tape belonging to an existing striped media set, the entire media set is rendered useless.  
  
 Specifying FORMAT implies SKIP; SKIP does not need to be explicitly stated.  
  
 MEDIADESCRIPTION **=** { *text* | **@***text_variable* }  
 Specifies the free-form text description, maximum of 255 characters, of the media set.  
  
 MEDIANAME **=** { *media_name* | **@***media_name_variable* }  
 Specifies the media name for the entire backup media set. The media name must be no longer than 128 characters, If MEDIANAME is specified, it must match the previously specified media name already existing on the backup volumes. If it is not specified, or if the SKIP option is specified, there is no verification check of the media name.  
  
 BLOCKSIZE **=** { *blocksize* | **@***blocksize_variable* }  
 Specifies the physical block size, in bytes. The supported sizes are 512, 1024, 2048, 4096, 8192, 16384, 32768, and 65536 (64 KB) bytes. The default is 65536 for tape devices and 512 otherwise. Typically, this option is unnecessary because BACKUP automatically selects a block size that is appropriate to the device. Explicitly stating a block size overrides the automatic selection of block size.  
  
 If you are taking a backup that you plan to copy onto and restore from a CD-ROM, specify BLOCKSIZE=2048.  
  
> [!NOTE]  
>  This option typically affects performance only when writing to tape devices.  
  
 **Data Transfer Options**  
  
 BUFFERCOUNT **=** { *buffercount* | **@***buffercount_variable* }  
 Specifies the total number of I/O buffers to be used for the backup operation. You can specify any positive integer; however, large numbers of buffers might cause "out of memory" errors because of inadequate virtual address space in the Sqlservr.exe process.  
  
 The total space used by the buffers is determined by: *buffercount***\****maxtransfersize*.  
  
> [!NOTE]  
>  For important information about using the BUFFERCOUNT option, see the [Incorrect BufferCount data transfer option can lead to OOM condition](http://blogs.msdn.com/b/sqlserverfaq/archive/2010/05/06/incorrect-buffercount-data-transfer-option-can-lead-to-oom-condition.aspx) blog.  
  
 MAXTRANSFERSIZE **=** { *maxtransfersize* | **@***maxtransfersize_variable* }  
 Specifies the largest unit of transfer in bytes to be used between [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the backup media. The possible values are multiples of 65536 bytes (64 KB) ranging up to 4194304 bytes (4 MB).  
  
 **Error Management Options**  
  
 These options allow you to determine whether backup checksums are enabled for the backup operation and whether the operation will stop on encountering an error.  
  
 { **NO_CHECKSUM** | CHECKSUM }  
 Controls whether backup checksums are enabled.  
  
 NO_CHECKSUM  
 Explicitly disables the generation of backup checksums (and the validation of page checksums). This is the default behavior.  
  
 CHECKSUM  
 Specifies that the backup operation will verify each page for checksum and torn page, if enabled and available, and generate a checksum for the entire backup.  
  
 Using backup checksums may affect workload and backup throughput.  
  
 For more information, see [Possible Media Errors During Backup and Restore &#40;SQL Server&#41;](../../relational-databases/backup-restore/possible-media-errors-during-backup-and-restore-sql-server.md).  
  
 { **STOP_ON_ERROR** | CONTINUE_AFTER_ERROR }  
 Controls whether a backup operation stops or continues after encountering a page checksum error.  
  
 STOP_ON_ERROR  
 Instructs BACKUP to fail if a page checksum does not verify. This is the default behavior.  
  
 CONTINUE_AFTER_ERROR  
 Instructs BACKUP to continue despite encountering errors such as invalid checksums or torn pages.  
  
 If you are unable to back up the tail of the log using the NO_TRUNCATE option when the database is damaged, you can attempt a [tail-log log backup](../../relational-databases/backup-restore/tail-log-backups-sql-server.md) by specifying CONTINUE_AFTER_ERROR instead of NO_TRUNCATE.  
  
 For more information, see [Possible Media Errors During Backup and Restore &#40;SQL Server&#41;](../../relational-databases/backup-restore/possible-media-errors-during-backup-and-restore-sql-server.md).  
  
 **Compatibility Options**  
  
 RESTART  
 Beginning with [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)], has no effect. This option is accepted by the version for compatibility with previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 **Monitoring Options**  
  
 STATS [ **=***percentage* ]  
 Displays a message each time another *percentage* completes, and is used to gauge progress. If *percentage* is omitted, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] displays a message after each 10 percent is completed.  
  
 The STATS option reports the percentage complete as of the threshold for reporting the next interval. This is at approximately the specified percentage; for example, with STATS=10, if the amount completed is 40 percent, the option might display 43 percent. For large backup sets, this is not a problem, because the percentage complete moves very slowly between completed I/O calls.  
  
 **Tape Options**  
  
 These options are used only for TAPE devices. If a nontape device is being used, these options are ignored.  
  
 { **REWIND** | NOREWIND }  
 REWIND  
 Specifies that [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will release and rewind the tape. REWIND is the default.  
  
 NOREWIND  
 Specifies that [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will keep the tape open after the backup operation. You can use this option to help improve performance when performing multiple backup operations to a tape.  
  
 NOREWIND implies NOUNLOAD, and these options are incompatible within a single BACKUP statement.  
  
> [!NOTE]  
>  If you use NOREWIND, the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] retains ownership of the tape drive until a BACKUP or RESTORE statement that is running in the same process uses either the REWIND or UNLOAD option, or the server instance is shut down. Keeping the tape open prevents other processes from accessing the tape. For information about how to display a list of open tapes and to close an open tape, see [Backup Devices &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-devices-sql-server.md).  
  
 { **UNLOAD** | NOUNLOAD }  
 > [!NOTE]  
>  UNLOAD/NOUNLOAD is a session setting that persists for the life of the session or until it is reset by specifying the alternative.  
  
 UNLOAD  
 Specifies that the tape is automatically rewound and unloaded when the backup is finished. UNLOAD is the default when a session begins.  
  
 NOUNLOAD  
 Specifies that after the BACKUP operation the tape will remain loaded on the tape drive.  
  
> [!NOTE]  
>  For a backup to a tape backup device, the BLOCKSIZE option to affect the performance of the backup operation. This option typically affects performance only when writing to tape devices.  
  
 **Log-specific Options**  
  
 These options are only used with BACKUP LOG.  
  
> [!NOTE]  
>  If you do not want to take log backups, use the simple recovery model. For more information, see [Recovery Models &#40;SQL Server&#41;](../../relational-databases/backup-restore/recovery-models-sql-server.md).  
  
 { NORECOVERY | STANDBY **=***undo_file_name* }  
 NORECOVERY  
 Backs up the tail of the log and leaves the database in the RESTORING state. NORECOVERY is useful when failing over to a secondary database or when saving the tail of the log before a RESTORE operation.  
  
 To perform a best-effort log backup that skips log truncation and then take the database into the RESTORING state atomically, use the NO_TRUNCATE and NORECOVERY options together.  
  
 STANDBY **=***standby_file_name*  
 Backs up the tail of the log and leaves the database in a read-only and STANDBY state. The STANDBY clause writes standby data (performing rollback, but with the option of further restores). Using the STANDBY option is equivalent to BACKUP LOG WITH NORECOVERY followed by a RESTORE WITH STANDBY.  
  
 Using standby mode requires a standby file, specified by *standby_file_name*, whose location is stored in the log of the database. If the specified file already exists, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] overwrites it; if the file does not exist, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] creates it. The standby file becomes part of the database.  
  
 This file holds the rolled back changes, which must be reversed if RESTORE LOG operations are to be subsequently applied. There must be enough disk space for the standby file to grow so that it can contain all the distinct pages from the database that were modified by rolling back uncommitted transactions.  
  
 NO_TRUNCATE  
 Specifies that the log not be truncated and causes the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] to attempt the backup regardless of the state of the database. Consequently, a backup taken with NO_TRUNCATE might have incomplete metadata. This option allows backing up the log in situations where the database is damaged.  
  
 The NO_TRUNCATE option of BACKUP LOG is equivalent to specifying both COPY_ONLY and CONTINUE_AFTER_ERROR.  
  
 Without the NO_TRUNCATE option, the database must be in the ONLINE state. If the database is in the SUSPENDED state, you might be able to create a backup by specifying NO_TRUNCATE. But if the database is in the OFFLINE or EMERGENCY state, BACKUP is not allowed even with NO_TRUNCATE. For information about database states, see [Database States](../../relational-databases/databases/database-states.md).  
  
## About Working with SQL Server Backups  
 This section introduces the following essential backup concepts:  
  
 [Backup Types](#Backup_Types)  
  
 [Transaction Log Truncation](#Tlog_Truncation)  
  
 [Formatting Backup Media](#Formatting_Media)  
  
 [Working with Backup Devices and Media Sets](#Backup_Devices_and_Media_Sets)  
  
 [Restoring SQL Server Backups](#Restoring_Backups)  
  
> [!NOTE]  
>  For an introduction to backup in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Backup Overview &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-overview-sql-server.md).  
  
###  <a name="Backup_Types"></a> Backup Types  
 The supported backup types depend on the recovery model of the database, as follows  
  
-   All recovery models support full and differential backups of data.  
  
    |Scope of backup|Backup types|  
    |---------------------|------------------|  
    |Whole database|[Database backups](../../relational-databases/backup-restore/full-database-backups-sql-server.md) cover the whole database.<br /><br /> Optionally, each database backup can serve as the base of a series of one or more [differential database backups](../../relational-databases/backup-restore/differential-backups-sql-server.md).|  
    |Partial database|[Partial backups](../../relational-databases/backup-restore/partial-backups-sql-server.md) cover read/-write filegroups and, possibly, one or more read-only files or filegroups.<br /><br /> Optionally, each partial backup can serve as the base of a series of one or more [differential partial backups](../../relational-databases/backup-restore/differential-backups-sql-server.md).|  
    |File or filegroup|[File backups](../../relational-databases/backup-restore/full-file-backups-sql-server.md) cover one or more files or filegroups, and are relevant only for databases that contain multiple filegroups. Under the simple recovery model, file backups are essentially restricted to read-only secondary filegroups.<br /><br /> Optionally, each file backup can serve as the base of a series of one or more [differential file backups](../../relational-databases/backup-restore/differential-backups-sql-server.md).|  
  
-   Under the full recovery model or bulk-logged recovery model, conventional backups also include sequential *transaction log backups* (or *log backups*), which are required. Each log backup covers the portion of the transaction log that was active when the backup was created, and it includes all log records not backed up in a previous log backup.  
  
     To minimize work-loss exposure, at the cost of administrative overhead, you should schedule frequent log backups. Scheduling differential backups between full backups can reduce restore time by reducing the number of log backups you have to restore after restoring the data.  
  
     We recommend that you put log backups on a separate volume than the database backups.  
  
    > [!NOTE]  
    >  Before you can create the first log backup, you must create a full backup.  
  
-   A *copy-only backup* is a special-purpose full backup or log backup that is independent of the normal sequence of conventional backups. To create a copy-only backup, specify the COPY_ONLY option in your BACKUP statement. For more information, see [Copy-Only Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/copy-only-backups-sql-server.md).  
  
###  <a name="Tlog_Truncation"></a> Transaction Log Truncation  
 To avoid filling up the transaction log of a database, routine backups are essential. Under the simple recovery model, log truncation occurs automatically after you back up the database, and under the full recovery model, after you back up the transaction log. However, sometimes the truncation process can be delayed. For information about factors that can delay log truncation, see [The Transaction Log &#40;SQL Server&#41;](../../relational-databases/logs/the-transaction-log-sql-server.md).  
  
> [!NOTE]  
>  The BACKUP LOG WITH NO_LOG and WITH TRUNCATE_ONLY options have been discontinued. If you are using the full or bulk-logged recovery model recovery and you must remove the log backup chain from a database, switch to the simple recovery model. For more information, see [View or Change the Recovery Model of a Database &#40;SQL Server&#41;](../../relational-databases/backup-restore/view-or-change-the-recovery-model-of-a-database-sql-server.md).  
  
###  <a name="Formatting_Media"></a> Formatting Backup Media  
 Backup media is formatted by a BACKUP statement if and only if any of the following is true:  
  
-   The FORMAT option is specified.  
  
-   The media is empty.  
  
-   The operation is writing a continuation tape.  
  
###  <a name="Backup_Devices_and_Media_Sets"></a> Working with Backup Devices and Media Sets  
  
#### Backup Devices in a Striped Media Set (a Stripe Set)  
 A *stripe set* is a set of disk files on which data is divided into blocks and distributed in a fixed order. The number of backup devices used in a stripe set must stay the same (unless the media is reinitialized with FORMAT).  
  
 The following example writes a backup of the [!INCLUDE[ssSampleDBUserInputNonLocal](../../integration-services/control-flow/includes/sssampledbuserinputnonlocal-md.md)] database to a new striped media set that uses three disk files.  
  
```  
BACKUP DATABASE AdventureWorks2012  
TO DISK='X:\SQLServerBackups\AdventureWorks1.bak',   
DISK='Y:\SQLServerBackups\AdventureWorks2.bak',   
DISK='Z:\SQLServerBackups\AdventureWorks3.bak'  
WITH FORMAT,  
   MEDIANAME = 'AdventureWorksStripedSet0',  
   MEDIADESCRIPTION = 'Striped media set for AdventureWorks2012 database;  
GO  
```  
  
 After a backup device is defined as part of a stripe set, it cannot be used for a single-device backup unless FORMAT is specified. Similarly, a backup device that contains nonstriped backups cannot be used in a stripe set unless FORMAT is specified. To split a striped backup set, use FORMAT.  
  
 If neither MEDIANAME nor MEDIADESCRIPTION is specified when a media header is written, the media header field corresponding to the blank item is empty.  
  
#### Working with a Mirrored Media Set  
 Typically, backups are unmirrored, and BACKUP statements simply include a TO clause. However, a total of four mirrors is possible per media set. For a mirrored media set, the backup operation writes to multiple groups of backup devices. Each group of backup devices comprises a single mirror within the mirrored media set. Every mirror must use the same quantity and type of physical backup devices, which must all have the same properties.  
  
 To back up to a mirrored media set, all of the mirrors must be present. To back up to a mirrored media set, specify the TO clause to specify the first mirror, and specify a MIRROR TO clause for each additional mirror.  
  
 For a mirrored media set, each MIRROR TO clause must list the same number and type of devices as the TO clause. The following example writes to a mirrored media set that contains two mirrors and uses three devices per mirror:  
  
```  
BACKUP DATABASE AdventureWorks2012  
TO DISK='X:\SQLServerBackups\AdventureWorks1a.bak',   
DISK='Y:\SQLServerBackups\AdventureWorks2a.bak',   
DISK='Z:\SQLServerBackups\AdventureWorks3a.bak'  
MIRROR TO DISK='X:\SQLServerBackups\AdventureWorks1b.bak',   
DISK='Y:\SQLServerBackups\AdventureWorks2b.bak',   
DISK='Z:\SQLServerBackups\AdventureWorks3b.bak';  
GO  
```  
  
> [!IMPORTANT]  
>  This example is designed to allow you to test it on your local system. In practice, backing up to multiple devices on the same drive would hurt performance and would eliminate the redundancy for which mirrored media sets are designed.  
  
##### Media Families in Mirrored Media Sets  
 Each backup device specified in the TO clause of a BACKUP statement corresponds to a media family. For example, if the TO clauses lists three devices, BACKUP writes data to three media families. In a mirrored media set, every mirror must contain a copy of every media family. This is why the number of devices must be identical in every mirror.  
  
 When multiple devices are listed for each mirror, the order of the devices determines which media family is written to a particular device. For example, in each of the device lists, the second device corresponds to the second media family. For the devices in the above example, the correspondence between devices and media families is shown in the following table.  
  
|Mirror|Media family 1|Media family 2|Media family 3|  
|------------|--------------------|--------------------|--------------------|  
|0|`Z:\AdventureWorks1a.bak`|`Z:\AdventureWorks2a.bak`|`Z:\AdventureWorks3a.bak`|  
|1|`Z:\AdventureWorks1b.bak`|`Z:\AdventureWorks2b.bak`|`Z:\AdventureWorks3b.bak`|  
  
 A media family must always be backed up onto the same device within a specific mirror. Therefore, each time you use an existing media set, list the devices of each mirror in the same order as they were specified when the media set was created.  
  
 For more information about mirrored media sets, see [Mirrored Backup Media Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/mirrored-backup-media-sets-sql-server.md). For more information about media sets and media families in general, see [Media Sets, Media Families, and Backup Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/media-sets-media-families-and-backup-sets-sql-server.md).  
  
###  <a name="Restoring_Backups"></a> Restoring SQL Server Backups  
 To restore a database and, optionally, recover it to bring it online, or to restore a file or filegroup, use either the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] [RESTORE](../../t-sql/statements/restore-statements-transact-sql.md) statement or the [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] **Restore** tasks. For more information see [Restore and Recovery Overview &#40;SQL Server&#41;](../../relational-databases/backup-restore/restore-and-recovery-overview-sql-server.md).  
  
##  <a name="Additional_Considerations"></a> Additional Considerations About BACKUP Options  
  
###  <a name="Interactions_SKIP_etc"></a> Interaction of SKIP, NOSKIP, INIT, and NOINIT  
 This table describes interactions between the { **NOINIT** | INIT } and { **NOSKIP** | SKIP } options.  
  
> [!NOTE]  
>  If the tape media is empty or the disk backup file does not exist, all these interactions write a media header and proceed. If the media is not empty and lacks a valid media header, these operations give feedback stating that this is not valid MTF media, and they terminate the backup operation.  
  
||NOINIT|INIT|  
|------|------------|----------|  
|NOSKIP|If the volume contains a valid media header, verifies that the media name matches the given MEDIANAME, if any. If it matches, appends the backup set, preserving all existing backup sets.<br /><br /> If the volume does not contain a valid media header, an error occurs.|If the volume contains a valid media header, performs the following checks:<br /><br /> -If MEDIANAME was specified, verifies that the given media name matches the media header's media name.**<br /><br /> -Verifies that there are no unexpired backup sets already on the media. If there are, terminates the backup.<br /><br /> If these checks pass, overwrites any backup sets on the media, preserving only the media header.<br /><br /> If the volume does not contain a valid media header, generates one with using specified MEDIANAME and MEDIADESCRIPTION, if any.|  
|SKIP|If the volume contains a valid media header, appends the backup set, preserving all existing backup sets.|If the volume contains a valid* media header, overwrites any backup sets on the media, preserving only the media header.<br /><br /> If the media is empty, generates a media header using the specified MEDIANAME and MEDIADESCRIPTION, if any.|  
  
 *Validity includes the MTF version number and other header information. If the version specified is unsupported or an unexpected value, an error occurs.  
  
 **The user must belong to the appropriate fixed database or server roles to perform a backup operation.  
  
## Compatibility  
  
> [!CAUTION]  
>  Backups that are created by more recent version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cannot be restored in earlier versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 BACKUP supports the RESTART option to provide backward compatibility with earlier versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. But RESTART has no effect.  
  
## General Remarks  
 Database or log backups can be appended to any disk or tape device, allowing a database and its transaction logs to be kept within one physical location.  
  
 The BACKUP statement is not allowed in an explicit or implicit transaction.  
  
 Cross-platform backup operations, even between different processor types, can be performed as long as the collation of the database is supported by the operating system.  
  
> [!NOTE]  
>  By default, every successful backup operation adds an entry in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log and in the system event log. If back up the log very frequently, these success messages accumulate quickly, resulting in huge error logs that can make finding other messages difficult. In such cases you can suppress these log entries by using trace flag 3226 if none of your scripts depend on those entries. For more information, see [Trace Flags &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md).  
  
## Interoperability  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] uses an online backup process to allow a database backup while the database is still in use. During a backup, most operations are possible; for example, INSERT, UPDATE, or DELETE statements are allowed during a backup operation.  
  
 Operations that cannot run during a database or transaction log backup include:  
  
-   File management operations such as the ALTER DATABASE statement with either the ADD FILE or REMOVE FILE options.  
  
-   Shrink database or shrink file operations. This includes auto-shrink operations.  
  
 If a backup operation overlaps with a file-management or shrink operation, a conflict arises. Regardless of which of the conflicting operation began first, the second operation waits for the lock set by the first operation to time out (the time-out period is controlled by a session timeout setting). If the lock is released during the time-out period, the second operation continues. If the lock times out, the second operation fails.  
  
## Metadata  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] includes the following backup history tables that track backup activity:  
  
-   [backupfile &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupfile-transact-sql.md)  
  
-   [backupfilegroup &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupfilegroup-transact-sql.md)  
  
-   [backupmediafamily &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupmediafamily-transact-sql.md)  
  
-   [backupmediaset &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupmediaset-transact-sql.md)  
  
-   [backupset &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupset-transact-sql.md)  
  
 When a restore is performed, if the backup set was not already recorded in the **msdb** database, the backup history tables might be modified.  
  
## Security  
 Beginning with [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)], the **PASSWORD** and **MEDIAPASSWORD** options are discontinued for creating backups. It is still possible to restore backups created with passwords.  
  
### Permissions  
 BACKUP DATABASE and BACKUP LOG permissions default to members of the **sysadmin** fixed server role and the **db_owner** and **db_backupoperator** fixed database roles.  
  
 Ownership and permission problems on the backup device's physical file can interfere with a backup operation. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must be able to read and write to the device; the account under which the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service runs must have write permissions. However, [sp_addumpdevice](../../relational-databases/reference/system-stored-procedures/sp-addumpdevice-transact-sql.md), which adds an entry for a backup device in the system tables, does not check file access permissions. Such problems on the backup device's physical file may not appear until the physical resource is accessed when the backup or restore is attempted.  
  
##  <a name="examples"></a> Examples  
 This section contains the following examples:  
  
-   A. [Backing up a complete database](#backing_up_db)  
  
-   B. [Backing up the database and log](#backing_up_db_and_log)  
  
-   C. [Creating a full file backup of the secondary filegroups](#full_file_backup)  
  
-   D. [Creating a differential file backup of the secondary filegroups](#differential_file_backup)  
  
-   E. [Creating and backing up to a single-family mirrored media set](#create_single_family_mirrored_media_set)  
  
-   F. [Creating and backing up to a multifamily mirrored media set](#create_multifamily_mirrored_media_set)  
  
-   G [Backing up to an existing mirrored media set](#existing_mirrored_media_set)  
  
-   H. [Creating a compressed backup in a new media set](#creating_compressed_backup_new_media_set)  

- I.  [Backing up to the Microsoft Azure Blob storage service](#url)
  
> [!NOTE]  
>  The backup how-to topics contain additional examples. For more information, see [Backup Overview &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-overview-sql-server.md).  
  
###  <a name="backing_up_db"></a> A. Backing up a complete database  
 The following example backs up the [!INCLUDE[ssSampleDBUserInputNonLocal](../../integration-services/control-flow/includes/sssampledbuserinputnonlocal-md.md)] database to a disk file.  
  
```  
BACKUP DATABASE AdventureWorks2012   
 TO DISK = 'Z:\SQLServerBackups\AdvWorksData.bak'  
   WITH FORMAT;  
GO  
```  
  
###  <a name="backing_up_db_and_log"></a> B. Backing up the database and log  
 The following example backups up the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] sample database, which uses the simple recovery model by default. To support log backups, the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database is modified to use the full recovery model.  
  
 Next, the example uses [sp_addumpdevice](../../relational-databases/reference/system-stored-procedures/sp-addumpdevice-transact-sql.md) to create a logical [backup device](../../relational-databases/backup-restore/backup-devices-sql-server.md) for backing up data, `AdvWorksData`, and creates another logical backup device for backing up the log, `AdvWorksLog`.  
  
 The example then creates a full database backup to `AdvWorksData`, and after a period of update activity, backs up the log to `AdvWorksLog`.  
  
```  
-- To permit log backups, before the full database backup, modify the database   
-- to use the full recovery model.  
USE master;  
GO  
ALTER DATABASE AdventureWorks2012  
   SET RECOVERY FULL;  
GO  
-- Create AdvWorksData and AdvWorksLog logical backup devices.   
USE master  
GO  
EXEC sp_addumpdevice 'disk', 'AdvWorksData',   
'Z:\SQLServerBackups\AdvWorksData.bak';  
GO  
EXEC sp_addumpdevice 'disk', 'AdvWorksLog',   
'X:\SQLServerBackups\AdvWorksLog.bak';  
GO  
  
-- Back up the full AdventureWorks2012 database.  
BACKUP DATABASE AdventureWorks2012 TO AdvWorksData;  
GO  
-- Back up the AdventureWorks2012 log.  
BACKUP LOG AdventureWorks2012  
   TO AdvWorksLog;  
GO  
```  
  
> [!NOTE]  
>  For a production database, back up the log regularly. Log backups should be frequent enough to provide sufficient protection against data loss.  
  
###  <a name="full_file_backup"></a> C. Creating a full file backup of the secondary filegroups  
 The following example creates a full file backup of every file in both of the secondary filegroups.  
  
```  
--Back up the files in SalesGroup1:  
BACKUP DATABASE Sales  
   FILEGROUP = 'SalesGroup1',  
   FILEGROUP = 'SalesGroup2'  
   TO DISK = 'Z:\SQLServerBackups\SalesFiles.bck';  
GO  
```  
  
###  <a name="differential_file_backup"></a> D. Creating a differential file backup of the secondary filegroups  
 The following example creates a differential file backup of every file in both of the secondary filegroups.  
  
```  
--Back up the files in SalesGroup1:  
BACKUP DATABASE Sales  
   FILEGROUP = 'SalesGroup1',  
   FILEGROUP = 'SalesGroup2'  
   TO DISK = 'Z:\SQLServerBackups\SalesFiles.bck'  
   WITH   
      DIFFERENTIAL;  
GO  
```  
  
###  <a name="create_single_family_mirrored_media_set"></a> E. Creating and backing up to a single-family mirrored media set  
 The following example creates a mirrored media set containing a single media family and four mirrors and backs up the [!INCLUDE[ssSampleDBUserInputNonLocal](../../integration-services/control-flow/includes/sssampledbuserinputnonlocal-md.md)] database to them.  
  
```  
BACKUP DATABASE AdventureWorks2012  
TO TAPE = '\\.\tape0'  
MIRROR TO TAPE = '\\.\tape1'  
MIRROR TO TAPE = '\\.\tape2'  
MIRROR TO TAPE = '\\.\tape3'  
WITH  
   FORMAT,  
   MEDIANAME = 'AdventureWorksSet0';  
```  
  
###  <a name="create_multifamily_mirrored_media_set"></a> F. Creating and backing up to a multifamily mirrored media set  
 The following example creates a mirrored media set in which each mirror consists of two media families. The example then backs up the [!INCLUDE[ssSampleDBUserInputNonLocal](../../integration-services/control-flow/includes/sssampledbuserinputnonlocal-md.md)] database to both mirrors.  
  
```  
BACKUP DATABASE AdventureWorks2012  
TO TAPE = '\\.\tape0', TAPE = '\\.\tape1'  
MIRROR TO TAPE = '\\.\tape2', TAPE = '\\.\tape3'  
WITH  
   FORMAT,  
   MEDIANAME = 'AdventureWorksSet1';  
```  
  
###  <a name="existing_mirrored_media_set"></a> G. Backing up to an existing mirrored media set  
 The following example appends a backup set to the media set created in the preceding example.  
  
```  
BACKUP LOG AdventureWorks2012  
TO TAPE = '\\.\tape0', TAPE = '\\.\tape1'  
MIRROR TO TAPE = '\\.\tape2', TAPE = '\\.\tape3'  
WITH   
   NOINIT,  
   MEDIANAME = 'AdventureWorksSet1';  
```  
  
> [!NOTE]  
>  NOINIT, which is the default, is shown here for clarity.  
  
###  <a name="creating_compressed_backup_new_media_set"></a> H. Creating a compressed backup in a new media set  
 The following example formats the media, creating a new media set, and perform a compressed full backup of the [!INCLUDE[ssSampleDBUserInputNonLocal](../../integration-services/control-flow/includes/sssampledbuserinputnonlocal-md.md)] database.  
  
```  
BACKUP DATABASE AdventureWorks2012 TO DISK='Z:\SQLServerBackups\AdvWorksData.bak'   
WITH   
   FORMAT,   
   COMPRESSION;  
```  

###  <a name="url"></a> I. Backing up to the Microsoft Azure Blob storage service 
The example performs a full database backup of `Sales` to the Microsoft Azure Blob storage service.  The storage Account name is `mystorageaccount`.  The container is called `myfirstcontainer`.  A stored access policy has been created with read, write, delete, and list rights.  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] credential, `https://mystorageaccount.blob.core.windows.net/myfirstcontainer`, was created using a Shared Access Signature that is associated with the Stored Access Policy.  For information on [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] backup to the Windows Azure Blob storage service, see [SQL Server Backup and Restore with Microsoft Azure Blob Storage Service](../../relational-databases/backup-restore/sql-server-backup-and-restore-with-microsoft-azure-blob-storage-service.md) and [SQL Server Backup to URL](../../relational-databases/backup-restore/sql-server-backup-to-url.md).

```tsql  
BACKUP DATABASE Sales
TO URL = 'https://mystorageaccount.blob.core.windows.net/myfirstcontainer/Sales_20160726.bak'
WITH STATS = 5;
```

  
## See Also  
 [Backup Devices &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-devices-sql-server.md)   
 [Media Sets, Media Families, and Backup Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/media-sets-media-families-and-backup-sets-sql-server.md)   
 [Tail-Log Backups &#40;SQL Server&#41;](../../relational-databases/backup-restore/tail-log-backups-sql-server.md)   
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)   
 [DBCC SQLPERF &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-sqlperf-transact-sql.md)   
 [RESTORE &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-transact-sql.md)   
 [RESTORE FILELISTONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-filelistonly-transact-sql.md)   
 [RESTORE HEADERONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-headeronly-transact-sql.md)   
 [RESTORE LABELONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-labelonly-transact-sql.md)   
 [RESTORE VERIFYONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-verifyonly-transact-sql.md)   
 [sp_addumpdevice &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-addumpdevice-transact-sql.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [sp_helpfile &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-helpfile-transact-sql.md)   
 [sp_helpfilegroup &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-helpfilegroup-transact-sql.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [Piecemeal Restore of Databases With Memory-Optimized Tables](../../relational-databases/in-memory-oltp/piecemeal-restore-of-databases-with-memory-optimized-tables.md)  
  
  