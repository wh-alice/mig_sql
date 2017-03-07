---
title: "Unmigrate remote data (Stretch Database) | Microsoft Docs"
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server (starting with 2016)"
helpviewer_keywords: 
  - "Stretch Database, unmigrating remote data"
  - "unmigrating remote data (Stretch Database)"
ms.assetid: 133208cd-5ac7-4220-b681-044dbba2411d
caps.latest.revision: 9
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Unmigrate remote data (Stretch Database)
  Select **Tasks | Stretch | Unmigrate** for a table in SQL Server Management Studio to unmigrate the data that Stretch Database has migrated to Microsoft Azure.  You can also use Transact-SQL to unmigrate data.  
  
 After all the data has been unmigrated, Stretch Database is disabled for the table.  
  
## Important info about unmigrating  
  
-   After you start the process to unmigrate your data, you can pause the migration, but you can't cancel it.  
  
-   Unmigrating your data incurs Azure data transfer charges. For more info, see [Data Transfers Pricing Details](https://azure.microsoft.com/en-us/pricing/details/data-transfers/).  
  
## Use SQL Server Management Studio to unmigrate data  
  
1.  In SQL Server Management Studio, in Object Explorer, select the table for which you want to unmigrate data.  
  
2.  Right-click and select **Tasks**, and then select **Stretch**, and then select **Unmigrate**.  
  
## Use Transact-SQL to unmigrate data  
 Run the following command.  
  
```tsql  
ALTER TABLE <table name>  
    SET ( REMOTE_DATA_ARCHIVE = ON  (MIGRATION_STATE = INBOUND) ) ;  
GO;  
```  
  
 You can change the migration state of a table from OUTBOUND or PAUSED  to INBOUND. After you set the migration state to INBOUND,  you can only change it to PAUSED,  and then change it back to INBOUND. After all the data is unmigrated, Stretch Database is disabled for the table. After that, if you change your mind, you can enable Stretch Database for the table again and set the migration state to OUTBOUND.  
  
 For more info, see [ALTER TABLE &#40;Transact-SQL&#41;](../t-sql/statements/alter-table-transact-sql.md).  
  
## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../t-sql/statements/alter-table-transact-sql.md)   
 [Disable Stretch Database and bring back remote data](../sql-server/install/disable-stretch-database-and-bring-back-remote-data.md)  
  
  