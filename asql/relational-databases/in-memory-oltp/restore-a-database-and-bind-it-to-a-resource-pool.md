---
title: "Restore a Database and Bind it to a Resource Pool | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0d20a569-8a27-409c-bcab-0effefb48013
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# Restore a Database and Bind it to a Resource Pool
  Even though you have enough memory to restore a database with memory-optimized tables, you want to follow best practices and bind the database to a named resource pool. Since the database must exist before you can bind it to the pool restoring your database is a multi-step process. This topic walks you through that process.  
  
## Restoring a database with memory-optimized tables  
 The following steps fully restore the database IMOLTP_DB and bind it to the Pool_IMOLTP.  
  
1.  [Restore with NORECOVERY](../../relational-databases/in-memory-oltp/restore-a-database-and-bind-it-to-a-resource-pool.md#bkmk_NORECOVERY)  
  
2.  [Create the resource pool](../../relational-databases/in-memory-oltp/restore-a-database-and-bind-it-to-a-resource-pool.md#bkmk_createPool)  
  
3.  [Bind the database and resource pool](../../relational-databases/in-memory-oltp/restore-a-database-and-bind-it-to-a-resource-pool.md#bkmk_bind)  
  
4.  [Restore with RECOVERY](../../relational-databases/in-memory-oltp/restore-a-database-and-bind-it-to-a-resource-pool.md#bkmk_RECOVERY)  
  
5.  [Monitor the resource pool performance](../../relational-databases/in-memory-oltp/restore-a-database-and-bind-it-to-a-resource-pool.md#bkmk_Monitor)  
  
###  <a name="bkmk_NORECOVERY"></a> Restore with NORECOVERY  
 When you restore a database, NORECOVERY causes the database to be created and the disk image restored without consuming memory.  
  
```tsql  
RESTORE DATABASE IMOLTP_DB   
   FROM DISK = 'C:\IMOLTP_test\IMOLTP_DB.bak'  
   WITH NORECOVERY  
```  
  
###  <a name="bkmk_createPool"></a> Create the resource pool  
 The following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] creates a resource pool named Pool_IMOLTP with 50% of memory available for its use.  After the pool is created, the Resource Governor is reconfigured to include Pool_IMOLTP.  
  
```tsql  
CREATE RESOURCE POOL Pool_IMOLTP WITH (MAX_MEMORY_PERCENT = 50);  
ALTER RESOURCE GOVERNOR RECONFIGURE;  
GO  
```  
  
###  <a name="bkmk_bind"></a> Bind the database and resource pool  
 Use the system function `sp_xtp_bind_db_resource_pool` to bind the database to the resource pool. The function takes two parameters: the database name followed by the resource pool name.  
  
 The following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] defines a binding of the database IMOLTP_DB to the resource pool Pool_IMOLTP. The binding does not become effective until you complete the next step.  
  
```tsql  
EXEC sp_xtp_bind_db_resource_pool 'IMOLTP_DB', 'Pool_IMOLTP'  
GO  
```  
  
###  <a name="bkmk_RECOVERY"></a> Restore with RECOVERY  
 When you restore the database with recovery the database is brought online and all the data restored.  
  
```tsql  
RESTORE DATABASE IMOLTP_DB   
   WITH RECOVERY  
```  
  
###  <a name="bkmk_Monitor"></a> Monitor the resource pool performance  
 Once the database is bound to the named resource pool and restored with recovery, monitor the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], Resource Pool Stats Object. For more information see [SQL Server, Resource Pool Stats Object](../../relational-databases/monitor/performance-monitor/sql-server-resource-pool-stats-object.md).  
  
## See Also  
 [Bind a Database with Memory-Optimized Tables to a Resource Pool](../../relational-databases/in-memory-oltp/bind-a-database-with-memory-optimized-tables-to-a-resource-pool.md)   
 [sys.sp_xtp_bind_db_resource_pool &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-xtp-bind-db-resource-pool-transact-sql.md)   
 [SQL Server, Resource Pool Stats Object](../../relational-databases/monitor/performance-monitor/sql-server-resource-pool-stats-object.md)   
 [sys.dm_resource_governor_resource_pools](../../relational-databases/system-stored-procedures/sys.sp-xtp-unbind-db-resource-pool-transact-sql.md)  
  
  