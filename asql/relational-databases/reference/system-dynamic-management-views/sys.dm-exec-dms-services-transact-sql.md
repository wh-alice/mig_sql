---
title: "sys.dm_exec_dms_services (Transact-SQL) | Microsoft Docs"
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
  - "DM_EXEC_DMS_SERVICES_TSQL"
  - "SYS.DM_EXEC_DMS_SERVICES_TSQL"
  - "DM_EXEC_DMS_SERVICES"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "PolyBase,views"
  - "PolyBase"
  - "dm_exec_dms_services management view"
  - "sys.dm_exec_dms_services management view"
ms.assetid: 6ac47eef-4293-46b8-8555-07a614837504
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_dms_services (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-asdw-pdw_md](../../../relational-databases/polybase/includes/tsql-appliesto-ss2016-xxxx-asdw-pdw-md.md)]

  Holds information about all of the DMS services running on the PolyBase compute nodes. It lists one row per service instance.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|dms_core_id|**int**|Unique numeric id associated with the DMS core. Key for this view.|Unique ID.|  
|compute_node_id|**int**|ID of the node on which this DMS service is running|See *compute_node_id* in [sys.dm_exec_compute_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-compute-nodes-transact-sql.md).|  
|status|**nvarchar(32)**|Current status of the DMS service||  
  
## See Also  
 [PolyBase troubleshooting with dynamic management views](http://msdn.microsoft.com/library/ce9078b7-a750-4f47-b23e-90b83b783d80)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  