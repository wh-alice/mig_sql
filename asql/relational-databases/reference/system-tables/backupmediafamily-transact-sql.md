---
title: "backupmediafamily (Transact-SQL) | Microsoft Docs"
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
  - "backupmediafamily"
  - "backupmediafamily_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "backupmediafamily system table"
  - "backup media [SQL Server], backupmediafamily system table"
ms.assetid: ee16de24-3d95-4b2e-a094-78df2514d18a
caps.latest.revision: 46
ms.author: "jhubbard"
manager: "jhubbard"
---
# backupmediafamily (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each media family. If a media family resides in a mirrored media set, the family has a separate row for each mirror in the media set. This table is stored in the **msdb** database.  
    
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**media_set_id**|**int**|Unique identification number that identifies the media set of which this family is a member. References **backupmediaset(media_set_id)**|  
|**family_sequence_number**|**tinyint**|Position of this media family in the media set.|  
|**media_family_id**|**uniqueidentifier**|Unique identification number that identifies the media family. Can be NULL.|  
|**media_count**|**int**|Number of media in the media family. Can be NULL.|  
|**logical_device_name**|**nvarchar(128)**|Name of this backup device in **sys.backup_devices.name**. If this is a temporary backup device (as opposed to a permanent backup device that exists in **sys.backup_devices**), the value of **logical_device_name** is NULL.|  
|**physical_device_name**|**nvarchar(260)**|Physical name of the backup device. Can be NULL.|  
|**device_type**|**tinyint**|Type of backup device:<br /><br /> 2 = Disk<br /><br /> 5 = Tape<br /><br /> 7 = Virtual device<br /><br /> 105 = A permanent backup device.<br /><br /> Can be NULL.<br /><br /> All permanent device names and device numbers can be found in **sys.backup_devices**.|  
|**physical_block_size**|**int**|Physical block size used to write the media family. Can be NULL.|  
|**mirror**|**tinyint**|Mirror number (0-3).|  
  
## Remarks  
 RESTORE VERIFYONLY FROM *backup_device* WITH LOADHISTORY populates the columns of the **backupmediaset** table with the appropriate values from the media-set header.  
  
 To reduce the number of rows in this table and in other backup and history tables, execute the [sp_delete_backuphistory](../../../relational-databases/reference/system-stored-procedures/sp-delete-backuphistory-transact-sql.md) stored procedure.  
  
## See Also  
 [Backup and Restore Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/backup-and-restore-tables-transact-sql.md)   
 [backupfile &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/backupfile-transact-sql.md)   
 [backupfilegroup &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/backupfilegroup-transact-sql.md)   
 [backupmediaset &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/backupmediaset-transact-sql.md)   
 [backupset &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/backupset-transact-sql.md)   
 [System Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/system-tables-transact-sql.md)  
  
  