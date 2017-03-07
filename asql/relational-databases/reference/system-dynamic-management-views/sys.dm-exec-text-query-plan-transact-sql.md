---
title: "sys.dm_exec_text_query_plan (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_exec_text_query_plan"
  - "sys.dm_exec_text_query_plan_TSQL"
  - "dm_exec_text_query_plan_TSQL"
  - "sys.dm_exec_text_query_plan"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_exec_text_query_plan dynamic management function"
ms.assetid: 9d5e5f59-6973-4df9-9eb2-9372f354ca57
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_text_query_plan (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the Showplan in text format for a [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] batch or for a specific statement within the batch. The query plan specified by the plan handle can either be cached or currently executing. This table-valued function is similar to [sys.dm_exec_query_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-plan-transact-sql.md), but has the following differences:  
  
-   The output of the query plan is returned in text format.  
  
-   The output of the query plan is not limited in size.  
  
-   Individual statements within the batch can be specified.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.dm_exec_text_query_plan   
(   
    plan_handle   
    , { statement_start_offset | 0 | DEFAULT }  
        , { statement_end_offset | -1 | DEFAULT }  
)  
```  
  
## Arguments  
 *plan_handle*  
 Uniquely identifies a query plan for a batch that is cached or is currently executing. *plan_handle* is **varbinary(64)**.  
  
 The plan handle can be obtained from the following dynamic management objects:  
  
 [sys.dm_exec_cached_plans](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-cached-plans-transact-sql.md)  
  
 [sys.dm_exec_query_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-stats-transact-sql.md)  
  
 [sys.dm_exec_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)  
  
 *statement_start_offset* | 0 | DEFAULT  
 Indicates, in bytes, the starting position of the query that the row describes within the text of its batch or persisted object. *statement_start_offset* is **int**. A value of 0 indicates the beginning of the batch. The default value is 0.  
  
 The statement start offset can be obtained from the following dynamic management objects:  
  
 [sys.dm_exec_query_stats](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-stats-transact-sql.md)  
  
 [sys.dm_exec_requests](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-requests-transact-sql.md)  
  
 *statement_end_offset* | -1 | DEFAULT  
 Indicates, in bytes, the ending position of the query that the row describes within the text of its batch or persisted object.  
  
 *statement_start_offset* is **int**.  
  
 A value of -1 indicates the end of the batch. The default value is -1.  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**dbid**|**smallint**|ID of the context database that was in effect when the [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statement corresponding to this plan was compiled. For ad hoc and prepared SQL statements, the ID of the database where the statements were compiled.<br /><br /> Column is nullable.|  
|**objectid**|**int**|ID of the object (for example, stored procedure or user-defined function) for this query plan. For ad hoc and prepared batches, this column is **null**.<br /><br /> Column is nullable.|  
|**number**|**smallint**|Numbered stored procedure integer. For example, a group of procedures for the **orders** application may be named **orderproc;1**, **orderproc;2**, and so on. For ad hoc and prepared batches, this column is **null**.<br /><br /> Column is nullable.|  
|**encrypted**|**bit**|Indicates whether the corresponding stored procedure is encrypted.<br /><br /> 0 = not encrypted<br /><br /> 1 = encrypted<br /><br /> Column is not nullable.|  
|**query_plan**|**nvarchar(max)**|Contains the compile-time Showplan representation of the query execution plan that is specified with *plan_handle*. The Showplan is in text format. One plan is generated for each batch that contains, for example ad hoc [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statements, stored procedure calls, and user-defined function calls.<br /><br /> Column is nullable.|  
  
## Remarks  
 Under the following conditions, no Showplan output is returned in the **plan** column of the returned table for **sys.dm_exec_text_query_plan**:  
  
-   If the query plan that is specified by using *plan_handle* has been evicted from the plan cache, the **query_plan** column of the returned table is null. For example, this condition may occur if there is a time delay between when the plan handle was captured and when it was used with **sys.dm_exec_text_query_plan**.  
  
-   Some [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statements are not cached, such as bulk operation statements or statements containing string literals larger than 8 KB in size. Showplans for such statements cannot be retrieved by using **sys.dm_exec_text_query_plan** because they do not exist in the cache.  
  
-   If a [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] batch or stored procedure contains a call to a user-defined function or a call to dynamic SQL, for example using EXEC (*string*), the compiled XML Showplan for the user-defined function is not included in the table returned by **sys.dm_exec_text_query_plan** for the batch or stored procedure. Instead, you must make a separate call to **sys.dm_exec_text_query_plan** for the *plan_handle* that corresponds to the user-defined function.  
  
 When an ad hoc query uses simple or forced parameterization, the **query_plan** column will contain only the statement text and not the actual query plan. To return the query plan, call **sys.dm_exec_text_query_plan** for the plan handle of the prepared parameterized query. You can determine whether the query was parameterized by referencing the **sql** column of the [sys.syscacheobjects](../../../relational-databases/reference/system-compatibility-views/sys.syscacheobjects-transact-sql.md) view or the text column of the [sys.dm_exec_sql_text](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-sql-text-transact-sql.md) dynamic management view.  
  
## Permissions  
 To execute **sys.dm_exec_text_query_plan**, a user must be a member of the **sysadmin** fixed server role or have the VIEW SERVER STATE permission on the server.  
  
## Examples  
  
### A. Retrieving the cached query plan for a slow-running Transact-SQL query or batch  
 If a [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] query or batch runs a long time on a particular connection to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], retrieve the execution plan for that query or batch to discover what is causing the delay. The following example shows how to retrieve the Showplan for a slow-running query or batch.  
  
> [!NOTE]  
>  To run this example, replace the values for *session_id* and *plan_handle* with values specific to your server.  
  
 First, retrieve the server process ID (SPID) for the process that is executing the query or batch by using the `sp_who` stored procedure:  
  
```  
USE master;  
GO  
EXEC sp_who;  
GO  
```  
  
 The result set that is returned by `sp`_`who` indicates that the SPID is `54`. You can use the SPID with the `sys.dm`\_`exec`\_`requests` dynamic management view to retrieve the plan handle by using the following query:  
  
```  
USE master;  
GO  
SELECT * FROM sys.dm_exec_requests  
WHERE session_id = 54;  
GO  
```  
  
 The table that is returned by **sys.dm_exec_requests** indicates that the plan handle for the slow-running query or batch is `0x06000100A27E7C1FA821B10600`. The following example returns the query plan for the specified plan handle and uses the default values 0 and -1 to return all statements in the query or batch.  
  
```  
USE master;  
GO  
SELECT query_plan   
FROM sys.dm_exec_text_query_plan (0x06000100A27E7C1FA821B10600,0,-1);  
GO  
  
```  
  
### B. Retrieving every query plan from the plan cache  
 To retrieve a snapshot of all query plans residing in the plan cache, retrieve the plan handles of all query plans in the cache by querying the `sys.dm`_`exec`\_`cached`\_`plans` dynamic management view. The plan handles are stored in the `plan`\_`handle` column of `sys.dm`\_`exec`\_`cached`\_`plans`. Then use the CROSS APPLY operator to pass the plan handles to `sys.dm`\_`exec`\_`text`\_`query`\_`plan` as follows. The Showplan output for each plan currently in the plan cache is in the `query`\_`plan` column of the table that is returned.  
  
```  
USE master;  
GO  
SELECT *   
FROM sys.dm_exec_cached_plans AS cp   
CROSS APPLY sys.dm_exec_text_query_plan(cp.plan_handle, DEFAULT, DEFAULT);  
GO  
  
```  
  
### C. Retrieving every query plan for which the server has gathered query statistics from the plan cache  
 To retrieve a snapshot of all query plans for which the server has gathered statistics that currently reside in the plan cache, retrieve the plan handles of these plans in the cache by querying the `sys.dm`_`exec`\_`query`\_`stats` dynamic management view. The plan handles are stored in the `plan`\_`handle` column of `sys.dm`\_`exec`\_`query`\_`stats`. Then use the CROSS APPLY operator to pass the plan handles to `sys.dm`\_`exec`\_`text`\_`query`\_`plan` as follows. The Showplan output for each plan is in the `query_plan` column of the table that is returned.  
  
```  
USE master;  
GO  
SELECT * FROM sys.dm_exec_query_stats AS qs   
CROSS APPLY sys.dm_exec_text_query_plan(qs.plan_handle, qs.statement_start_offset, qs.statement_end_offset);  
GO  
  
```  
  
### D. Retrieving information about the top five queries by average CPU time  
 The following example returns the query plans and average CPU time for the top five queries. The **sys.dm_exec_text_query_plan** function specifies the default values 0 and -1 to return all statements in the batch in the query plan.  
  
```  
SELECT TOP 5 total_worker_time/execution_count AS [Avg CPU Time],  
Plan_handle, query_plan   
FROM sys.dm_exec_query_stats AS qs  
CROSS APPLY sys.dm_exec_text_query_plan(qs.plan_handle, 0, -1)  
ORDER BY total_worker_time/execution_count DESC;  
GO  
  
```  
  
## See Also  
 [sys.dm_exec_query_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-query-plan-transact-sql.md)  
  
  