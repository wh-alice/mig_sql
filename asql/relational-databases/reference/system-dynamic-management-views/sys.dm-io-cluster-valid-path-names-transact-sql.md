---
title: "sys.dm_io_cluster_valid_path_names (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_io_cluster_valid_path_names"
  - "dm_io_cluster_valid_path_names_TSQL"
  - "sys.dm_io_cluster_valid_path_names_TSQL"
  - "dm_io_cluster_valid_path_names"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dm_io_cluster_valid_path_names"
  - "sys.dm_io_cluster_valid_path_names"
  - "cluster valid path names"
  - "csv name"
  - "cluster shared volume names"
ms.assetid: 5bc8a0e5-6c72-425b-8c58-f276eb9add2c
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_io_cluster_valid_path_names (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2014-xxxx-xxxx-xxx_md](../../../integration-services/includes/tsql-appliesto-ss2014-xxxx-xxxx-xxx-md.md)]

  Returns information on all valid shared disks, including clustered shared volumes, for a SQL Server failover cluster instance. If the instance is not clustered, an empty rowset is returned.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**path_name**|**Nvarchar(512)**|Volume mount point or drive path that can be used as a root directory for database and log files. Is not nullable.|  
|**cluster_owner_node**|**Nvarchar(64)**|Current owner of the drive. For cluster shared volumes (CSV), the owner is the node which is hosting the MetaData Server. Is not nullable.|  
|**is_cluster_shared_volume**|**Bit**|Returns 1 if the drive on which this path is located is a cluster shared volume; otherwise, returns 0.|  
  
## Remarks  
 A SQL Server failover cluster instance (FCI) must use shared storage between all nodes of the FCI for data and log file storage. The disks listed in this view are those that are in the cluster resource group associated with the instance and are the only disks that can be used for data or log file storage.  
  
> [!NOTE]  
>  This view will replace [sys.dm_io_cluster_shared_drives &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-io-cluster-shared-drives-transact-sql.md) in a future release.  
  
## Permissions  
 The user must have VIEW SERVER STATE permission for the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance.  
  
## Examples  
 The following example uses sys.dm_io_cluster_valid_path_names to determine the shared drives on a clustered server instance:  
  
```  
SELECT * FROM sys.dm_io_cluster_valid_path_names;  
```  
  
## See Also  
 [sys.dm_os_cluster_nodes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-cluster-nodes-transact-sql.md)   
 [sys.dm_io_cluster_shared_drives &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-io-cluster-shared-drives-transact-sql.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)  
  
  