---
title: "sys.dm_pdw_os_performance_counters (Transact-SQL) | Microsoft Docs"
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
ms.assetid: 0673a8f8-8bed-41eb-8959-a9e3e9e03a65
caps.latest.revision: 8
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_os_performance_counters (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Contains information about Windows performance counters for the nodes in [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)].  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|pdw_node_id|**int**|The ID of the node that contains the counter.<br /><br /> pdw_node_id and counter_name form the key for this view.|See node_id in [sys.dm_pdw_nodes &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-pdw-nodes-transact-sql.md).|  
|counter_name|**nvarchar(255)**|Name of Windows performance counter.||  
|counter_category|**nvarchar(255)**|Name of Windows performance counter category.||  
|instance_name|**nvarchar(255)**|Name of the specific instance of the counter.||  
|counter_value|**Decimal(38,10)**|Current value of the counter.||  
|last_update_time|**Datetime2(3)**|Timestamp of last time the value was updated.||  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  