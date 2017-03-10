---
title: "sys.dm_pdw_errors (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 944eac31-5691-432b-b9f5-f1e11c05191f
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_errors (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Holds information about all errors encountered during execution of a request or query.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|error_id|**nvarchar(36)**|Key for this view.<br /><br /> Unique numeric id associated with the error.|Unique across all query errors in the system.|  
|source|**nvarchar(64)**|[!INCLUDE[ssInfoNA](../../../relational-databases/reference/system-catalog-views/includes/ssinfona-md.md)]|[!INCLUDE[ssInfoNA](../../../relational-databases/reference/system-catalog-views/includes/ssinfona-md.md)]|  
|type|**nvarchar(4000)**|Type of error that occurred.|[!INCLUDE[ssInfoNA](../../../relational-databases/reference/system-catalog-views/includes/ssinfona-md.md)]|  
|create_time|**datetime**|Time at which the error occurred.|Smaller or equal to current time.|  
|pwd_node_id|**int**|Identifier of the specific node involved, if any. For additional information on node ids, see [sys.dm_pdw_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-pdw-nodes-transact-sql.md).||  
|session_id|**nvarchar(32)**|Identifier of the session involved, if any. For additional information on session ids, see  [sys.dm_pdw_exec_sessions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-pdw-exec-sessions-transact-sql.md).||  
|request_id|**nvarchar(32)**|Identifier of the request involved, if any. For additional information on request ids, see [sys.dm_pdw_exec_requests &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-pdw-exec-requests-transact-sql.md).||  
|spid|**int**|spid of the SQL Server session involved, if any.||  
|thread_id|**int**|[!INCLUDE[ssInfoNA](../../../relational-databases/reference/system-catalog-views/includes/ssinfona-md.md)]||  
|details|**nvarchar(4000)**|Holds the full error text description.||  
  
 For information about the maximum rows retained by this view, see the Maximum System View Values section in the [Minimum and Maximum Values (SQL Server PDW)](http://msdn.microsoft.com/en-us/5243f018-2713-45e3-9b61-39b2a57401b9) topic.  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-and-parallel-data-warehouse-dynamic-management-views.md)  
  
  