---
title: "sys.dm_exec_external_operations (Transact-SQL) | Microsoft Docs"
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
  - "DM_EXEC_EXTERNAL_OPERATIONS_TSQL"
  - "DM_EXEC_EXTERNAL_OPERATIONS"
  - "SYS.DM_EXEC_EXTERNAL_OPERATIONS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PolyBase,views"
  - "PolyBase"
  - "sys.dm_exec_external_operations management view"
  - "dm_exec_external_operations management view"
ms.assetid: d268217a-85b8-4b7f-9cd1-87865eba2be1
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_external_operations (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Captures information about external PolyBase operations.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|execution_id|**nvarchar(32)**|Unique query identifier associated with PolyBase query|See ID in [sys.dm_exec_requests &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)|  
|step_index|**int**|Index of the query step|See step_index in [sys.dm_exec_distributed_request_steps &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-distributed-request-steps-transact-sql.md)|  
|operation_ type|**nvarchar(128)**|Describes a Hadoop operation or other external operation|‘External Hadoop Operation’|  
|operation_ name|**nvarchar(4000)**|Indicates how the status of job in percentage (how much is the input consumed)|0-1 – multiplied by factor 100 (completed)|  
|map_  progress|**float**|Indicates how the status of a reduce job in percentage, if any|0-1 – multiplied by factor 100 (completed)|  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](../../../a9retired/polybase-troubleshooting-with-dynamic-management-views.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  