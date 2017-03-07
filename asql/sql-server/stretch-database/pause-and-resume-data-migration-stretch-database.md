---
title: "Pause and resume data migration (Stretch Database) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-14"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.service: "sql-server-stretch-database"
ms.suite: ""
ms.technology: 
  - "dbe-stretch"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Stretch Database, pausing and resuming"
  - "pausing Stretch Database"
  - "resuming Stretch Database"
ms.assetid: 65d6a990-b295-41b2-97f9-7b6bf3000e4d
caps.latest.revision: 23
ms.author: "douglasl"
manager: "jhubbard"
---
# Pause and resume data migration (Stretch Database)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  To pause or resume data migration to Azure, select **Stretch** for a table in SQL Server Management Studio, and then select **Pause** to pause data migration or **Resume** to resume data migration. You can also use Transact-SQL to pause or resume data migration.  
  
 Pause data migration on individual tables when you want to troubleshoot problems on the local server or to maximize the available network bandwidth.  

## Pause data migration  
  
### Use SQL Server Management Studio to pause data migration  
  
1.  In SQL Server Management Studio, in Object Explorer, select the Stretch-enabled table for which you want to pause data migration.  
  
2.  Right-click and select **Stretch**, and then select **Pause**.  
  
### Use Transact-SQL to pause data migration  
 Run the following command.  
  
```tsql  
USE <Stretch-enabled database name>;
GO
ALTER TABLE <Stretch-enabled table name>  
    SET ( REMOTE_DATA_ARCHIVE ( MIGRATION_STATE = PAUSED ) ) ;  
GO 
```  
  
## Resume data migration  
  
### Use SQL Server Management Studio to resume data migration  
  
1.  In SQL Server Management Studio, in Object Explorer, select the Stretch-enabled table for which you want to resume data migration.  
  
2.  Right-click and select **Stretch**, and then select **Resume**.  
  
### Use Transact-SQL to resume data migration  
 Run the following command.  
  
```tsql  
USE <Stretch-enabled database name>;
GO
ALTER TABLE <Stretch-enabled table name>   
    SET ( REMOTE_DATA_ARCHIVE ( MIGRATION_STATE = OUTBOUND ) ) ;  
 GO
```  

## Check whether migration is active or paused

### Use SQL Server Management Studio to check whether migration is active or paused
In SQL Server Management Studio, open **Stretch Database Monitor** and check the value of the **Migration State** column. For more info, see [Monitor and troubleshoot data migration](../../sql-server/install/monitor-and-troubleshoot-data-migration-stretch-database.md).

### Use Transact-SQL to check whether migration is active or paused
Query the catalog view **sys.remote_data_archive_tables** and check the value of the **is_migration_paused** column. For more info, see [sys.remote_data_archive_tables](sys.remote_data_archive_tables%20\(Transact-SQL\).md).

## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)  
[Monitor and troubleshoot data migration](../../sql-server/install/monitor-and-troubleshoot-data-migration-stretch-database.md) 
  