---
title: "sp_dropdevice (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_dropdevice_TSQL"
  - "sp_dropdevice"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "backup devices [SQL Server], deleting"
  - "sp_dropdevice"
ms.assetid: c8b07189-7c35-414b-acc1-45bd6e7e17c3
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_dropdevice (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops a database device or backup device from an instance of the [!INCLUDE[ssDEversion2005](../../../relational-databases/reference/system-stored-procedures/includes/ssdeversion2005-md.md)], deleting the entry from **master.dbo.sysdevices**.  
   
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_dropdevice [ @logicalname = ] 'device'   
    [ , [ @delfile = ] 'delfile' ]  
```  
  
## Arguments  
 [ **@logicalname=** ] **'***device***'**  
 Is the logical name of the database device or backup device as listed in **master.dbo.sysdevices.name**. *device* is **sysname**, with no default.  
  
 [ **@delfile=** ] **'***delfile***'**  
 Specifies whether the physical backup device file should be deleted. *delfile* is **varchar(7)**. If specified as **DELFILE**, the physical backup device disk file is deleted.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 **sp_dropdevice** cannot be used inside a transaction.  
  
## Permissions  
 Requires membership in the **diskadmin** fixed server role.  
  
## Examples  
 The following example drops the `tapedump1` tape dump device from the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
```  
EXEC sp_dropdevice 'tapedump1';  
```  
  
## See also  
 [Backup Devices &#40;SQL Server&#41;](../../../relational-databases/backup-restore/backup-devices-sql-server.md)   
 [Delete a Backup Device &#40;SQL Server&#41;](../../../relational-databases/backup-restore/delete-a-backup-device-sql-server.md)   
 [sp_addumpdevice &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addumpdevice-transact-sql.md)   
 [sp_helpdb &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpdb-transact-sql.md)   
 [sp_helpdevice &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpdevice-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  