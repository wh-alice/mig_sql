---
title: "Back Up to a Mirrored Media Set (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-backup-restore"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5fc43a5d-dfd6-4c53-a4ef-3c8da23ccc81
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# Back Up to a Mirrored Media Set (Transact-SQL)
  This topic describes how to use the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)][BACKUP](../../t-sql/statements/backup-transact-sql.md) statement to specify a mirrored media set when backing up a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database. In your BACKUP statement, specify the first mirror in the TO clause. Then, specify each mirror in its own MIRROR TO clause. The TO and MIRROR TO clauses must specify the same number and type of backup devices.  
  
## Example  
 The following example creates the mirrored media set illustrated in the previous illustration and backs up the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database to both mirrors.  
  
```  
BACKUP DATABASE AdventureWorks2012  
TO TAPE = '\\.\tape0', TAPE = '\\.\tape1'  
MIRROR TO TAPE = '\\.\tape2', TAPE = '\\.\tape3'  
WITH  
    FORMAT,  
    MEDIANAME = 'AdventureWorks2012Set1';  
GO  
```  
  
## Related Tasks  
 **To restore from a mirrored backup**  
  
-   [RESTORE &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-transact-sql.md)  
  
## See Also  
 [BACKUP &#40;Transact-SQL&#41;](../../t-sql/statements/backup-transact-sql.md)   
 [Mirrored Backup Media Sets &#40;SQL Server&#41;](../../relational-databases/backup-restore/mirrored-backup-media-sets-sql-server.md)  
  
  