---
title: "sys.dm_db_xtp_index_stats (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_db_xtp_index_stats"
  - "dm_db_xtp_index_stats"
  - "sys.dm_db_xtp_index_stats_TSQL"
  - "dm_db_xtp_index_stats_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_xtp_index_stats dynamic management view"
ms.assetid: 8d0a50b8-2015-4576-930f-e3307dfc888e
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_db_xtp_index_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../../relational-databases/extended-events/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Contains statistics collected since the last database restart.  
  
 For more information, see [In-Memory OLTP &#40;In-Memory Optimization&#41;](../../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md) and [Guidelines for Using Indexes on Memory-Optimized Tables](http://msdn.microsoft.com/en-US/library/dn133166(SQL.130).aspx).  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|object_id|**bigint**|ID of the object to which this index belongs.|  
|xtp_object_id|**bigint**|Internal ID corresponding to the current version of the object.<br /><br /> Note: Applies to [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)].|  
|index_id|**bigint**|ID of the index. The index_id is unique only within the object.|  
|scans_started|**bigint**|Number of In-Memory OLTP index scans performed. Every select, insert, update, or delete requires an index scan.|  
|scans_retries|**bigint**|Number of index scans that needed to be retried,|  
|rows_returned|**bigint**|Cumulative number of rows returned since the table was created or the start of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|rows_touched|**bigint**|Cumulative number of rows accessed since the table was created or the start of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|rows_expiring|**bigint**|Internal use only.|  
|rows_expired|**bigint**|Internal use only.|  
|rows_expired_removed|**bigint**|Internal use only.|  
|phantom_scans_started|**bigint**|Internal use only.|  
|phatom_scans_retries|**bigint**|Internal use only.|  
|phantom_rows_touched|**bigint**|Internal use only.|  
|phantom_expiring_rows_encountered|**bigint**|Internal use only.|  
|phantom_expired_rows_encountered|**bigint**|Internal use only.|  
|phantom_expired_removed_rows_encountered|**bigint**|Internal use only.|  
|phantom_expired_rows_removed|**bigint**|Internal use only.|  
|object_address|**varbinary(8)**|Internal use only.|  
  
## Permissions  
 Requires VIEW DATABASE STATE permission on the current database.  
  
## See Also  
 [Memory-Optimized Table Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/memory-optimized-table-dynamic-management-views-transact-sql.md)  
  
  