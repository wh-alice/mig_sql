---
title: "sp_addumpdevice (Transact-SQL) | Microsoft Docs"
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
  - "sp_addumpdevice_TSQL"
  - "sp_addumpdevice"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "backup devices [SQL Server], defining"
  - "sp_addumpdevice"
ms.assetid: c2d2ae49-0808-46d8-8444-db69a69d0ec3
caps.latest.revision: 49
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_addumpdevice (Transact-SQL)
  Adds a backup device to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_addumpdevice [ @devtype = ] 'device_type'   
    , [ @logicalname = ] 'logical_name'   
    , [ @physicalname = ] 'physical_name'  
      [ , { [ @cntrltype = ] controller_type |  
          [ @devstatus = ] 'device_status' }  
      ]  
```  
  
## Arguments  
 [ **@devtype=** ] **'***device_type***'**  
 Is the type of backup device. *device_type* is **varchar(20)**, with no default, and can be one of the following values.  
  
|Value|Description|  
|-----------|-----------------|  
|**disk**|Hard disk file as a backup device.|  
|**tape**|Any tape devices supported by [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Windows.<br /><br /> Note: Support for tape backup devices will be removed in a future version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.|  
  
 [ **@logicalname =** ] **'***logical_name***'**  
 Is the logical name of the backup device used in the BACKUP and RESTORE statements. *logical_name* is **sysname**, with no default, and cannot be NULL.  
  
 [ **@physicalname =** ] **'***physical_name***'**  
 Is the physical name of the backup device. Physical names must follow the rules for operating-system file names or universal naming conventions for network devices, and must include a full path. *physical_name* is **nvarchar(260)**, with no default value, and cannot be NULL.  
  
 When creating a backup device on a remote network location, be sure that the name under which the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] was started has appropriate write capabilities on the remote computer.  
  
 If you add a tape device, this parameter must be the physical name assigned to the local tape device by Windows; for example, **\\\\.\TAPE0** for the first tape device on the computer. The tape device must be attached to the server computer; it cannot be used remotely. Enclose names that contain nonalphanumeric characters in quotation marks.  
  
> [!NOTE]  
>  This procedure enters the specified physical name into the catalog. The procedure does not attempt to access or create  the device.  
  
 [ **@cntrltype =** ] **'***controller_type***'**  
 Obsolete. If specified, this parameter is ignored. It is supported purely for backward compatibility. New uses of **sp_addumpdevice** should omit this parameter.  
  
 [ **@devstatus =** ] **'***device_status***'**  
 Obsolete. If specified, this parameter is ignored. It is supported purely for backward compatibility. New uses of **sp_addumpdevice** should omit this parameter.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 **sp_addumpdevice** adds a backup device to the **sys.backup_devices** catalog view. The device can then be referred to logically in BACKUP and RESTORE statements. **sp_addumpdevice** does not perform any access to the physical device. Access to the specified device only occurs when a BACKUP or RESTORE statement is performed. Creating a logical backup device can simplify BACKUP and RESTORE statements, where specifying the device name is an alternative using a "TAPE =" or "DISK =" clause to specify the device path.  
  
 Ownership and permissions problems can interfere with the use of disk or file backup devices. Make sure that appropriate file permissions are given to the Windows account under which the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] was started.  
  
 The [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] supports tape backups to tape devices that are supported by Windows. For more information about Windows-supported tape devices, see the hardware compatibility list for Windows. To view the tape devices available on the computer, use [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
 Use only the recommended tapes for the specific tape drive that are suggested by the drive manufacturer. If you are using digital audio tape (DAT) drives, use computer-grade DAT tapes (Digital Data Storage (DDS)).  
  
 **sp_addumpdevice** cannot be executed inside a transaction.  
  
 To delete a device, use [sp_dropdevice](../../../relational-databases/reference/system-stored-procedures/sp-dropdevice-transact-sql.md) or[SQL Server Management Studio](../../../relational-databases/backup-restore/delete-a-backup-device-sql-server.md).  
  
## Permissions  
 Requires membership in the **diskadmin** fixed server role.  
  
 Requires permission to write to the disk.  
  
## Examples  
  
### A. Adding a disk dump device  
 The following example adds a disk backup device named `mydiskdump`, with the physical name `c:\dump\dump1.bak`.  
  
```  
USE master;  
GO  
EXEC sp_addumpdevice 'disk', 'mydiskdump', 'c:\dump\dump1.bak';  
```  
  
### B. Adding a network disk backup device  
 The following example shows adding a remote disk backup device called `networkdevice`. The name under which the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] was started must have permissions to that remote file (`\\<servername>\<sharename>\<path>\<filename>.bak`).  
  
```  
USE master;  
GO  
EXEC sp_addumpdevice 'disk', 'networkdevice',  
    '\\<servername>\<sharename>\<path>\<filename>.bak';  
```  
  
### C. Adding a tape backup device  
 The following example adds the `tapedump1` device with the physical name `\\.\tape0`.  
  
```  
USE master;  
GO  
EXEC sp_addumpdevice 'tape', 'tapedump1', '\\.\tape0';  
```  
  
### D. Backing up to a logical backup device  
 The following example creates a logical backup device, `AdvWorksData`, for a backup disk file. The example then backs up the [!INCLUDE[ssSampleDBobject](../../../a9retired/includes/sssampledbobject-md.md)] database to this logical backup device.  
  
```  
USE master;  
GO  
EXEC sp_addumpdevice 'disk', 'AdvWorksData',   
'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\BACKUP\AdvWorksData.bak';  
GO  
BACKUP DATABASE AdventureWorks2012   
 TO AdvWorksData  
   WITH FORMAT;  
GO  
```  
  
## See Also  
 [Backup Devices &#40;SQL Server&#41;](../../../relational-databases/backup-restore/backup-devices-sql-server.md)   
 [BACKUP &#40;Transact-SQL&#41;](../../../t-sql/statements/backup-transact-sql.md)   
 [Define a Logical Backup Device for a Disk File &#40;SQL Server&#41;](../../../relational-databases/backup-restore/define-a-logical-backup-device-for-a-disk-file-sql-server.md)   
 [Define a Logical Backup Device for a Tape Drive &#40;SQL Server&#41;](../../../relational-databases/backup-restore/define-a-logical-backup-device-for-a-tape-drive-sql-server.md)   
 [RESTORE &#40;Transact-SQL&#41;](../../../t-sql/statements/restore-statements-transact-sql.md)   
 [sp_dropdevice &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-dropdevice-transact-sql.md)   
 [sys.backup_devices &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.backup-devices-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  