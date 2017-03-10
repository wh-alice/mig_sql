---
title: "sys.dm_pdw_os_event_logs (Transact-SQL) | Microsoft Docs"
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
ms.assetid: a0daa8cf-72e2-4349-8be1-d3cc0f9b1e02
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_os_event_logs (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Holds information regarding the different Windows Event logs on the different nodes.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|pdw_node_id|**int**|Appliance node this log is from.<br /><br /> pdw_node_id and log_name form the key for this view.||  
|log_name|**nvarchar(255)**|Windows event log name.<br /><br /> pdw_node_id and log_name form the key for this view.||  
|log_source|**nvarchar(255)**|Windows event log source name.||  
|event_id|**int**|ID of the event. Not unique.||  
|event_type|**nvarchar(255)**|Type of the event, identifying severity.|'Information', 'Warning', 'Error'|  
|event_message|**nvarchar(4000)**|Details of the event.||  
|generate_time|**datetime**|Time the event was created.||  
|write_time|**datetime**|Time the event was actually written to the log.||  
  
 For information about the maximum rows retained by this view, see the Maximum System View Values section in the [Minimum and Maximum Values (SQL Server PDW)](http://msdn.microsoft.com/en-us/5243f018-2713-45e3-9b61-39b2a57401b9) topic.  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-and-parallel-data-warehouse-dynamic-management-views.md)  
  
  