---
title: "sys.dm_pdw_query_stats_xe_file (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
ms.assetid: e0cd402f-04d0-4a5b-b725-88b31bb7862e
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_query_stats_xe_file (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  This DMV is deprecated and will be removed in a future release. In this release, it returns 0 rows.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|event|**nvarchar(60)**|Key for this view.||  
|data|**xml**|||  
|pdw_node_id|**int**|Node on which this Xevent instance is running.||  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  