---
title: "sys.dm_exec_query_statistics_xml (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sys.dm_exec_query_statistics_xml"
  - "sys.dm_exec_query_statistics_xml_TSQL"
  - "dm_exec_query_statistics_xml_TSQL"
  - "dm_exec_query_statistics_xml"
helpviewer_keywords: 
  - "sys.dm_exec_query_statistics_xml management view"
ms.assetid: fdc7659e-df41-488e-b2b5-0d79734dfecb
caps.latest.revision: 6
ms.author: "pelopes"
manager: "jhubbard"
---
# sys.dm_exec_query_statistics_xml (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

Returns query execution plan for in-flight requests. Use this DMV to retrieve showplan XML with transient statistics. 

## Syntax

```
sys.dm_exec_query_statistics_xml(session_id)  
``` 

## Arguments 
*session_id*  
 Is the session id executing the batch to be looked up. *session_id* is **smallint**. *session_id* can be obtained from the following dynamic management objects:  
  
-   [sys.dm_exec_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)  
  
-   [sys.dm_exec_sessions](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sessions-transact-sql.md)  
  
-   [sys.dm_exec_connections](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-connections-transact-sql.md)  

## Table Returned
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|
|session_id|**smallint**|ID of the session. Not nullable.|
|request_id|**int**|ID of the request. Not nullable.|
|sql_handle|**varbinary(64)**|Hash map of SQL text of the request. Nullable.|
|plan_handle|**varbinary(64)**|Hash map of query plan. Nullable.|
|query_plan|**xml**|Showplan XML with partial statistics. Nullable.|

## Remarks
This system function is available starting with [!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)] SP1.

This system function works under both **legacy** and **lightweight** query execution statistics profiling infrastructure.  
  
**Legacy** statistics profiling infrastructure can be enabled by using:
  -  [SET STATISTICS XML ON](../../../t-sql/statements/set-statistics-xml-transact-sql.md)
  -  [SET STATISTICS PROFILE ON](../../../t-sql/statements/set-statistics-profile-transact-sql.md)
  -  the `query_post_execution_showplan` extended event.  
  
**Lightweight** statistics profiling infrastructure is available in [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)] SP2 and [!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)] and can be enabled:
  -  Globally by using trace flag 7412.
  -  Using the [*query_thread_profile*](http://support.microsoft.com/kb/3170113) extended event.
  
> [!NOTE]
> Once enabled by trace flag 7412, lightweight profiling will be enabled to any consumer of the query execution statistics profiling infrastructure instead of legacy profiling, such as the DMV [sys.dm_exec_query_profiles](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-profiles-transact-sql.md) or `query_post_execution_showplan` xEvent.

> [!IMPORTANT]
> In TPC-C like workload tests, enabling the lightweight statistics profiling infrastructure adds a 1.5 to 2 percent overhead. In contrast, the legacy statistics profiling infrastructure can add up to 90 percent overhead for the same workload scenario.

## Permissions  
 Requires `VIEW SERVER STATE` permission on the server.  

## Examples  
  
### A. Looking at live query plan and execution statistics for a running batch  
 The following example queries **sys.dm_exec_requests** to find the interesting query and copy its `session_id` from the output.  
  
```  
SELECT * FROM sys.dm_exec_requests;  
GO  
```  
  
 Then, to obtain the live query plan and execution statistics, use the copied `session_id` with system function **sys.dm_exec_query_statistics_xml**.  
  
```  
--Run this in a different session than the session in which your query is running.
SELECT * FROM sys.dm_exec_query_statistics_xml(< copied session_id >);  
GO  
```   

 Or combined for all running requests.  
  
```  
--Run this in a different session than the session in which your query is running.
SELECT * FROM sys.dm_exec_requests
CROSS APPLY sys.dm_exec_query_statistics_xml(session_id);  
GO  
```   
  
## See Also
  [Trace Flags](../../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md)  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  