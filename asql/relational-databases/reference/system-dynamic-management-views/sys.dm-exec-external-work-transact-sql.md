---
title: "sys.dm_exec_external_work (Transact-SQL) | Microsoft Docs"
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
  - "DM_EXEC_EXTERNAL_WORK"
  - "DM_EXEC_EXTERNAL_WORK_TSQL"
  - "SYS.DM_EXEC_EXTERNAL_WORK_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_exec_external_work management view"
  - "dm_exec_external_work management view"
  - "PolyBase,views"
  - "PolyBase"
ms.assetid: 7597d97b-1fde-4135-ac35-4af12968f300
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_external_work (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Returns information about the workload per worker, on each compute node.  
  
 Query sys.dm_exec_external_work to identify the work spun up to communicate with the external data source (e.g. Hadoop or external SQL Server).  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|execution_id|**nvarchar(32)**|Unique identifier for associated PolyBase query.|See *request_ID* in [sys.dm_exec_requests &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md).|  
|step_index|**int**|The request this worker is performing.|See *step_index* in  [sys.dm_exec_requests &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md).|  
|dms_step_index|**int**|Step in the DMS plan that this worker is executing.|See [sys.dm_exec_dms_workers &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-dms-workers-transact-sql.md).|  
|compute_node_id|**int**|The node the worker is running on.|See [sys.dm_exec_compute_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-nodes-transact-sql.md).|  
|type|**nvarchar(60)**|The type of external work.|‘File Split’|  
|work_id|**int**|ID of the actual split.|Greater than or equal to 0.|  
|input_name|**nvarchar(4000)**|Name of the input to be read|File name when using Hadoop.|  
|read_location|**bigint**|Offset or read location.|Offset of the file to read.|  
|bytes_processed|**bigint**|Total bytes processed by this worker.|Greater than or equal to 0.|  
|length|**bigint**|Length of the split or HDFS block in case of Hadoop|User-definable. The default is 64M|  
|status|**nvarchar(32)**|Status of the worker|Pending, Processing, Done, Failed, Aborted|  
|start_time|**datetime**|Beginning of the work||  
|end_time|**datetime**|End of the work||  
|total_elapsed_time|**int**|Total time in milliseconds||  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](../Topic/PolyBase%20troubleshooting%20with%20dynamic%20management%20views.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  