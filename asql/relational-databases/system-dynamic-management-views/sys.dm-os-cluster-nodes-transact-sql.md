---
title: "sys.dm_os_cluster_nodes (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_os_cluster_nodes_TSQL"
  - "dm_os_cluster_nodes_TSQL"
  - "dm_os_cluster_nodes"
  - "sys.dm_os_cluster_nodes"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_cluster_nodes dynamic management view"
ms.assetid: 92fa804e-2d08-42c6-a36f-9791544b1d42
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_cluster_nodes (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Returns one row for each node in the failover cluster instance configuration. If the current instance is a failover clustered instance, it returns a list of nodes on which this failover cluster instance (formerly "virtual server") has been defined. If the current server instance is not a failover clustered instance, it returns an empty rowset.  
  
> **NOTE:** To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_cluster_nodes**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**NodeName**|**sysname**|Name of a node in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster instance (virtual server) configuration.|  
|status|**int**|Status of the node in a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster instance: 0, 1, 2, 3, -1. For more information, see [GetClusterNodeState Function](http://go.microsoft.com/fwlink/?LinkId=204794).|  
|status_description|**nvarchar(20)**|Description of the status of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster node.<br /><br /> 0 = up<br /><br /> 1 = down<br /><br /> 2 = paused<br /><br /> 3 = joining<br /><br /> -1 = unknown|  
|is_current_owner|bit|1 means this node is the current owner of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster resource.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Remarks  
 When failover clustering is enabled, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance can run on any of the nodes of the failover cluster that are designated as part of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster instance (virtual server) configuration.  
  
> **NOTE:** This view replaces the fn_virtualservernodes function, which will be deprecated in a future release.  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
## Examples  
 The following example uses sys. dm_os_cluster_nodes to return the nodes on a clustered server instance.  
  
```  
SELECT NodeName, status, status_description, is_current_owner   
FROM sys.dm_os_cluster_nodes;  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
|NodeName|status|status_description|is_current_owner|  
|--------------|------------|-------------------------|------------------------|  
|node1|0|up|1|  
|node2|0|up|0|  
|Node3|1|down|0|  
  
## See Also  
 [sys.dm_os_cluster_properties &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-os-cluster-properties-transact-sql.md)   
 [sys.dm_io_cluster_shared_drives &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-io-cluster-shared-drives-transact-sql.md)   
 [sys.fn_virtualservernodes &#40;Transact-SQL&#41;](../../relational-databases/system-functions/sys.fn-virtualservernodes-transact-sql.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)  
  
  

