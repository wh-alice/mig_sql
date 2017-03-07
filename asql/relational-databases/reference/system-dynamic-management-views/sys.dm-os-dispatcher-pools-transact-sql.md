---
title: "sys.dm_os_dispatcher_pools (Transact-SQL) | Microsoft Docs"
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
  - "dm_os_dispatcher_pools_TSQL"
  - "dm_os_dispatcher_pools"
  - "sys.dm_os_dispatcher_pools"
  - "sys.dm_os_dispatcher_pools_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "extended events [SQL Server], views"
  - "sys.dm_os_dispatcher_pools DMV"
ms.assetid: b9edbc83-c6bc-4753-9bb5-a454cfe7d6bf
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_dispatcher_pools (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns information about session dispatcher pools. Dispatcher pools are thread pools used by system components to perform background processing.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_dispatcher_pools**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|dispatcher_pool_address|**varbinary(8)**|The address of the dispatcher pool. dispatcher_pool_address is unique. Is not nullable.|  
|type|**nvarchar(256)**|The type of the dispatcher pool. Is not nullable. There are two types of dispatcher pools:<br /><br /> DISP_POOL_XE_ENGINE<br /><br /> DISP_POOL_XE_SESSION<br /><br /> Query the DMV for the full list|  
|name|**nvarchar(256)**|The name of the dispatcher pool. Is not nullable.|  
|dispatcher_count|**int**|The number of active dispatcher threads. Is not nullable.|  
|dispatcher_ideal_count|**int**|The number of dispatcher threads that the dispatcher pool can grow to use. Is not nullable.|  
|dispatcher_timeout_ms|**int**|The time, in milliseconds, that a dispatcher will wait for new work before exiting. Is not nullable.|  
|dispatcher_waiting_count|**int**|The number of idle dispatcher threads. Is not nullable.|  
|queue_length|**int**|The number of work items waiting to be handled by the dispatcher pool. Is not nullable.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)  
  
  

