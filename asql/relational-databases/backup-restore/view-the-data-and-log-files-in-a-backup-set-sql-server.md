---
title: "View the Data and Log Files in a Backup Set (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-backup-restore"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "database backups [SQL Server], viewing backup sets"
  - "viewing backup set information"
  - "backup sets [SQL Server], viewing files in"
  - "displaying backup set information"
  - "transaction log backups [SQL Server], viewing backup sets"
  - "backing up [SQL Server], viewing backup sets"
ms.assetid: abb6420c-f809-426e-aeb4-d0a74989cf39
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# View the Data and Log Files in a Backup Set (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic describes how to view the data and log files in a backup set in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Security](#Security)  
  
-   **To view the data and log files in a backup set, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Security"></a> Security  
 For information about security, see [RESTORE FILELISTONLY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-statements-filelistonly-transact-sql.md)  
  
####  <a name="Permissions"></a> Permissions  
 In [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] and later versions, obtaining information about a backup set or backup device requires CREATE DATABASE permission. For more information, see [GRANT Database Permissions &#40;Transact-SQL&#41;](../Topic/GRANT%20Database%20Permissions%20\(Transact-SQL\).md).  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
#### To view the data and log files in a backup set  
  
1.  After connecting to the appropriate instance of the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)], in Object Explorer, click the server name to expand the server tree.  
  
2.  Expand **Databases**, and, depending on the database, either select a user database or expand **System Databases** and select a system database.  
  
3.  Right-click the database, and then click **Properties**, which opens the **Database Properties** dialog box.  
  
4.  In the **Select a Page** pane, click **Files**.  
  
5.  Look in the **Database files** grid for a list of the data and log files and their properties.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To view the data and log files in a backup set  
  
1.  Connect to the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
2.  From the Standard bar, click **New Query**.  
  
3.  Use the [RESTORE FILELISTONLY](../../t-sql/statements/restore-statements-filelistonly-transact-sql.md) statement. This example returns information about the second backup set (`FILE=2`) on the `AdventureWorksBackups` backup device.  
  
```tsql  
USE AdventureWorks2012 ;  
RESTORE FILELISTONLY FROM AdventureWorksBackups   
   WITH FILE=2;  
GO  
```  
  
## See Also  
 [backupfilegroup &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupfilegroup-transact-sql.md)   
 [backupfile &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupfile-transact-sql.md)   
 [backupset &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupset-transact-sql.md)   
 [backupmediaset &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupmediaset-transact-sql.md)   
 [backupmediafamily &#40;Transact-SQL&#41;](../../relational-databases/reference/system-tables/backupmediafamily-transact-sql.md)   
 [Backup Devices &#40;SQL Server&#41;](../../relational-databases/backup-restore/backup-devices-sql-server.md)  
  
  