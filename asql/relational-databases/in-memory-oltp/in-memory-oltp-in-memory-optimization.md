---
title: "In-Memory OLTP (In-Memory Optimization) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-11-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "In-Memory OLTP"
  - "memory-optimized tables"
ms.assetid: e1d03d74-2572-4a55-afd6-7edf0bc28bdb
caps.latest.revision: 105
ms.author: "genemi"
manager: "jhubbard"
---
# In-Memory OLTP (In-Memory Optimization)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

 [!INCLUDE[hek_2](../../a9retired/includes/hek-2-md.md)] can significantly improve the performance of transaction processing, data ingestion and data load, and transient data scenarios.  To jump into the basic code and knowledge you need to quickly test your own memory-optimized table and natively compiled stored procedure, see
 -  [Quick Start 1: In-Memory OLTP Technologies for Faster Transact-SQL Performance](../../relational-databases/in-memory-oltp/survey-of-initial-areas-in-in-memory-oltp.md).  
 
A 17-minute video explaining In-Memory OLTP and demonstrating performance benefits:

-  [In-Memory OLTP in SQL Server 2016](https://www.youtube.com/watch?v=l5l5eophmK4).

To download the performance demo for In-Memory OLTP used in the video: 

- [In-Memory OLTP Performance Demo v1.0](https://github.com/Microsoft/sql-server-samples/releases/tag/in-memory-oltp-demo-v1.0)

For a more detailed overview of In-Memory OLTP and a review of scenarios that see performance benefits from the technology:

- [Overview and Usage Scenarios](../../relational-databases/in-memory-oltp/overview-and-usage-scenarios.md)
 
 Note that [!INCLUDE[hek_2](../../a9retired/includes/hek-2-md.md)] is the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] technology for improving performance of transaction processing. For the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] technology that improves reporting and analytical query performance see [Columnstore Indexes Guide](../Topic/Columnstore%20Indexes%20Guide.md).
  
 Several improvements have been made to In-Memory OLTP in [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] as well as in [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)]. The Transact-SQL surface area has been increased to make it easier to migrate database applications. Support for performing ALTER operations for memory-optimized tables and natively compiled stored procedures has been added, to make it easier to maintain applications. For information about the new features in [!INCLUDE[hek_2](../../a9retired/includes/hek-2-md.md)], see [What's New in Database Engine](../Topic/What's%20New%20in%20Database%20Engine.md).  
  
> [!NOTE]  
>  **Try it out**  
>   
>  In-Memory OLTP is available in Premium Azure SQL databases. To get started with In-Memory OLTP, as well as Columnstore in Azure SQL Database, see [Optimize Performance using In-Memory Technologies in SQL Database](https://azure.microsoft.com/documentation/articles/sql-database-in-memory/).  
  

## In this section  
 This section provides includes the following topics:  
  
|Topic|Description|  
|-----------|-----------------|  
|[Quick Start 1: In-Memory OLTP Technologies for Faster Transact-SQL Performance](../../relational-databases/in-memory-oltp/survey-of-initial-areas-in-in-memory-oltp.md)|Delve right into In-Memory OLTP|
|[Overview and Usage Scenarios](../../relational-databases/in-memory-oltp/overview-and-usage-scenarios.md)|Overview of what In-Memory OLTP is, and what are the scenarios that see performance benefits.|
|[Requirements for Using Memory-Optimized Tables](../../relational-databases/in-memory-oltp/requirements-for-using-memory-optimized-tables.md)|Discusses hardware and software requirements and guidelines for using memory-optimized tables.|  
|[In-Memory OLTP Code Samples](../../relational-databases/in-memory-oltp/in-memory-oltp-code-samples.md)|Contains code samples that show how to create and use a memory-optimized table.|  
|[Memory-Optimized Tables](../../relational-databases/in-memory-oltp/memory-optimized-tables.md)|Introduces memory-optimized tables.|  
|[Memory-Optimized Table Variables](../../a9retired/memory-optimized-table-variables.md)|Code example showing how to use a memory-optimized table variable instead of a traditional table variable to reduce tempdb use.|  
|[Indexes on Memory-Optimized Tables](../../a9retired/indexes-on-memory-optimized-tables.md)|Introduces memory-optimized indexes.|  
|[Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/natively-compiled-stored-procedures.md)|Introduces natively compiled stored procedures.|  
|[Managing Memory for In-Memory OLTP](../../a9retired/managing-memory-for-in-memory-oltp.md)|Understanding and managing memory usage on your system.|  
|[Creating and Managing Storage for Memory-Optimized Objects](../../relational-databases/in-memory-oltp/creating-and-managing-storage-for-memory-optimized-objects.md)|Discusses data and delta files, which store information about transactions in memory-optimized tables.|  
|[Backup, Restore, and Recovery of Memory-Optimized Tables](../../a9retired/backup-restore-and-recovery-of-memory-optimized-tables.md)|Discusses backup, restore, and recovery for memory-optimized tables.|  
|[Transact-SQL Support for In-Memory OLTP](../../relational-databases/in-memory-oltp/transact-sql-support-for-in-memory-oltp.md)|Discusses [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] support for [!INCLUDE[hek_2](../../a9retired/includes/hek-2-md.md)].|  
|[High Availability Support for In-Memory OLTP databases](../../relational-databases/in-memory-oltp/high-availability-support-for-in-memory-oltp-databases.md)|Discusses availability groups and failover clustering in [!INCLUDE[hek_2](../../a9retired/includes/hek-2-md.md)].|  
|[SQL Server Support for In-Memory OLTP](../../relational-databases/in-memory-oltp/sql-server-support-for-in-memory-oltp.md)|Lists new and updated syntax and features supporting memory-optimized tables.|  
|[Migrating to In-Memory OLTP](../../relational-databases/in-memory-oltp/migrating-to-in-memory-oltp.md)|Discusses how to migrate disk-based tables to memory-optimized tables.|  
  
 More information about [!INCLUDE[hek_2](../../a9retired/includes/hek-2-md.md)] is available on:  

- [Video explaining In-Memory OLTP and demonstrating performance benefits](https://www.youtube.com/watch?v=l5l5eophmK4).

- [In-Memory OLTP Performance Demo v1.0](https://github.com/Microsoft/sql-server-samples/releases/tag/in-memory-oltp-demo-v1.0)

-   [SQL Server In-Memory OLTP Internals Technical Whitepaper](https://msdn.microsoft.com/library/mt764316.aspx)  

-   [SQL Server In-Memory OLTP and Columnstore Feature Comparison](http://download.microsoft.com/download/D/0/0/D0075580-6D72-403D-8B4D-C3BD88D58CE4/SQL_Server_2016_In_Memory_OLTP_and_Columnstore_Comparison_White_Paper.pdf)

-   What's new for In-Memory OLTP in SQL Server 2016 [Part 1](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2015/11/12/in-memory-oltp-whats-new-in-sql2016-ctp3/) and [Part 2](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/25/whats-new-for-in-memory-oltp-in-sql-server-2016-since-ctp3/)
  
-   [In-Memory OLTP – Common Workload Patterns and Migration Considerations](http://msdn.microsoft.com/library/dn673538.aspx)  
  
-   [In-Memory OLTP Blog](http://go.microsoft.com/fwlink/?LinkId=311696)  
  
## See Also  
 [Database Features](../../relational-databases/database-features.md)  
  
  