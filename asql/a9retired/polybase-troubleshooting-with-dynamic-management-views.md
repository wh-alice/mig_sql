---
title: "PolyBase troubleshooting with dynamic management views | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-03-11"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-polybase"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "PolyBase, troubleshooting"
  - "PolyBase, dmvs"
ms.assetid: ce9078b7-a750-4f47-b23e-90b83b783d80
caps.latest.revision: 8
ms.author: "barbkess"
manager: "jhubbard"
robots: noindex,nofollow
---
# PolyBase troubleshooting with dynamic management views
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  With PolyBase, SQL Server 2016 introduces a set of new DMVs for trouble-shooting PolyBase queries. The DMVs with the prefix ‘_distributed’ capture all operations related to the distributed execution of PolyBase queries. The DMVs with the prefix ‘_external’ capture operations external to SQL Server or involve consuming data from the external data source.  
  
## Catalog views  
 Use the catalog views listed here to manage PolyBase operations.  
  
|||  
|-|-|  
|View|Description|  
|[sys.external_tables &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.external-tables-transact-sql.md)|Identifies external tables.|  
|[sys.external_data_sources &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.external-data-sources-transact-sql.md)|Identifies external data sources.|  
|[sys.external_file_formats &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.external-file-formats-transact-sql.md)|Finds external file formats.|  
  
## Dynamic Management Views  
  
|||  
|-|-|  
|[sys.dm_exec_compute_node_errors &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-node-errors-transact-sql.md)|[sys.dm_exec_compute_node_status &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-node-status-transact-sql.md)|  
|[sys.dm_exec_compute_nodes &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-nodes-transact-sql.md)|[sys.dm_exec_distributed_request_steps &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-request-steps-transact-sql.md)|  
|[sys.dm_exec_distributed_requests &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-requests-transact-sql.md)|[sys.dm_exec_distributed_sql_requests &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-sql-requests-transact-sql.md)|  
|[sys.dm_exec_dms_services &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-dms-services-transact-sql.md)|[sys.dm_exec_dms_workers &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-dms-workers-transact-sql.md)|  
|[sys.dm_exec_external_operations &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-external-operations-transact-sql.md)|[sys.dm_exec_external_work &#40;Transact-SQL&#41;](../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-external-work-transact-sql.md)|  
  
## Examples  
  
```  
-- PolyBase trouble-Shooting scenarios  
-- Pick up the query that took longest time  
select   
    execution_id,  
       st.text,  
       dr.total_elapsed_time  
FROM sys.dm_exec_distributed_requests  dr  
     cross apply sys.dm_exec_sql_text(sql_handle) st  
order by total_elapsed_time desc  
  
--  Get the execution steps for the query based on the DSQL Plan  
select execution_id, step_index, operation_type, distribution_type, location_type, status, total_elapsed_time, command   
from sys.dm_exec_distributed_request_steps where execution_id =  'QIDXX' order by total_elapsed_time desc  
  
-- Get the DMS steps for the DMS Move    
select execution_id, step_index, dms_step_index, status, type, bytes_processed, total_elapsed_time  
from sys.dm_exec_dms_workers where execution_id = 'QIDXX' order by total_elapsed_time desc    
  
-- Get the information about the external DMS operations  
select * from sys.dm_exec_external_work where execution_id = 'QIDXX' order by total_elapsed_time desc   
  
-- Get the information about MR jobs executed during the Hadoop push-down. It contains a row for each map-reduce   
-- job that is pushed down to Hadoop as part of running a PolyBase query against an external table  
select * from sys.dm_exec_external_operations  
  
-- Get information about the scale out cluster  
select * from sys.dm_exec_compute_nodes  
  
--shows IS_External which is the only way to tell that this is an external table.  
SELECT name, type, IS_External FROM sys.tables WHERE name='bands'  
  
```  
  
## See Also  
 [PolyBase T-SQL objects](../relational-databases/polybase/polybase-t-sql-objects.md)   
 [PolyBase troubleshooting with dynamic management views](../a9retired/polybase-troubleshooting-with-dynamic-management-views.md)  
  
  