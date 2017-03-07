---
title: "New and Updated Properties, System Views, Stored Procedures, Wait Types, and DMVs for In-Memory OLTP | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server 2016 Preview"
ms.assetid: efaa59e3-dbfa-407f-b1aa-cb0c6602ea17
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# New and Updated Properties, System Views, Stored Procedures, Wait Types, and DMVs for In-Memory OLTP
  This topic lists properties, system views, columns in system views, and wait types to support In-Memory OLTP.  
  
|New or updated property, system view, stored procedures, or DMV|Change|  
|---------------------------------------------------------------------|------------|  
|[OBJECTPROPERTYEX &#40;Transact-SQL&#41;](../t-sql/functions/objectpropertyex-transact-sql.md)|**ExecIsWithNativeCompilation** and **TableIsMemoryOptimized** properties.<br /><br /> The **IsSchemaBound** property supports the Procedure object type (returns 0 for procedures instead of NULL).|  
|[SERVERPROPERTY &#40;Transact-SQL&#41;](../t-sql/functions/serverproperty-transact-sql.md)|**IsXTPSupported** property.|  
|[sys.data_spaces &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.data-spaces-transact-sql.md)|The following columns display additional values: **type** and **type_desc**.|  
|[sys.indexes &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.indexes-transact-sql.md)|The following columns display additional values: **type** and **type_desc**.|  
|[sys.parameters &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.parameters-transact-sql.md)|**is_nullable** column.|  
|[sys.all_sql_modules &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.all-sql-modules-transact-sql.md)|**uses_native_compilation** column.|  
|[sys.sql_modules &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)|**uses_native_compilation** column.|  
|[sys.table_types &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.table-types-transact-sql.md)|**is_memory_optimized** column.|  
|[sys.tables &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.tables-transact-sql.md)|**durability**, **durability_desc**, and **is_memory_optimized** columns.|  
|[sys.hash_indexes &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.hash-indexes-transact-sql.md)|System view.|  
|[sys.sp_xtp_bind_db_resource_pool &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sys.sp-xtp-bind-db-resource-pool-transact-sql.md)|Stored procedure.|  
|[sys.sp_xtp_checkpoint_force_garbage_collection &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sys.sp-xtp-checkpoint-force-garbage-collection-transact-sql.md)|Stored procedure.|  
|[sys.sp_xtp_control_proc_exec_stats &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sys.sp-xtp-control-proc-exec-stats-transact-sql.md)|Stored procedure.|  
|[sys.sp_xtp_control_query_exec_stats &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sys.sp-xtp-control-query-exec-stats-transact-sql.md)|Stored procedure.|  
|[sys.sp_xtp_merge_checkpoint_files &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sys.sp-xtp-merge-checkpoint-files-transact-sql.md)|Stored procedure.|  
|[sys.sp_xtp_unbind_db_resource_pool &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sys.sp-xtp-unbind-db-resource-pool-transact-sql.md)|Stored procedure.|  
|[sys.dm_db_xtp_checkpoint_stats &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-db-xtp-checkpoint-stats-transact-sql.md)||  
|[sys.dm_db_xtp_checkpoint_files &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-db-xtp-checkpoint-files-transact-sql.md)||  
|[Memory-Optimized Table Dynamic Management Views &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/memory-optimized-table-dynamic-management-views-transact-sql.md)|DMVs to support In-Memory OLTP.|  
  
## Wait Types  
 The following wait types support In-Memory OLTP:  
  
-   WAIT_XTP_CKPT_CLOSE  
  
-   WAIT_XTP_CKPT_ENABLED  
  
-   WAIT_XTP_CKPT_STATE_LOCK  
  
-   WAIT_XTP_GUEST  
  
-   WAIT_XTP_HOST_WAIT  
  
-   WAIT_XTP_OFFLINE_CKPT_LOG_IO  
  
-   WAIT_XTP_OFFLINE_CKPT_NEW_LOG  
  
-   WAIT_XTP_PROCEDURE_ENTRY  
  
-   WAIT_XTP_TASK_SHUTDOWN  
  
-   WAIT_XTP_TRAN_COMMIT  
  
-   WAIT_XTP_TRAN_DEPENDENCY  
  
-   XTPPROC_CACHE_ACCESS  
  
-   XTPPROC_PARTITIONED_STACK_CREATE  
  
 For more information, about these wait types, see [sys.dm_os_wait_stats &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-os-wait-stats-transact-sql.md).  
  
## See Also  
 [Transact-SQL Support for In-Memory OLTP](../relational-databases/in-memory-oltp/transact-sql-support-for-in-memory-oltp.md)  
  
  