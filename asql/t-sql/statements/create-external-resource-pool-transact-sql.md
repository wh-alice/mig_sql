---
title: "CREATE EXTERNAL RESOURCE POOL (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-21"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CREATE EXTERNAL RESOURCE POOL"
  - "CREATE EXTERNAL_RESOURCE_POOL_TSQL"
  - "EXTERNAL RESOURCE POOL"
  - "EXTERNAL_RESOURCE_POOL_TSQL"
  - "EXTERNAL RESOURCE"
  - "EXTERNAL_RESOURCE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "CREATE EXTERNAL RESOURCE POOL statement"
ms.assetid: 8cc798ad-c395-461c-b7ff-8c561c098808
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# CREATE EXTERNAL RESOURCE POOL (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Creates an external pool used to define resources for external processes. For R Services the external pool governs `rterm.exe`, `BxlServer.exe`, and other processes spawned by them. A resource pool represents a subset of the physical resources (memory and CPUs) of an instance of the Database Engine. Resource Governor enables a database administrator to distribute server resources among resource pools, up to a maximum of 64 pools.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md).  
  
## Syntax  
  
```  
CREATE EXTERNAL RESOURCE POOL pool_name  
[ WITH (  
    [ MAX_CPU_PERCENT = value ]  
    [ [ , ] AFFINITY CPU =    
            {  
                AUTO   
              | ( <cpu_range_spec> )   
              | NUMANODE = ( <NUMA_node_id> )   
            } ]   
    [ [ , ] MAX_MEMORY_PERCENT = value ]  
    [ [ , ] MAX_PROCESSES = value ]   
    )   
]  
[ ; ]  
  
<CPU_range_spec> ::=    
{ CPU_ID | CPU_ID  TO CPU_ID } [ ,...n ]  
```  
  
## Arguments  
 *pool_name*  
 Is the user-defined name for the external resource pool. *pool_name* is alphanumeric, can be up to 128 characters, must be unique within an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], and must comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md).  
  
 MAX_CPU_PERCENT =*value*  
 Specifies the maximum average CPU bandwidth that all requests in the external resource pool will receive when there is CPU contention. *value* is an integer with a default setting of 100. The allowed range for *value* is from 1 through 100.  
  
 AFFINITY {CPU = AUTO | ( <CPU_range_spec> ) | NUMANODE = (<NUMA_node_range_spec>)}  
 Attach the external resource pool to specific CPUs. The default value is AUTO.  
  
 AFFINITY CPU = **(** <CPU_range_spec> **)** maps the external resource pool to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] CPUs identified by the given CPU_IDs.  
  
 When you use AFFINITY NUMANODE = **(** <NUMA_node_range_spec> **)**, the external resource pool is affinitized to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] physical CPUs that correspond to the given NUMA node or range of nodes.  
  
 MAX_MEMORY_PERCENT =*value*  
 Specifies the total server memory that can be used by requests in this external resource pool. *value* is an integer with a default setting of 100. The allowed range for *value* is from 1 through 100.  
  
 MAX_PROCESSES =*value*  
 Specifies the maximum number of processes allowed for the external resource pool. Specify 0 to set an unlimited threshold for the pool which will be bound only be computer resources. The default is 0.  
  
## Remarks  
 The [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] implements resource pool when you execute the [ALTER RESOURCE GOVERNOR RECONFIGURE](../../t-sql/statements/alter-resource-governor-transact-sql.md) statement.  
  
 For more information on resource pools, see [Resource Governor Resource Pool](../../relational-databases/resource-governor/resource-governor-resource-pool.md), [sys.resource_governor_external_resource_pools &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.resource-governor-external-resource-pools-transact-sql.md), and [sys.dm_resource_governor_external_resource_pool_affinity &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-external-resource-pool-affinity-transact-sql.md).  
  
## Permissions  
 Requires `CONTROL SERVER` permission.  
  
## Examples  
 The following statement defines an external pool that restricts CPU usage to 75 percent and the maximum memory to 30 percent of the available memory on the computer.  
  
```  
CREATE EXTERNAL RESOURCE POOL ep_1  
WITH (  
    MAX_CPU_PERCENT = 75  
    , AFFINITY CPU = AUTO  
    , MAX_MEMORY_PERCENT = 30  
);  
GO  
ALTER RESOURCE GOVERNOR RECONFIGURE;  
GO  
```  
  
## See Also  
 [external scripts enabled Server Configuration Option](../../database-engine/configure/windows/external-scripts-enabled-server-configuration-option.md)   
 [sp_execute_external_script &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md)   
 [SQL Server R Services](../../advanced-analytics/r-services/sql-server-r-services.md)   
 [Known Issues for SQL Server R Services](../../advanced-analytics/r-services/known-issues-for-sql-server-r-services.md)   
 [ALTER EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/alter-external-resource-pool-transact-sql.md)   
 [DROP EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/drop-external-resource-pool-transact-sql.md)   
 [CREATE RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/create-resource-pool-transact-sql.md)   
 [CREATE WORKLOAD GROUP &#40;Transact-SQL&#41;](../../t-sql/statements/create-workload-group-transact-sql.md)   
 [Resource Governor Resource Pool](../../relational-databases/resource-governor/resource-governor-resource-pool.md)   
 [sys.resource_governor_external_resource_pools &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.resource-governor-external-resource-pools-transact-sql.md)   
 [sys.dm_resource_governor_external_resource_pool_affinity &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-external-resource-pool-affinity-transact-sql.md)   
 [ALTER RESOURCE GOVERNOR &#40;Transact-SQL&#41;](../../t-sql/statements/alter-resource-governor-transact-sql.md)  
  
  