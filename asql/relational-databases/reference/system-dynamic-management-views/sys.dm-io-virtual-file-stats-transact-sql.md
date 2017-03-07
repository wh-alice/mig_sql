---
title: "sys.dm_io_virtual_file_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_io_virtual_file_stats"
  - "sys.dm_io_virtual_file_stats_TSQL"
  - "sys.dm_io_virtual_file_stats"
  - "dm_io_virtual_file_stats_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_io_virtual_file_stats dynamic management function"
ms.assetid: fa3e321f-6fe5-45ff-b397-02a0dd3d6b7d
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_io_virtual_file_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns I/O statistics for data and log files. This dynamic management view replaces the [fn_virtualfilestats](../../../relational-databases/reference/system-functions/sys.fn-virtualfilestats-transact-sql.md) function.  
  
## Syntax  
  
```  
  
sys.dm_io_virtual_file_stats (   
{ database_id | NULL }  
, { file_id | NULL }  
)  
```  
  
## Arguments  
 *database_id* | NULL  
 ID of the database. *database_id* is **int**, with no default. Valid inputs are the ID number of a database or NULL. When NULL is specified, all databases in the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] are returned.  
  
 The built-in function [DB_ID](../../../t-sql/functions/db-id-transact-sql.md) can be specified.  
  
 *file_id* | NULL  
 ID of the file. *file_id* is **int**, with no default. Valid inputs are the ID number of a file or NULL. When NULL is specified, all files on the database are returned.  
  
 The built-in function [FILE_IDEX](../../../t-sql/functions/file-idex-transact-sql.md) can be specified, and refers to a file in the current database.  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**smallint**|ID of database.|  
|**file_id**|**smallint**|ID of file.|  
|**sample_ms**|**bigint**<br /><br /> Applies to: [!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]<br /><br /> **int**<br /><br /> Applies to: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)]|Number of milliseconds since the computer was started. This column can be used to compare different outputs from this function.|  
|**num_of_reads**|**bigint**|Number of reads issued on the file.|  
|**num_of_bytes_read**|**bigint**|Total number of bytes read on this file.|  
|**io_stall_read_ms**|**bigint**|Total time, in milliseconds, that the users waited for reads issued on the file.|  
|**num_of_writes**|**bigint**|Number of writes made on this file.|  
|**num_of_bytes_written**|**bigint**|Total number of bytes written to the file.|  
|**io_stall_write_ms**|**bigint**|Total time, in milliseconds, that users waited for writes to be completed on the file.|  
|**io_stall**|**bigint**|Total time, in milliseconds, that users waited for I/O to be completed on the file.|  
|**size_on_disk_bytes**|**bigint**|Number of bytes used on the disk for this file. For sparse files, this number is the actual number of bytes on the disk that are used for database snapshots.|  
|**file_handle**|**varbinary**|Windows file handle for this file.|  
|**io_stall_queued_read_ms**|**bigint**|**Applies to**: [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Total IO latency introduced by IO resource governance for reads. Is not nullable. For more information, see [sys.dm_resource_governor_resource_pools &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-resource-pools-transact-sql.md).|  
|**io_stall_queued_write_ms**|**bigint**|**Applies to**: [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Total IO latency introduced by IO resource governance for writes. Is not nullable.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission. For more information, see [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md).  
  
## Examples  
 The following example returns statistics for the log file in the [!INCLUDE[ssSampleDBnormal](../../../a9notintoc/includes/sssampledbnormal-md.md)] database.  
  
```tsql  
SELECT * FROM sys.dm_io_virtual_file_stats(DB_ID(N'AdventureWorks2012'), 2);  
GO  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [I O Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/i-o-related-dynamic-management-views-and-functions-transact-sql.md)   
 [sys.database_files &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.database-files-transact-sql.md)   
 [sys.master_files &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.master-files-transact-sql.md)  
  
  