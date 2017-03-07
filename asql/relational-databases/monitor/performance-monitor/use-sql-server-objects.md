---
title: "Use SQL Server Objects | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "server performance [SQL Server], objects for monitoring"
  - "database monitoring [SQL Server], objects for monitoring"
  - "charts [SQL Server]"
  - "System Monitor [SQL Server], counters"
  - "counters [SQL Server], listed"
  - "objects [SQL Server], performance monitoring"
  - "objects [SQL Server], Windows System Monitor"
  - "performance counters [SQL Server], about performance counters"
  - "System Monitor [SQL Server], objects"
  - "performance counters [SQL Server]"
  - "counters [SQL Server], about performance counters"
  - "tuning databases [SQL Server], objects for monitoring"
  - "database performance [SQL Server], objects for monitoring"
  - "SQL Server, objects"
  - "monitoring performance [SQL Server], objects for monitoring"
  - "Windows System Monitor [SQL Server], objects"
  - "Windows System Monitor [SQL Server], counters"
  - "counters [SQL Server]"
  - "performance counters [SQL Server], listed"
ms.assetid: bcd731b1-3c4e-4086-b58a-af7a3af904ad
caps.latest.revision: 56
ms.author: "rickbyh"
manager: "jhubbard"
---
# Use SQL Server Objects
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Microsoft [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] provides objects and counters that can be used by System Monitor to monitor activity in computers running an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. An object is any [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] resource, such as a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] lock or Windows process. Each object contains one or more counters that determine various aspects of the objects to monitor. For example, the **SQL Server Locks** object contains counters called **Number of Deadlocks/sec** and **Lock Timeouts/sec**.  
  
 Some objects have several instances if multiple resources of a given type exist on the computer. For example, the **Processor** object type will have multiple instances if a system has multiple processors. The **Databases** object type has one instance for each database on [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. Some object types (for example, the **Memory Manager** object) have only one instance. If an object type has multiple instances, you can add counters to track statistics for each instance, or in many cases, all instances at once. Counters for the default instance appear in the format **SQLServer:***\<object name>*. Counters for named instances appear in the format **MSSQL$***\<instance name>***:***\<counter name>* or **SQLAgent$***\<instance name>***:***\<counter name>*.  
  
 By adding or removing counters to the chart and saving the chart settings, you can specify the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] objects and counters that are monitored when System Monitor is started.  
  
 You can configure System Monitor to display statistics from any [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] counter. In addition, you can set a threshold value for any [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] counter and then generate an alert when a counter exceeds a threshold. For more information about setting an alert, see [Create a SQL Server Database Alert](../../../relational-databases/monitor/performance-monitor/create-a-sql-server-database-alert.md).  
  
> [!TIP]  
>  You can also return the performance counter values by querying the [sys.dm_os_performance_counters &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-performance-counters-transact-sql.md) dynamic management view.  
  
