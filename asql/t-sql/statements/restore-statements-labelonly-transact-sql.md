---
title: "RESTORE LABELONLY (Transact-SQL) | Microsoft Docs"
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
  - "LABELONLY"
  - "RESTORE_LABELONLY_TSQL"
  - "LABELONLY_TSQL"
  - "RESTORE LABELONLY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "RESTORE LABELONLY statement"
  - "backup media [SQL Server], content information"
ms.assetid: 7cf0641e-0d55-4ffb-9500-ecd6ede85ae5
caps.latest.revision: 46
ms.author: "jhubbard"
manager: "jhubbard"
---
# RESTORE Statements - LABELONLY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a result set containing information about the backup media identified by the given backup device.  
  
> [!NOTE]  
>  For the descriptions of the arguments, see [RESTORE Arguments &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-arguments-transact-sql.md).  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
RESTORE LABELONLY   
FROM <backup_device>   
[ WITH   
 {  
--Media Set Options  
   MEDIANAME = { media_name | @media_name_variable }   
 | MEDIAPASSWORD = { mediapassword | @mediapassword_variable }  
  
--Error Management Options  
 | { CHECKSUM | NO_CHECKSUM }   
 | { STOP_ON_ERROR | CONTINUE_AFTER_ERROR }  
  
--Tape Options  
 | { REWIND | NOREWIND }   
 | { UNLOAD | NOUNLOAD }    
 } [ ,...n ]  
]  
[;]  
  
<backup_device> ::=  
{   
   { logical_backup_device_name |  
      @logical_backup_device_name_var }  
   | { DISK | TAPE } = { 'physical_backup_device_name' |  
       @physical_backup_device_name_var }   
}  
  
```  
  
## Arguments  
 For descriptions of the RESTORE LABELONLY arguments, see [RESTORE Arguments &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-arguments-transact-sql.md).  
  
## Result Sets  
 The result set from RESTORE LABELONLY consists of a single row with this information.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**MediaName**|**nvarchar(128)**|Name of the media.|  
|**MediaSetId**|**uniqueidentifier**|Unique identification number of the media set.|  
|**FamilyCount**|**int**|Number of media families in the media set.|  
|**FamilySequenceNumber**|**int**|Sequence number of this family.|  
|**MediaFamilyId**|**uniqueidentifier**|Unique identification number for the media family.|  
|**MediaSequenceNumber**|**int**|Sequence number of this media in the media family.|  
|**MediaLabelPresent**|**tinyint**|Whether the media description contains:<br /><br /> **1** = [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Tape Format media label<br /><br /> **0** = Media description|  
|**MediaDescription**|**nvarchar(255)**|Media description, in free-form text, or the Tape Format media label.|  
|**SoftwareName**|**nvarchar(128)**|Name of the backup software that wrote the label.|  
|**SoftwareVendorId**|**int**|Unique vendor identification number of the software vendor that wrote the backup.|  
|**MediaDate**|**datetime**|Date and time the label was written.|  
|**Mirror_Count**|**int**|Number of mirrors in the set (1-4).<br /><br /> Note: The labels written for different mirrors in a set are identical.|  
|**IsCompressed**|**bit**|Whether the backup is compressed:<br /><br /> 0 = not compressed<br /><br /> 1 =compressed|  
  
> [!NOTE]  
>  If passwords are defined for the media set, RESTORE LABELONLY returns information only if the correct media password is specified in the MEDIAPASSWORD option of the command.  
  
## General Remarks  
 Executing RESTORE LABELONLY is a quick way to find out what the backup media contains. Because RESTORE LABELONLY reads only the media header, this statement finishes quickly even when using high-capacity tape devices.  
  
## Security  
 A backup operation may optionally specify passwords for a media set. When a password has been defined on a media set, you must specify the correct password in the RESTORE statement. The password prevents unauthorized restore operations and unauthorized appends of backup sets to media using [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] tools. However, a password does not prevent overwrite of media using the BACKUP statement's FORMAT option.  
  
> [!IMPORTANT]  
>  The protection provided by this password is weak. It is intended to prevent an incorrect restore using [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] tools by authorized or unauthorized users. It does not prevent the reading of the backup data by other means or the replacement of the password. [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]The best practice for protecting backups is to store backup tapes in a secure location or back up to disk files that are protected by adequate access control lists (ACLs). The ACLs should be set on the directory root under which backups are created.  
  
### Permissions  
 In [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] and later versions, obtaining information about a backup set or backup device requires CREATE DATABASE permission. For more information, see [GRANT Database Permissions &#40;Transact-SQL&#41;](../Topic/GRANT%20Database%20Permissions%20\(Transact-SQL\).md).  
  
## See Also  
 [BACKUP &#40;Transact-SQL&#41;](../../t-sql/statements/backup-transact-sql.md)   
 [Media Sets, Media Families, and Backup Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/media-sets-media-families-and-backup-sets-sql-server.md)   
 [RESTORE REWINDONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-rewindonly-transact-sql.md)   
 [RESTORE VERIFYONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-verifyonly-transact-sql.md)   
 [RESTORE &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-transact-sql.md)   
 [Backup History and Header Information &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-history-and-header-information-sql-server.md)  
  
  