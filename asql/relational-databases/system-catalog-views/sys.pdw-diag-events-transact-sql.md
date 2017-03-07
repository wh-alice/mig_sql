---
title: "sys.pdw_diag_events (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 59bb3e9c-2829-49a0-b382-652ed1f54f88
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.pdw_diag_events (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Holds information about events that can be included in diagnostic sessions on the system.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|**name**|**nvarchar(255)**|Name of the specific diagnostics event.||  
|**source**|**nvarchar(255)**|Source of the event (engine, general, dms, etc.)||  
|**is_enabled**|**bit**|Whether the event is being published.||  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Catalog Views](../../relational-databases/system-catalog-views/sql-data-warehouse-and-parallel-data-warehouse-catalog-views.md)  
  
  