> [!NOTE]  
>  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] statistics are displayed only when an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is installed. If you stop and restart an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the display of statistics is interrupted and resumes automatically. Also note that you will see [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] counters in the System Monitor snap-in even if [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is not running. On a clustered instance, performance counters only function on the node where [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is running.  
  
 This topic contains the following sections:  
  
-   [SQL Server Agent Performance Objects](#SQLServerAgentPOs)  
  
-   [Service Broker Performance Objects](#ServiceBrokerPOs)  
  
-   [SQL Server Performance Objects](#SQLServerPOs)  
  
-   [SQL Server Replication Performance Objects](#SQLServerReplicationPOs)  
  
-   [SSIS Pipeline Counters](#SsisPipelineCounters)  
  
-   [Required Permissions](#RequiredPermissions)  
  
##  <a name="SQLServerAgentPOs"></a> SQL Server Agent Performance Objects  
 The following table lists the performance objects provided for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent:  
  
|Performance object|Description|  
|------------------------|-----------------|  
|[SQLAgent:Alerts](../../../relational-databases/monitor/performance-monitor/sql-server-agent-alerts-object.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent alerts.|  
|[SQLAgent:Jobs](../../../relational-databases/monitor/performance-monitor/sql-server-agent-jobs-object.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent jobs.|  
|[SQLAgent:JobSteps](../../../relational-databases/monitor/performance-monitor/sql-server-agent-jobsteps-object.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent job steps.|  
|[SQLAgent:Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-agent-statistics-object.md)|Provides general information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent.|  
  
##  <a name="ServiceBrokerPOs"></a> Service Broker Performance Objects  
 The following table lists the performance objects provided for [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)].  
  
|Performance object|Description|  
|------------------------|-----------------|  
|[SQLServer:Broker Activation](../../../relational-databases/monitor/performance-monitor/sql-server-broker-activation-object.md)|Provides information about [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)]-activated tasks.|  
|[SQLServer:Broker Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-broker-statistics-object.md)|Provides general [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] information.|  
|[SQLServer:Broker Transport](../../../relational-databases/monitor/performance-monitor/sql-server-broker-dbm-transport-object.md)|Provides information on [!INCLUDE[ssSB](../../../database-engine/configure/windows/includes/sssb-md.md)] networking.|  
  
##  <a name="SQLServerPOs"></a> SQL Server Performance Objects  
 The following table describes [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] objects.  
  
|Performance object|Description|  
|------------------------|-----------------|  
|[SQLServer:Access Methods](../../../relational-databases/monitor/performance-monitor/sql-server-access-methods-object.md)|Searches through and measures allocation of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database objects (for example, the number of index searches or number of pages that are allocated to indexes and data).|  
|[SQLServer:Backup Device](../../../relational-databases/monitor/performance-monitor/sql-server-backup-device-object.md)|Provides information about backup devices used by backup and restore operations, such as the throughput of the backup device.|  
|[SQLServer:Batch Resp Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-batch-resp-statistics-object.md)|Counters to track SQL Batch Response times.| 
|[SQLServer:Buffer Manager](../../../relational-databases/monitor/performance-monitor/sql-server-buffer-manager-object.md)|Provides information about the memory buffers used by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], such as **freememory** and **buffer cache hit ratio**.|  
|[SQL Server:Buffer Node](../../../relational-databases/monitor/performance-monitor/sql-server-buffer-node.md)|Provides information about how frequently [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] requests and accesses free pages.|  
|[SQLServer:Catalog Metadata](../../../relational-databases/monitor/performance-monitor/sql-server-catalog-metadata-object.md)|This defines a catalog metadata manager object for SQL Server.| 
|[SQLServer:CLR](../../../relational-databases/monitor/performance-monitor/sql-server-clr-object.md)|Provides information about the common language runtime (CLR).|  
|[SQLServer:Columnstore](../../../relational-databases/monitor/performance-monitor/sql-server-columnstore-object.md)|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]).<br /><br /> Provides information about rowgroups and segments for columnstore indexes.|  
|[SQLServer:Cursor Manager by Type](../../../relational-databases/monitor/performance-monitor/sql-server-cursor-manager-by-type-object.md)|Provides information about cursors.|  
|[SQLServer:Cursor Manager Total](../../../relational-databases/monitor/performance-monitor/sql-server-cursor-manager-total-object.md)|Provides information about cursors.|  
|[SQLServer:Database Mirroring](../../../relational-databases/monitor/performance-monitor/sql-server-database-mirroring-object.md)|Provides information about database mirroring.|  
|[SQLServer:Databases](../../../relational-databases/monitor/performance-monitor/sql-server-databases-object.md)|Provides information about a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] database, such as the amount of free log space available or the number of active transactions in the database. There can be multiple instances of this object.|  
|[SQL Server:Deprecated Features](../../../relational-databases/monitor/performance-monitor/sql-server-deprecated-features-object.md)|Counts the number of times that deprecated features are used.|  
|[SQLServer:Exec Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-execstatistics-object.md)|Provides information about execution statistics.|  
|[SQL Server:External Scripts](../../../relational-databases/monitor/performance-monitor/sql-server-external-scripts-object.md)|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]).<br /><br /> Provides information about external script execution.|  
|[SQLServer:FileTable](../../../relational-databases/monitor/performance-monitor/sql-server-filetable-object.md)|Statistics associated with FileTable and non-transacted access.|  
|[SQLServer:General Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-general-statistics-object.md)|Provides information about general server-wide activity, such as the number of users who are connected to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|  
|[SQL Server:HADR Availability Replica](../../../relational-databases/monitor/performance-monitor/sql-server-availability-replica.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)][!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] availability replicas.|  
|[SQL Server:HADR Database Replica](../../../relational-databases/monitor/performance-monitor/sql-server-database-replica.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)][!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] database replicas.|  
|[SQLServer:Latches](../../../relational-databases/monitor/performance-monitor/sql-server-latches-object.md)|Provides information about the latches on internal resources, such as database pages, that are used by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|  
|[SQLServer:Locks](../../../relational-databases/monitor/performance-monitor/sql-server-locks-object.md)|Provides information about the individual lock requests made by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], such as lock time-outs and deadlocks. There can be multiple instances of this object.|  
|[SQLServer:LogPool FreePool](../../../relational-databases/monitor/performance-monitor/sql-server-logpool-freepool-object.md)|Describes statistics for the free pool inside the Log Pool.|
|[SQLServer:Memory Broker Clerks](../../../relational-databases/monitor/performance-monitor/sql-server-memory-broker-clerks-object.md)|Statistics related to memory broker clerks.|
|[SQLServer:Memory Manager](../../../relational-databases/monitor/performance-monitor/sql-server-memory-manager-object.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] memory usage, such as the total number of lock structures currently allocated.|  
|[SQLServer:Plan Cache](../../../relational-databases/monitor/performance-monitor/sql-server-plan-cache-object.md)|Provides information about the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] cache used to store objects such as stored procedures, triggers, and query plans.|  
|[SQLServer: Query Store](../../../relational-databases/monitor/performance-monitor/sql-server-query-store-object.md)|Provides information about the Query Store.|  
|[SQLServer: Resource Pool Stats](../../../relational-databases/monitor/performance-monitor/sql-server-resource-pool-stats-object.md)|Provides information about Resource Governor resource pool statistics.|  
|[SQLServer:SQL Errors](../../../relational-databases/monitor/performance-monitor/sql-server-sql-errors-object.md)|Provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] errors.|  
|[SQLServer:SQL Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-sql-statistics-object.md)|Provides information about aspects of [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] queries, such as the number of batches of [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statements received by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|  
|[SQLServer:Transactions](../../../relational-databases/monitor/performance-monitor/sql-server-transactions-object.md)|Provides information about the active transactions in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], such as the overall number of transactions and the number of snapshot transactions.|  
|[SQLServer:User Settable](../../../relational-databases/monitor/performance-monitor/sql-server-user-settable-object.md)|Performs custom monitoring. Each counter can be a custom stored procedure or any [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statement that returns a value to be monitored.|  
|[SQLServer: Wait Statistics](../../../relational-databases/monitor/performance-monitor/sql-server-wait-statistics-object.md)|Provides information about waits.|  
|[SQLServer: Workload Group Stats](../../../relational-databases/monitor/performance-monitor/sql-server-workload-group-stats-object.md)|Provides information about Resource Governor workload group statistics.|  
  
##  <a name="SQLServerReplicationPOs"></a> SQL Server Replication Performance Objects  
 The following table lists the performance objects provided for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] replication:  
  
|Performance object|Description|  
|------------------------|-----------------|  
|**SQLServer:Replication Agents**<br /><br /> **SQLServer:Replication Snapshot**<br /><br /> **SQLServer:Replication Logreader**<br /><br /> **SQLServer:Replication Dist.**<br /><br /> **SQLServer:Replication Merge**<br /><br /> For more information, see [Monitoring Replication with System Monitor](../../../relational-databases/replication/monitor/monitoring-replication-with-system-monitor.md).|Provides information about replication agent activity.|  
  
##  <a name="SsisPipelineCounters"></a> SSIS Pipeline Counters  
 For the **SSIS Pipeline** counter, see [Performance Counters](../../../integration-services/performance/performance-counters.md).  
  
##  <a name="RequiredPermissions"></a> Required Permissions  
 Use of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] objects depends on Windows permissions, except **SQLAgent:Alerts**. Users must be a member of the **sysadmin** fixed server role to use **SQLAgent:Alerts**.  
  
## See Also  
 [Use Performance Objects](../Topic/Use%20Performance%20Objects.md)   
 [sys.dm_os_performance_counters &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-os-performance-counters-transact-sql.md)  
  
  