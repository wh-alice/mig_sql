---
title: "sys.dm_pdw_diag_processing_stats (Transact-SQL) | Microsoft Docs"
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
ms.assetid: df659c55-4f63-45f8-8afe-ce300031bc5b
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_diag_processing_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Displays information related to all internal diagnostic events that could be incorporated into diagnostic sessions defined by the administrator. Query this view to understand the statistics behind the diagnostics and eventing subsystems that drive the population of all the other DMVs. There are a group of queues for each process on each node.  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|**pdw_node_id**|**int**|Appliance node this log is from.|  
|**process_id**|**int**|Identifier of the process running submitting this statistic.|  
|**target_name**|**nvarchar(255)**|The name of the queue.|  
|**queue_size**|**int**|The number of items in the process queue. The queue size is usually 0. A positive number indicates that the system is under stress and is building backlog of events. A positive count in the other columns means system has become corrupted for that particular queue and any related DMVs.|  
|**lost_events_count**|**bigint**|The number of events lost.|  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  