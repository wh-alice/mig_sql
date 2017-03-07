---
title: "sys.dm_exec_compute_node_status (Transact-SQL) | Microsoft Docs"
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
  - "DM_EXEC_COMPUTE_NODE_STATUS_TSQL"
  - "DM_EXEC_COMPUTE_NODE_STATUS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PolyBase,views"
  - "PolyBase"
  - "dm_exec_compute_node_status"
  - "sys.dm_exec_compute_node_status management view"
ms.assetid: b606f91f-3a08-4a4f-bb57-32ae155b3738
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_compute_node_status (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Holds additional information about the performance and status of all PolyBase nodes. Lists one row per node.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|compute_node_id|**int**|Unique numeric id associated with the node.|Unique across scale-out cluster regardless of type.|  
|process_id|**int**|||  
|process_name|**nvarchar(255)**|Logical name of the node.|Any string of appropriate length.|  
|allocated_memory|**bigint**|Total allocated memory on this node.||  
|available_memory|**bigint**|Total available memory on this node.||  
|process_cpu_usage|**bigint**|Total process CPU usage, in ticks.||  
|total_cpu_usage|**bigint**|Total CPU usage, in ticks.||  
|thread_count|**bigint**|Total number of threads in use on this node.||  
|handle_count|**bigint**|Total number of handles in use on this node.||  
|total_elapsed_time|**bigint**|Total time elapsed since system start or restart.|Total time elapsed since system start or restart. If total_elapsed_time exceeds the maximum value for an integer (24.8 days in milliseconds), it will cause materialization failure due to overflow.The maximum value in milliseconds is equivalent to 24.8 days.|  
|is_available|**bit**|Flag indicating whether this node is available.||  
|sent_time|**datetime**|Last time a network package was sent by this||  
|received_time|**datetime**|Last time a network package was sent by this node.||  
|error_id|**nvarchar(36)**|Unique identifier of the last error that occurred on this node.||  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](../Topic/PolyBase%20troubleshooting%20with%20dynamic%20management%20views.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  