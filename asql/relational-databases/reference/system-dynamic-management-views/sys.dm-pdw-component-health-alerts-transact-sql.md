---
title: "sys.dm_pdw_component_health_alerts (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 88f05392-1e97-4693-ba60-a4910af3c000
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_pdw_component_health_alerts (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-xxxx-pdw-md.md)]

  Stores previously issued alerts on appliance components.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|pdw_node_id|**int**|Unique identifier of a [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)] node.<br /><br /> pdw_node_id, component_id, component_instance_id, alert_id, and alert_instance_id form the key for this view.|NOT NULL|  
|component_id|**int**|The ID of the component. See [sys.pdw_health_components &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-health-components-transact-sql.md).<br /><br /> pdw_node_id, component_id, component_instance_id, alert_id, and alert_instance_id form the key for this view.|NOT NULL|  
|component_instance_id|**nvarchar(255)**|pdw_node_id, component_id, component_instance_id, alert_id, and alert_instance_id form the key for this view.|NOT NULL|  
|alert_id|**int**|The ID for the alert type. See [sys.pdw_health_alerts &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-health-alerts-transact-sql.md).<br /><br /> pdw_node_id, component_id, component_instance_id, alert_id, and alert_instance_id form the key for this view.|NOT NULL|  
|alert_instance_id|**nvarchar(36)**|Identifies an instance of a given alert.<br /><br /> pdw_node_id, component_id, component_instance_id, alert_id, and alert_instance_id form the key for this view.|NOT NULL|  
|previous_value|**nvarchar(255)**|Used when the alert is of type StatusChange. This is the previous component status. Value is NULL for alerts of type Threshold. See [sys.pdw_health_alerts &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-health-alerts-transact-sql.md) for a list of alert types.|NULL|  
|current_value|**nvarchar(255)**|Used when the alert is of type StatusChange. This is the current component status. Value is NULL for alerts of type Threshold. See [sys.pdw_health_alerts &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-health-alerts-transact-sql.md) for a list of alert types.|NULL|  
|create_time|**datetime**|Time and date when the alert was generated.|NOT NULL|  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/e713365e-d44c-4b66-84c9-81a1bcc32414.md)  
  
  