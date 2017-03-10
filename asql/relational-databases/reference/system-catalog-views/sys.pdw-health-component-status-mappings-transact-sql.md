---
title: "sys.pdw_health_component_status_mappings (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4272cfad-5ad7-493d-9edd-d9111619bda0
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.pdw_health_component_status_mappings (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Defines the mapping between the [!INCLUDE[ssDW](../../../database-engine/configure/windows/includes/ssdw-md.md)] component statuses and the manufacturer-defined component names.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|property_id|**int**|Unique identifier of the property.<br /><br /> property_id, component_id, and physical_name form the key for this view.|NOT NULL|  
|component_id|**int**|The ID of the component. See [sys.pdw_health_components &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-health-components-transact-sql.md).<br /><br /> property_id, component_id, and physical_name form the key for this view.|NOT NULL|  
|physical_name|**nvarchar(32)**|Property name as defined by the manufacturer.<br /><br /> property_id, component_id, and physical_name form the key for this view.|NOT NULL|  
|logical_name|**nvarchar(255)**|Property name as defined by [!INCLUDE[ssDW](../../../database-engine/configure/windows/includes/ssdw-md.md)].|NOT NULL<br /><br /> 0 - Device instance is unique.<br /><br /> 1 - Device instance is not unique.|  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Catalog Views](../../../relational-databases/reference/system-catalog-views/sql-data-warehouse-and-parallel-data-warehouse-catalog-views.md)  
  
  