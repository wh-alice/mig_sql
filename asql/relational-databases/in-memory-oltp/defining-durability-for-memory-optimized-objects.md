---
title: "Defining Durability for Memory-Optimized Objects | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0fe85fbf-8e8d-4983-96fd-d04b3c7d6d65
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# Defining Durability for Memory-Optimized Objects
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../relational-databases/extended-events/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  There are two durability options for memory-optimized tables:  
  
 SCHEMA_AND_DATA (default)  
 This option provides durability of both schema and data. The level of data durability depends on whether you commit a transaction as fully durable or with delayed durability. Fully durable transactions provide the same durability guarantee for data and schema, similar to a disk-based table. Delayed durability will improve performance but can potentially result in data loss in case of a server crash or fail over. (For more information about delayed durability, see [Control Transaction Durability](../../relational-databases/logs/control-transaction-durability.md).)  
  
 SCHEMA_ONLY  
 This option ensures durability of the table schema. When [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is restarted or a reconfiguration occurs in an Azure SQL Database, the table schema persists, but data in the table is lost. (This is unlike a table in tempdb, where both the table and its data are lost upon restart.) A typical scenario for creating a non-durable table is to store transient data, such as a staging table for an ETL process. A SCHEMA_ONLY durability avoids both transaction logging and checkpoint, which can significantly reduce I/O operations.  
  
 When using the default SCHEMA_AND_DATA tables, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] provides the same durability guarantees as for disk-based tables:  
  
 Transactional Durability  
 When you commit a fully durable transaction that made (DDL or DML) changes to a memory-optimized table, the changes made to a durable memory-optimized table are permanent.  
  
 When you commit a delayed durable transaction to a memory-optimized table, the transaction becomes durable only after the in-memory transaction log is saved to disk. (For more information about delayed durability, see [Control Transaction Durability](../../relational-databases/logs/control-transaction-durability.md).)  
  
 Restart Durability  
 When [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] restarts after a crash or planned shutdown, the memory-optimized durable tables are reinstantiated to restore them to the state before the shutdown or crash.  
  
 Media Failure Durability  
 If a failed or corrupt disk contains one or more persisted copies of durable memory-optimized objects, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] backup and restore feature restores memory-optimized tables on the new media.  
  
## See Also  
 [Creating and Managing Storage for Memory-Optimized Objects](../../relational-databases/in-memory-oltp/creating-and-managing-storage-for-memory-optimized-objects.md)  
  
  