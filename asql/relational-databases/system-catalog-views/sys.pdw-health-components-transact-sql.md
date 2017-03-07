---
title: "sys.pdw_health_components (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d5c7589b-09b0-4f12-ab84-feb3ec3fbaaa
caps.latest.revision: 6
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.pdw_health_components (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Stores information about all components and devices that exist in the system. These include hardware, storage devices, and network devices.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|component_id|**int**|Unique identifier of a component or device.<br /><br /> Key for this view.|NOT NULL|  
|group_id|**Int**|The logical component group to which this component belongs. See [sys.pdw_health_components (Parallel Data Warehouse)](../../relational-databases/system-catalog-views/sys.pdw-health-components-transact-sql.md).|NOT NULL|  
|component_name|**nvarchar(255)**|Name of the component.|NOT NULL|  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Catalog Views](../../relational-databases/system-catalog-views/sql-data-warehouse-and-parallel-data-warehouse-catalog-views.md)  
  
  