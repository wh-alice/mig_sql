---
title: "sys.resource_governor_external_resource_pools (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.resource_governor_external_resource_pools"
  - "sys.resource_governor_external_resource_pools_TSQL"
  - "resource_governor_external_resource_pools"
  - "resource_governor_external_resource_pools_TSQL"
helpviewer_keywords: 
  - "sys.resource_governor_external_resource_pools"
  - "resource_governor_external_resource_pools"
ms.assetid: 75063e36-a91b-496f-9936-88f3d57bd447
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.resource_governor_external_resource_pools (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Returns the stored external resource pool configuration in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Each row of the view determines the configuration of a pool.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|pool_id|**int**|Unique ID of the resource pool. Is not nullable.<br /><br /> **Note:** May be renamed in the future.|  
|name|**sysname**|Name of the resource pool. Is not nullable.|  
|max_cpu_percent|**int**|Maximum average CPU bandwidth allowed for all requests in the resource pool when there is CPU contention. Is not nullable.|  
|max_memory_percent|**int**|Percentage of total server memory that can be used by requests in this resource pool. Is not nullable. The effective maximum depends on the pool minimums. For example, max_memory_percent can be set to 100, but the effective maximum is lower.|  
|max_processes|**int**|Maximum number of concurrent external processes. The default value, 0, specifies no limit. Is not nullable.|  
|version|**bigint**|Internal version number.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission.  
  
## See Also  
 [Resource Governor Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/resource-governor-catalog-views-transact-sql.md)   
 [sys.dm_resource_governor_resource_pools &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-resource-governor-resource-pools-transact-sql.md)   
 [Resource Governor](../../relational-databases/resource-governor/resource-governor.md)   
 [sys.dm_resource_governor_resource_pool_affinity &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-resource-governor-resource-pool-affinity-transact-sql.md)   
 [external scripts enabled Server Configuration Option](../../database-engine/configure/windows/external-scripts-enabled-server-configuration-option.md)   
 [SQL Server R Services](../../advanced-analytics/r-services/sql-server-r-services.md)   
 [Known Issues for SQL Server R Services](../../advanced-analytics/r-services/known-issues-for-sql-server-r-services.md)   
 [ALTER EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/alter-external-resource-pool-transact-sql.md)  
  
  