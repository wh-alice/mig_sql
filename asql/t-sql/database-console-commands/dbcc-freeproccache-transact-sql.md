---
title: "DBCC FREEPROCCACHE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "FREEPROCCACHE_TSQL"
  - "FREEPROCCACHE"
  - "DBCC_FREEPROCCACHE_TSQL"
  - "DBCC FREEPROCCACHE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "freeing procedure cache"
  - "removing procedure cache elements"
  - "deleting procedure cache elements"
  - "DBCC FREEPROCCACHE statement"
  - "procedure cache [SQL Server]"
  - "clearing procedure cache"
ms.assetid: 0e09d210-6f23-4129-aedb-3d56b2980683
caps.latest.revision: 61
ms.author: "jhubbard"
manager: "jhubbard"
---
# DBCC FREEPROCCACHE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Removes all elements from the plan cache, removes a specific plan from the plan cache by specifying a plan handle or SQL handle, or removes all cache entries associated with a specified resource pool.  
  
> **NOTE:** DBCC FREEPROCCACHE does not clear the execution statistics for natively compiled stored procedures. The procedure cache does not contain information about natively compiled stored procedures. Any execution statistics collected from procedure executions will appear in the execution statistics DMVs: [sys.dm_exec_procedure_stats &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-procedure-stats-transact-sql.md) and [sys.dm_exec_query_plan &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-plan-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server  
  
DBCC FREEPROCCACHE [ ( { plan_handle | sql_handle | pool_name } ) ] [ WITH NO_INFOMSGS ]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
DBCC FREEPROCCACHE [ ( COMPUTE | ALL ) ] 
     [ WITH NO_INFOMSGS ]   
[;]  
  
```  
  
## Arguments  
 ( { *plan_handle* | *sql_handle* | *pool_name* } )  
 *plan_handle* uniquely identifies a query plan for a batch that has executed and whose plan resides in the plan cache. *plan_handle* is **varbinary(64)** and can be obtained from the following dynamic management objects:  
  
-   [sys.dm_exec_cached_plans](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-cached-plans-transact-sql.md)  
  
-   [sys.dm_exec_requests](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)  
  
-   [sys.dm_exec_query_memory_grants](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-memory-grants-transact-sql.md)  
  
-   [sys.dm_exec_query_stats](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-stats-transact-sql.md)  
  
 *sql_handle* is the SQL handle of the batch to be cleared. *sql_handle* is **varbinary(64)** and can be obtained from the following dynamic management objects:  
  
-   [sys.dm_exec_query_stats](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-stats-transact-sql.md)  
  
-   [sys.dm_exec_requests](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)  
  
-   [sys.dm_exec_cursors](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-cursors-transact-sql.md)  
  
-   [sys.dm_exec_xml_handles](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-xml-handles-transact-sql.md)  
  
-   [sys.dm_exec_query_memory_grants](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-memory-grants-transact-sql.md)  
  
 *pool_name* is the name of a Resource Governor resource pool. *pool_name* is **sysname** and can be obtained by querying the [sys.dm_resource_governor_resource_pools](../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-resource-pools-transact-sql.md) dynamic management view.  
  
 To associate a Resource Governor workload group with a resource pool, query the [sys.dm_resource_governor_workload_groups](../../relational-databases/reference/system-dynamic-management-views/sys.dm-resource-governor-workload-groups-transact-sql.md) dynamic management view. For information about the workload group for a session, query the [sys.dm_exec_sessions](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sessions-transact-sql.md) dynamic management view.  
  
 WITH NO_INFOMSGS  
 Suppresses all informational messages.  
  
 COMPUTE  
 Purge the query plan cache from each Compute node. This is the default value. 
  
 ALL  
 Purge the query plan cache from each Compute node and from the Control node.  
  
## Remarks  
 Use DBCC FREEPROCCACHE to clear the plan cache carefully. Freeing the plan cache causes, for example, a stored procedure to be recompiled instead of reused from the cache. This can cause a sudden, temporary decrease in query performance. For each cleared cachestore in the plan cache, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error log will contain the following informational message: "[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] has encountered %d occurrence(s) of cachestore flush for the '%s' cachestore (part of plan cache) due to 'DBCC FREEPROCCACHE' or 'DBCC FREESYSTEMCACHE' operations." This message is logged every five minutes as long as the cache is flushed within that time interval.  
  
 The following reconfigure operations also clear the procedure cache:  
  
-   access check cache bucket count  
  
-   access check cache quota  
  
-   clr enabled  
  
-   cost threshold for parallelism  
  
-   cross db ownership chaining  
  
-   index create memory  
  
-   max degree of parallelism  
  
-   max server memory  
  
-   max text repl size  
  
-   max worker threads  
  
-   min memory per query  
  
-   min server memory  
  
-   query governor cost limit  
  
-   query wait  
  
-   remote query timeout  
  
-   user options  
  
## Result Sets  
 When the WITH NO_INFOMSGS clause is not specified, DBCC FREEPROCCACHE returns:  
  
 "DBCC execution completed. If DBCC printed error messages, contact your system administrator."  
  
## Permissions  
 Requires ALTER SERVER STATE permission on the server.  
  
## General Remarks for [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 Multiple DBCC FREEPROCCACHE commands can be run concurrently.  
  
 In [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], clearing the query plan cache can cause a temporary decrease in query performance when queries are recompiled. DBCC FREEPROCCACHE (COMPUTE) only causes [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to recompile queries when they are run on the Compute nodes. It does not cause [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] to recompile the parallel query plan that is generated on the Control node.  
  
 DBCC FREEPROCCACHE can be cancelled during execution.  
  
## Limitations and Restrictions for [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 DBCC FREEPROCCACHE can not run within a transaction.  
  
 DBCC FREEPROCCAHCE is not supported in an EXPLAIN statement.  
  
## Metadata for [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 A new row is added to the sys.pdw_exec_requests system view when DBCC FREEPROCCACHE is run.  
  
## Examples: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]  
  
### A. Clearing a query plan from the plan cache  
 The following example clears a query plan from the plan cache by specifying the query plan handle. To ensure the example query is in the plan cache, the query is first executed. The `sys.dm`_`exec`\_`cached_plans` and `sys.dm`\_`exec`\_`sql`\_`text` dynamic management views are queried to return the plan handle for the query. The plan handle value from the result set is then inserted into the `DBCC FREEPROCACHE` statement to remove only that plan from the plan cache.  
  
```tsql  
USE AdventureWorks2012;  
GO  
SELECT * FROM Person.Address;  
GO  
SELECT plan_handle, st.text  
FROM sys.dm_exec_cached_plans   
CROSS APPLY sys.dm_exec_sql_text(plan_handle) AS st  
WHERE text LIKE N'SELECT * FROM Person.Address%';  
GO  
```  
  
 [!INCLUDE[ssResult](../../relational-databases/includes/ssresult-md.md)]  
  
 `plan_handle                                         text`  
  
 `--------------------------------------------------  -----------------------------`  
  
 `0x060006001ECA270EC0215D05000000000000000000000000  SELECT * FROM Person.Address;`  
  
 `(1 row(s) affected)`  
  
```tsql  
-- Remove the specific plan from the cache.  
DBCC FREEPROCCACHE (0x060006001ECA270EC0215D05000000000000000000000000);  
GO  
```  
  
### B. Clearing all plans from the plan cache  
 The following example clears all elements from the plan cache. The WITH `NO_INFOMSGS` clause is specified to prevent the information message from being displayed.  
  
```tsql  
DBCC FREEPROCCACHE WITH NO_INFOMSGS;  
```  
  
### C. Clearing all cache entries associated with a resource pool  
 The following example clears all cache entries associated with a specified resource pool. The `sys.dm_resource_governor_resource_pools` view is first queried to obtain the value for *pool_name*.  
  
```tsql  
SELECT * FROM sys.dm_resource_governor_resource_pools;  
GO  
DBCC FREEPROCCACHE ('default');  
GO  
```  
  
## Examples: [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### D. DBCC FREEPROCCACHE Basic Syntax Examples  
 The following example removes all existing query plan caches from the Compute nodes. Although the context is set to UserDbSales, the Compute node query plan caches for all databases will will be removed. The WITH NO_INFOMSGS clause prevents informational messages from appearing in the results.  
  
```  
USE UserDbSales;  
DBCC FREEPROCCACHE (COMPUTE) WITH NO_INFOMSGS;  
```  
  
 The following example has the same results as the previous example, except that informational messages will show in the results.  
  
```  
USE UserDbSales;  
DBCC FREEPROCCACHE (COMPUTE);  
```  
  
 When informational messages are requested and the execution is successful, the query results will have one line per Compute node.  
  
### E. Granting Permission to run DBCC FREEPROCCACHE  
 The following example gives the login David permission to run DBCC FREEPROCCACHE.  
  
```  
GRANT ALTER SERVER STATE TO David;  
```  
  
## See Also  
 [DBCC &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-transact-sql.md)   
 [Resource Governor](../../relational-databases/resource-governor/resource-governor.md)  
  
  