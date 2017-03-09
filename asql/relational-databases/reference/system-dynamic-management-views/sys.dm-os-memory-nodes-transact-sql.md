---
title: "sys.dm_os_memory_nodes (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_os_memory_nodes_TSQL"
  - "sys.dm_os_memory_nodes"
  - "sys.dm_os_memory_nodes_TSQL"
  - "dm_os_memory_nodes"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_memory_nodes dynamic management view"
ms.assetid: bf4032fe-7db1-40e9-a62e-d69cebff4b44
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_memory_nodes (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Allocations that are internal to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] use the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] memory manager. Tracking the difference between process memory counters from **sys.dm_os_process_memory** and internal counters can indicate memory use from external components in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] memory space.  
  
 Nodes are created per physical NUMA memory nodes. These might be different from the CPU nodes in **sys.dm_os_nodes**.  
  
 No allocations done directly through Windows memory allocations routines are tracked. The following table provides information about memory allocations done only by using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] memory manager interfaces.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_memory_nodes**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**memory_node_id**|**smallint**|Specifies the ID of the memory node. Related to **memory_node_id** of **sys.dm_os_memory_clerks**. Not nullable.|  
|**virtual_address_space_reserved_kb**|**bigint**|Indicates the number of virtual address reservations, in kilobytes (KB), which are neither committed nor mapped to physical pages. Not nullable.|  
|**virtual_address_space_committed_kb**|**bigint**|Specifies the amount of virtual address, in KB, that has been committed or mapped to physical pages. Not nullable.|  
|**locked_page_allocations_kb**|**bigint**|Specifies the amount of physical memory, in KB, that has been locked by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Not nullable.|  
|**single_pages_kb**|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].<br /><br /> Amount of committed memory, in KB, that is allocated by using the single page allocator by threads running on this node. This memory is allocated from the buffer pool. This value indicates the node where allocations request occurred, not the physical location where the allocation request was satisfied.|  
|**pages_kb**|**bigint**|**Applies to**: [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Specifies the amount of committed memory, in KB, which is allocated from this NUMA node by Memory Manager Page Allocator. Not nullable.|  
|**multi_pages_kb**|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)].<br /><br /> Amount of committed memory, in KB, that is allocated by using the multipage allocator by threads running on this node. This memory is from outside the buffer pool. This value indicates the node where the allocation requests occurred, not the physical location where the allocation request was satisfied.|  
|**shared_memory_reserved_kb**|**bigint**|Specifies the amount of shared memory, in KB, that has been reserved from this node. Not nullable.|  
|**shared_memory_committed_kb**|**bigint**|Specifies the amount of shared memory, in KB, that has been committed on this node. Not nullable.|  
|**cpu_affinity_mask**|**bigint**|**Applies to**: [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Internal use only. Not nullable.|  
|**online_scheduler_mask**|**bigint**|**Applies to**: [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Internal use only. Not nullable.|  
|**processor_group**|**smallint**|**Applies to**: [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Internal use only. Not nullable.|  
|**foreign_committed_kb**|**bigint**|**Applies to**: [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Specifies the amount of committed memory, in KB, from other memory nodes. Not nullable.|  
|**target_kb** |**bigint** |**Applies to**: [!INCLUDE[ssSQL15_md](../../../analysis-services/powershell/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], [!INCLUDE[ssSDS_md](../../../analysis-services/multidimensional-models/includes/sssds-md.md)].<br /><br /> Specifies the memory goal for the memory node, in KB. |   
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires `VIEW SERVER STATE` permission on the server.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

