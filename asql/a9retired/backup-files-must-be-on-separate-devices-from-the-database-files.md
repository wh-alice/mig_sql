---
title: "Backup Files Must Be on Separate Devices from the Database Files | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "Best Practices [Database Engine]"
ms.assetid: 7039bebb-1f25-4cf3-81f1-393dfb78da12
caps.latest.revision: 13
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Backup Files Must Be on Separate Devices from the Database Files
  This rule checks whether database files are on devices separate from the backup files. If database files and backup files are on the same device and the device fails, the database and backups will be unavailable. Also, putting the database and backup files on the separate devices optimizes the I/O performance for both the production use of the database and the writing of backups.  
  
## Best Practices Recommendations  
 We strongly recommend that you put the database and backups on separate backup devices.  
  
> [!NOTE]  
>  This policy cannot detect separate physical devices through mount points.  
  
## For More Information  
 [Backup Devices &#40;SQL Server&#41;](../relational-databases/backup-restore/backup-devices-sql-server.md)  
  
 [Back Up and Restore of SQL Server Databases](../relational-databases/backup-restore/back-up-and-restore-of-sql-server-databases.md)  
  
## See Also  
 [Monitor and Enforce Best Practices by Using Policy-Based Management](../relational-databases/policy-based-management/monitor-and-enforce-best-practices-by-using-policy-based-management.md)  
  
  