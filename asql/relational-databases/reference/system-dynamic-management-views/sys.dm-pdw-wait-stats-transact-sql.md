---
title: "sys.dm_pdw_wait_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-data-warehouse"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: cfb8d905-c34f-44de-9574-dde81e170916
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_wait_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Holds information related to the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] OS state related to instances running on the different nodes. For a list of waits types and their description, see [sys.dm_os_wait_stats](http://msdn.microsoft.com/en-us/library/ms179984\(v=sql.120\).aspx).  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|**pdw_node_id**|**int**|ID of the node this entry refers to.||  
|**wait_name**|**nvarchar(255)**|Name of the wait type.||  
|**max_wait_time**|**bigint**|Maximum wait time of this wait type.||  
|**request_count**|**bigint**|Number of waits of this wait type outstanding.||  
|**signal_time**|**bigint**|Difference between the time that the waiting thread was signaled and when it started running.||  
|**completed_count**|**bigint**|Total number of waits of this type completed since the last server restart.||  
|**wait_time**|**bigint**|Total wait time for this wait type in millisecons. Inclusive of signal_time.||  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-and-parallel-data-warehouse-dynamic-management-views.md)   
 [sys.dm_pdw_waits &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-pdw-waits-transact-sql.md)  
  
  