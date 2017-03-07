---
title: "Configure a table for Stretch | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 67bfbd03-347f-4c2a-a94b-f4095cd0ecd5
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Configure a table for Stretch
  Enable Stretch for a table to start migrating historical data to Azure SQL Database.  
  
## Before you get started  
 Before you enable Stretch for a table, we recommend the following steps.  
  
1.  **Check the prerequisites**. For example, you have to enable Stretch for the local server before you can enable it for a database or a table. For more info, see [Configure a server for Stretch](../a9retired/configure-a-server-for-stretch.md).  
  
2.  **Identify databases and tables that are eligible for Stretch**. For more info, see [Identify databases and tables for Stretch Database by running Stretch Database Advisor](../sql-server/install/81bd93d8-eef8-4572-88d7-5c37ab5ac2bf.md).  
  
3.  **Enable Stretch for the database**. For more info, see [Enable Stretch Database for a database](../sql-server/install/enable-stretch-database-for-a-database.md).  
  
## Enable Stretch for a table  
 Enabling Stretch for a database or a table requires db_owner permissions. Enabling Stretch for a table also requires ALTER permissions on the table.  
  
### Use SQL Server Management Studio to enable Stretch for a table  
  
1.  In SQL Server Management Studio, in Object Explorer, select the table for which you want to enable Stretch.  
  
2.  Right-click and select **Stretch**, and then select **Enable Stretch**.  
  
### Use Transact-SQL to enable Stretch for a table  
 Run the following command.  
  
```tsql  
ALTER TABLE <table name>  
    ENABLE REMOTE_DATA_ARCHIVE WITH ( MIGRATION_STATE = ON );  
GO;  
```  
  
## If you have to pause data migration  
 For info about how to pause and resume data migration, see [Pause and resume data migration &#40;Stretch Database&#41;](../sql-server/install/pause-and-resume-data-migration-stretch-database.md).  
  
## See Also  
 [ALTER TABLE &#40;Transact-SQL&#41;](../t-sql/statements/alter-table-transact-sql.md)  
  
  