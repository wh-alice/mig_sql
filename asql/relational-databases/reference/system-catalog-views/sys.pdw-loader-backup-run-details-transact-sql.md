---
title: "sys.pdw_loader_backup_run_details (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 04fc004f-ee15-4d7a-be08-78357aa99b55
caps.latest.revision: 9
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.pdw_loader_backup_run_details (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Contains further detailed information, beyond the information in [sys.pdw_loader_backup_runs &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-loader-backup-runs-transact-sql.md), about ongoing and completed backup and restore operations in [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)] and about ongoing and completed backup, restore, and load operations in [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]. The information persists across system restarts.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|run_id|**int**|Unique identifier for a specific backup or restore run.<br /><br /> run_id and pdw_node_id form the key for this view.||  
|pdw_node_id|**int**|Unique identifier of an appliance node for which this record holds details.<br /><br /> run_id and pdw_node_id form the key for this view.|See node_id in [sys.dm_pdw_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-pdw-nodes-transact-sql.md).|  
|status|**nvarchar(16)**|The current status of the run.|'CANCELLED', 'COMPLETED', 'FAILED', 'QUEUED', 'RUNNING'|  
|start_time|**datetime**|Time at which the operation started on this particular node.||  
|end_time|**datetime**|Time at which the operation ended on this particular node, if any.||  
|total_elapsed_time|**int**|Total time the operation has been running on this particular node.|If total_elapsed_time exceeds the maximum value for an integer (24.8 days in milliseconds), it will cause materialization failure due to overflow.<br /><br /> The maximum value in milliseconds is equivalent to 24.8 days.|  
|progress|**int**|Progress of the operation expressed as a percentage.|0 to 100|  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Catalog Views](../../../relational-databases/reference/system-catalog-views/sql-data-warehouse-and-parallel-data-warehouse-catalog-views.md)  
  
  