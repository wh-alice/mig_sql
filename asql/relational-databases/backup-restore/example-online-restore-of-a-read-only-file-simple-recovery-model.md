---
title: "Example: Online Restore of a Read-Only File (Simple Recovery Model) | Microsoft Docs"
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
  - "restore sequences [SQL Server], online"
  - "online restores [SQL Server], simple recovery model"
  - "simple recovery model [SQL Server], RESTORE examples"
ms.assetid: 0c691fc6-9865-46a7-b055-8097424492d6
caps.latest.revision: 27
ms.author: "jhubbard"
manager: "jhubbard"
---
# Example: Online Restore of a Read-Only File (Simple Recovery Model)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic is relevant for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] databases under the simple recovery model that contain a read-only filegroup. Under the simple recovery model, a read-only file can be restored online if a file backup exists that was taken since the file became read-only for the last time.  
  
 In this example, a database named `adb` contains three filegroups. Filegroup `A` is read/write, and filegroups `B` and `C` are read-only. Initially, all of the filegroups are online. A read-only file in filegroup `B`, `b1`, has to be restored. The database administrator can restore it by using a backup that was taken after the file became read-only. For the duration of the restore, filegroup `B` will be offline, but the remainder of the database will remain online.  
  
## Restore Sequence  
  
> [!NOTE]  
>  The syntax for an online restore sequence is the same as for an offline restore sequence.  
  
 To restore the file, the database administrator uses the following restore sequence:  
  
```  
RESTORE DATABASE adb FILE='b1' FROM filegroup_B_backup   
WITH RECOVERY  
```  
  
 The file is now online.  
  
## Additional Examples  
  
-   [Example: Piecemeal Restore of Database &#40;Simple Recovery Model&#41;](../../relational-databases/backup-restore/example-piecemeal-restore-of-database-simple-recovery-model.md)  
  
-   [Example: Piecemeal Restore of Only Some Filegroups &#40;Simple Recovery Model&#41;](../../relational-databases/backup-restore/example-piecemeal-restore-of-only-some-filegroups-simple-recovery-model.md)  
  
-   [Example: Piecemeal Restore of Database &#40;Full Recovery Model&#41;](../../relational-databases/backup-restore/example-piecemeal-restore-of-database-full-recovery-model.md)  
  
-   [Example: Piecemeal Restore of Only Some Filegroups &#40;Full Recovery Model&#41;](../../relational-databases/backup-restore/example-piecemeal-restore-of-only-some-filegroups-full-recovery-model.md)  
  
-   [Example: Online Restore of a Read-Write File &#40;Full Recovery Model&#41;](../../relational-databases/backup-restore/example-online-restore-of-a-read-write-file-full-recovery-model.md)  
  
-   [Example: Online Restore of a Read-Only File &#40;Full Recovery Model&#41;](../../relational-databases/backup-restore/example-online-restore-of-a-read-only-file-full-recovery-model.md)  
  
## See Also  
 [Online Restore &#40;SQL Server&#41;](../../relational-databases/backup-restore/online-restore-sql-server.md)   
 [Piecemeal Restores &#40;SQL Server&#41;](../../relational-databases/backup-restore/piecemeal-restores-sql-server.md)   
 [File Restores &#40;Simple Recovery Model&#41;](../../relational-databases/backup-restore/file-restores-simple-recovery-model.md)   
 [Restore and Recovery Overview &#40;SQL Server&#41;](../../relational-databases/backup-restore/restore-and-recovery-overview-sql-server.md)   
 [RESTORE &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-transact-sql.md)  
  
  