---
title: "sys.availability_read_only_routing_lists (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "availability_read_only_routing_lists_TSQL"
  - "availability_read_only_routing_lists"
  - "sys.availability_read_only_routing_lists"
  - "sys.availability_read_only_routing_lists_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], monitoring"
  - "read-only routing"
  - "Availability Groups [SQL Server], readable secondary replicas"
  - "Availability Groups [SQL Server], read-only routing"
  - "readable secondary replicas"
  - "sys.availability_read_only_routing_lists dynamic management view"
ms.assetid: 0686bc5a-c206-41ef-b40a-79a8259d51d2
caps.latest.revision: 9
ms.author: "mikeray"
manager: "jhubbard"
---
# sys.availability_read_only_routing_lists (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns a row for the read only routing list of each availability replica in an Always On availability group in the WSFC failover cluster.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**replica_id**|**uniqueidentifier**|Unique ID of the availability replica that owns the routing list.|  
|**routing_priority**|**int**|Priority order for routing (1 is first, 2 is second, and so forth).|  
|**read_only_replica_id**|**uniqueidentifier**|Unique ID of the availability replica to which a read-only workload will be routed.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Always On Availability Groups Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/always-on-availability-groups-dynamic-management-views-functions.md)   
 [Always On Availability Groups Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/always-on-availability-groups-catalog-views-transact-sql.md)   
 [Monitor Availability Groups &#40;Transact-SQL&#41;](../../../database-engine/availability-groups/windows/monitor-availability-groups-transact-sql.md)   
 [Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/always-on-availability-groups-sql-server.md)  
  
  