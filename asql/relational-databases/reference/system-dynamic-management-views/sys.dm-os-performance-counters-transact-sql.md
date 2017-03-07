---
title: "sys.dm_os_performance_counters (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-23"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_os_performance_counters"
  - "sys.dm_os_performance_counters_TSQL"
  - "dm_os_performance_counters_TSQL"
  - "sys.dm_os_performance_counters"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_os_performance_counters dynamic management view"
ms.assetid: a1c3e892-cd48-40d4-b6be-2a9246e8fbff
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_os_performance_counters (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-asdw-pdw-_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-asdb-asdw-pdw-md.md)]

  Returns a row per performance counter maintained by the server. For information about each performance counter, see [Use SQL Server Objects](../../../relational-databases/monitor/performance-monitor/use-sql-server-objects.md).  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_os_performance_counters**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_name**|**nchar(128)**|Category to which this counter belongs.|  
|**counter_name**|**nchar(128)**|Name of the counter. To get more information about a counter, this is the name of the topic to select from the list of counters in [Use SQL Server Objects](../../../relational-databases/monitor/performance-monitor/use-sql-server-objects.md). |  
|**instance_name**|**nchar(128)**|Name of the specific instance of the counter. Often contains the database name.|  
|**cntr_value**|**bigint**|Current value of the counter.<br /><br /> **Note:** For per-second counters, this value is cumulative. The rate value must be calculated by sampling the value at discrete time intervals. The difference between any two successive sample values is equal to the rate for the time interval used.|  
|**cntr_type**|**int**|Type of counter as defined by the Windows performance architecture. See [WMI Performance Counter Types](http://msdn2.microsoft.com/library/aa394569.aspx) on MSDN or your Windows Server documentation for more information on performance counter types.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Remarks  
 If the installation instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] fails to display the performance counters of the Windows operating system, use the following [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] query to confirm that performance counters have been disabled.  
  
```  
SELECT COUNT(*) FROM sys.dm_os_performance_counters;  
```  
  
 If the return value is 0 rows, this means that the performance counters have been disabled. You should then look at the setup log and search for error 3409, "Reinstall sqlctr.ini for this instance, and ensure that the instance login account has correct registry permissions."  This denotes that performance counters were not enabled. The errors immediately before the 3409 error should indicate the root cause for the failure of performance counter enabling. For more information about setup log files, see [View and Read SQL Server Setup Log Files](../../../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md).  
  
## Permission  
 Requires VIEW SERVER STATE permission on the server.  
  
## Examples  
 The following example returns performance counter values.  
  
```  
SELECT object_name, counter_name, instance_name, cntr_value, cntr_type  
FROM sys.dm_os_performance_counters;  
  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [SQL Server Operating System Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sql-server-operating-system-related-dynamic-management-views-transact-sql.md)   
 [sys.sysperfinfo &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-compatibility-views/sys.sysperfinfo-transact-sql.md)  
  
  

