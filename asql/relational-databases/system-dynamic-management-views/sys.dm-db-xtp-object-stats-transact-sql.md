---
title: "sys.dm_db_xtp_object_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_db_xtp_object_stats_TSQL"
  - "sys.dm_db_xtp_object_stats"
  - "dm_db_xtp_object_stats"
  - "sys.dm_db_xtp_object_stats_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_xtp_object_stats dynamic management view"
ms.assetid: 07300b59-3cab-4d3e-8138-5ea8f584f88f
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_db_xtp_object_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../relational-databases/extended-events/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Reports the number rows affected by operations on each of the [!INCLUDE[hek_2](../../relational-databases/in-memory-oltp/includes/hek-2-md.md)] objects since the last database restart. Statistics are updated when the operation executes, regardless of whether the transaction commits or was rolled back.  
  
 sys.dm_db_xtp_object_stats can help you identify which memory-optimized tables are changing the most. You may decide to remove unused or rarely used indexes on the table, as each index affects performance. If there are hash indexes, you should periodically re-evaluate the bucket-count. For more information, see [Determining the Correct Bucket Count for Hash Indexes](../Topic/Determining%20the%20Correct%20Bucket%20Count%20for%20Hash%20Indexes.md).  
  
 sys.dm_db_xtp_object_stats can help you identify which memory-optimized tables incur write-write conflicts, which can affect the performance of your application. For example, if you have transaction retry logic, the same statement may need to be executed more than once. Also, you can use this information to identify the tables (and therefore business logic) that require write-write error handling.  
  
 The view contains a row for each memory optimized table in the database.  
  
 For more information, see [In-Memory OLTP &#40;In-Memory Optimization&#41;](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|object_id|**bigint**|The ID of the object.|  
|row_insert_attempts|**bigint**|The number of rows inserted into the table since the last database restart by both committed and aborted transactions.|  
|row_update_attempts|**bigint**|The number of rows updated in the table since the last database restart by both committed and aborted transactions.|  
|row_delete_attempts|**bigint**|The number of rows deleted from the table since the last database restart by both committed and aborted transactions.|  
|write_conflicts|**bigint**|The number of write conflicts that occurred since the last database restart.|  
|unique_constraint_violations|**bigint**|The number of unique constraint violations that have occurred since the last database restart.|  
|object_address|**varbinary(8)**|Internal use only.|  
  
## Permissions  
 Requires VIEW DATABASE STATE permission on the current database.  
  
## See Also  
 [Memory-Optimized Table Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/memory-optimized-table-dynamic-management-views-transact-sql.md)  
  
  