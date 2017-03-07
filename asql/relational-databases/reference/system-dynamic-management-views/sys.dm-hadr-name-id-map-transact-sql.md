---
title: "sys.dm_hadr_name_id_map (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_hadr_name_id_map"
  - "sys.dm_hadr_name_id_map_TSQL"
  - "dm_hadr_name_id_map"
  - "dm_hadr_name_id_map_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], monitoring"
  - "sys.dm_hadr_name_id_map dynamic management view"
ms.assetid: e07bb8a9-37de-4a39-a257-950d7c3ae8fb
caps.latest.revision: 8
ms.author: "mikeray"
manager: "jhubbard"
---
# sys.dm_hadr_name_id_map (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Shows the mapping of Always On availability groups that the current instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] has joined to three unique IDs: an availability group ID, a WSFC resource ID, and a WSFC Group ID. The purpose of this mapping is to handle the scenario in which the WSFC resource/group is renamed.  
   
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**ag_name**|**nvarchar(256)**|Name of the availability group. This is a user-specified name that must be unique within the Windows Server Failover Cluster (WSFC) cluster.|  
|**ag_id**|**uniqueidentifier**|Unique identifier (GUID) of the availability group.|  
|**ag_resource_id**|**nvarchar(256)**|Unique ID of the availability group as a resource in the WSFC cluster.|  
|**ag_group_id**|**nvarchar(256)**|Unique WSFC Group ID of the availability group.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [Always On Availability Groups Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/17a77e24-d8b8-4f8a-8a7c-05d6c5d32d96.md)   
 [Always On Availability Groups Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/always-on-availability-groups-catalog-views-transact-sql.md)   
 [Monitor Availability Groups &#40;Transact-SQL&#41;](../../../database-engine/availability-groups/windows/monitor-availability-groups-transact-sql.md)   
 [Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/always-on-availability-groups-sql-server.md)  
  
  