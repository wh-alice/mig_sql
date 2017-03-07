---
title: "sys.dm_os_memory_brokers (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_os_memory_brokers"
  - "dm_os_memory_brokers_TSQL"
  - "sys.dm_os_memory_brokers_TSQL"
  - "dm_os_memory_brokers"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_memory_brokers dynamic management view"
ms.assetid: 48dd6ad9-0d36-4370-8a12-4921d0df4b86
caps.latest.revision: 19
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_memory_brokers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Allocations that are internal to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] use the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] memory manager. Tracking the difference between process memory counters from **sys.dm_os_process_memory** and internal counters can indicate memory use from external components in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] memory space.  
  
 Memory brokers fairly distribute memory allocations between various components within [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], based on current and projected usage. Memory brokers do not perform allocations. They only track allocations for computing distribution.  
  
 The following table provides information about memory brokers.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_memory_brokers**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**pool_id**|**int**|ID of the resource pool if it is associated with a Resource Governor pool.|  
|**memory_broker_type**|**nvarchar(60)**|Type of memory broker. There are currently three types of memory brokers in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], listed below with their descriptions.<br /><br /> **MEMORYBROKER_FOR_CACHE** : Memory that is allocated for use by cached objects.<br /><br /> **MEMORYBROKER_FOR_STEAL** : Memory that is stolen from the buffer pool. This memory is not available for reuse by other components until it is freed by the current owner.<br /><br /> **MEMORYBROKER_FOR_RESERVE** : Memory reserved for future use by currently executing requests.|  
|**allocations_kb**|**bigint**|Amount of memory, in kilobytes (KB), that has been allocated to this type of broker.|  
|**allocations_kb_per_sec**|**bigint**|Rate of memory allocations in kilobytes (KB) per second. This value can be negative for memory deallocations.|  
|**predicted_allocations_kb**|**bigint**|Predicted amount of allocated memory by the broker. This is based on the memory usage pattern.|  
|**target_allocations_kb**|**bigint**|Recommended amount of allocated memory, in kilobytes (KB), that is based on current settings and the memory usage pattern. This broker should grow to or shrink to this number.|  
|**future_allocations_kb**|**bigint**|Projected number of allocations, in kilobytes (KB), that will be done in the next several seconds.|  
|**overall_limit_kb**|**bigint**|Maximum amount of memory, in kilobytes (KB), that the the broker can allocate.|  
|**last_notification**|**nvarchar(60)**|Memory usage recommendation that is based on the current settings and usage pattern. Valid values are as follows:<br /><br /> grow<br /><br /> shrink<br /><br /> stable|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

