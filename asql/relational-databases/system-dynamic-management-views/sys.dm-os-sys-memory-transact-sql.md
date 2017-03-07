---
title: "sys.dm_os_sys_memory (Transact-SQL) | Microsoft Docs"
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
  - "dm_os_sys_memory"
  - "sys.dm_os_sys_memory_TSQL"
  - "sys.dm_os_sys_memory"
  - "dm_os_sys_memory_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_sys_memory dynamic management view"
ms.assetid: 1ca58814-1caa-44c1-b307-ff0bdcbbef62
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_sys_memory (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns memory information from the operating system.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is bounded by, and responds to, external memory conditions at the operating system level and the physical limits of the underlying hardware. Determining the overall system state is an important part of evaluating [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] memory usage.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_sys_memory**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**total_physical_memory_kb**|**bigint**|Total size of physical memory available to the operating system, in kilobytes (KB).|  
|**available_physical_memory_kb**|**bigint**|Size of physical memory available, in KB.|  
|**total_page_file_kb**|**bigint**|Size of the commit limit reported by the operating system in KB|  
|**available_page_file_kb**|**bigint**|Total amount of page file thatis not being used, in KB.|  
|**system_cache_kb**|**bigint**|Total amount of system cache memory, in KB.|  
|**kernel_paged_pool_kb**|**bigint**|Total amount of the paged kernel pool, in KB.|  
|**kernel_nonpaged_pool_kb**|**bigint**|Total amount of the nonpaged kernel pool, in KB.|  
|**system_high_memory_signal_state**|**bit**|State of the system high memory resource notification. A value of 1 indicates the high memory signal has been set by Windows. For more information, see [CreateMemoryResourceNotification](http://go.microsoft.com/fwlink/?LinkId=82427) in the MSDN library.|  
|**system_low_memory_signal_state**|**bit**|State of the system low memory resource notification. A value of 1 indicates the low memory signal has been set by Windows. For more information, see [CreateMemoryResourceNotification](http://go.microsoft.com/fwlink/?LinkId=82427) in the MSDN library.|  
|**system_memory_state_desc**|**nvarchar(256)**|Description of the memory state. See the table below.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
|Condition|Value|  
|---------------|-----------|  
|system_high_memory_signal_state = 1<br /><br /> and<br /><br /> system_low_memory_signal_state = 0|Available physical memory is high|  
|system_high_memory_signal_state = 0<br /><br /> and<br /><br /> system_low_memory_signal_state = 1|Available physical memory is low|  
|system_high_memory_signal_state = 0<br /><br /> and<br /><br /> system_low_memory_signal_state = 0|Physical memory usage is steady|  
|system_high_memory_signal_state = 1<br /><br /> and<br /><br /> system_low_memory_signal_state = 1|Physical memory state is transitioning<br /><br /> The high and low signal should never be on at the same time. However, rapid changes at the operating system level can cause both values to appear to be on to a user mode application. The appearance of both signals being on will be interpreted as a transition state.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)  
  
  

