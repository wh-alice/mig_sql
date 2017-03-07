---
title: "sys.dm_pdw_sys_info (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 686976b4-2d5d-4d64-bf12-56eba1dc59b1
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_sys_info (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Provides a set of appliance-level counters that reflect overall activity on the appliance.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|total_sessions|**int**|Number of sessions currently in the system.|0 to max_active_sessions (see below).|  
|idle_sessions|**int**|Number of sessions currently idle.||  
|active_requests|**int**|Number of active requests currently running.||  
|queued_requests|**int**|Number of currently queued requests.||  
|active_loads|**int**|Number of loads currently running in the system.||  
|queued_loads|**int**|Number of queued loads waiting for execution.||  
|active_backups|**int**|Number of backups currently running.||  
|active_restores|**int**|Number of backup restores currently running.||  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  