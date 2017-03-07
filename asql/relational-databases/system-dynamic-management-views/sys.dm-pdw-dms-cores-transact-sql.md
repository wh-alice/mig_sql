---
title: "sys.dm_pdw_dms_cores (Transact-SQL) | Microsoft Docs"
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
ms.assetid: b3f09b15-0863-4418-9347-a4f5fd2ab7c7
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_dms_cores (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Holds information about all DMS services running on the Compute nodes of the appliance. It lists one row per service instance, which is currently one row per node.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|dms_core_id|**int**|Unique numeric id associated with this DMS core.<br /><br /> Key for this view.|Set to the pdw_node_id of the node that this DMS core is running on.|  
|pdw_node_id|**int**|ID of the node on which this DMS service is running.|See node_id in [sys.dm_pdw_nodes &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-pdw-nodes-transact-sql.md).|  
|status|**nvarchar(32)**|Current status of the DMS service.|[!INCLUDE[ssInfoNA](../../relational-databases/system-catalog-views/includes/ssinfona-md.md)]|  
  
 For information about the maximum rows retained by this view, see the Maximum System View Values section in the [Minimum and Maximum Values (SQL Server PDW)](http://msdn.microsoft.com/en-us/5243f018-2713-45e3-9b61-39b2a57401b9) topic.  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  