---
title: "SQL Server, External Scripts Object | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-21"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "External Scripts object"
  - "SQLServer:External Scripts"
ms.assetid: 8a75ccce-b174-4937-bc92-8e413b55afe1
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server, External Scripts Object
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  The **SQLServer:External Scripts** object in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] provides counters to monitor the actions associated with executing external scripts. For information about executing external scripts, see [sp_execute_external_script &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md).  
  
 This table describes the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] **External Scripts** counters.  
  
|SQL Server External Scripts counters|Description|  
|------------------------------------------|-----------------|  
|**Execution Errors**|The number of errors in executing external scripts.|  
|**Implied Auth. Logins**|The number of logins from satellite processes authenticated by using implied authentication.|  
|**Parallel Executions**|The number of external scripts executed with @parallel = 1.|  
|**SQL CC Executions**|The number of external scripts executed using SQL Compute Context.|  
|**Streaming Executions**|The number of external scripts executed with the @r_rowsPerRead parameter.|  
|**Total Execution Time (ms)**|The total time spent in executing external scripts.|  
|**Total Executions**|The number of external scripts executed.|  
  
## See Also  
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)   
 [sys.resource_governor_external_resource_pools &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.resource-governor-external-resource-pools-transact-sql.md)   
 [sys.dm_resource_governor_external_resource_pool_affinity &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-external-resource-pool-affinity-transact-sql.md)  
  
  