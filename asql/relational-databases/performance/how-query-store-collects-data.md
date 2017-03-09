---
title: "How Query Store Collects Data | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-09-13"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Query Store, data collection"
ms.assetid: 8d5eec36-0013-480a-9c11-183e162e4c8e
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# How Query Store Collects Data
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Query Store works as a **flight data recorder** constantly collecting compile and runtime information related to the queries and plans. Query related data is persisted in the internal tables and presented to users through a set of views.  
  
## Views  
 The following diagram shows Query Store views and their logical relationships, with compile time information presented as blue entities:  
  
 ![query-store-process-1views](../../relational-databases/performance/media/query-store-process-1views.png "query-store-process-1views")  
  
 **View Descriptions**  
  
|View|Description|  
|----------|-----------------|  
|**sys.query_store_query_text**|Presents unique query texts executed against the database. Comments and spaces before and after the query text are ignored. Comments and spaces inside text are not ignored. Every statement in the batch generates a separate query text entry.|  
|**sys.query_context_settings**|Presents unique combinations of plan affecting settings under which queries are executed. The same query text executed with different plan affecting settings produces separate query entry in the Query Store because `context_settings_id` is part of the query key.|  
|**sys.query_store_query**|Query entries that are tracked and forced separately in the Query Store. A single query text can produce multiple query entries if it is executed under different context settings or if it is executed outside vs. inside of different [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] modules (stored procedures, triggers, etc.).|  
|**sys.query_store_plan**|Presents estimated plan for the query with the compile time statistics. Stored plan is equivalent to one that you would get by using `SET SHOWPLAN_XML ON`.|  
|**sys.query_store_runtime_stats_interval**|Query Store divides time into automatically generated time windows (intervals) and stores aggregated statistics on that interval for every executed plan. The size of the interval is controlled by the configuration option Statistics Collection Interval (in [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)]) or `INTERVAL_LENGTH_MINUTES` using [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-set-options.md).|  
|**sys.query_store_runtime_stats**|Aggregated runtime statistics for executed plans. All captured metrics are expressed in form of 4 statistic functions: Average, Minimum, Maximum, and Standard Deviation.|  
  
 For additional details on Query Store views, see the **Related Views, Functions, and Procedures** section of [Monitoring Performance By Using the Query Store](https://msdn.microsoft.com/library/dn817826.aspx).  
  
## Query Processing  
 Query store interacts with the query processing pipeline at the following key points:  
  
1.  When query gets compiled for the first time, query text and initial plan are sent to Query Store  
  
2.  When query gets recompiled, the plan is being updated in the Query Store. If a new plan is created, Query Store adds the new plan entry for the query, keeping the previous ones along with their execution statistics.  
  
3.  Upon the query execution, runtime statistics are sent to the Query Store. Query Store keeps aggregated statistics accurate for every plan that was executed within the currently active interval.  
  
4.  During the compile and check for recompile phases, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] determines if there is a plan in the Query Store that should be applied for the currently running query. If there is a forced plan and the plan in the procedure cache is different than the forced plan, the query gets recompiled, effectively the same way as if PLAN HINT was applied to that query. This process happens transparently to the user application.  
  
 The following diagram depicts points of integration explained above:  
  
 ![query-store-process-2processor](../../relational-databases/performance/media/query-store-process-2processor.png "query-store-process-2processor")  
  
 To minimize I/O overhead, new data is captured in-memory. Writes operations are queued and flushed to disk afterwards. Query and plan information (Plan Store on diagram below) are flushed with minimal latency. The runtime statistics (Runtime Stats) are kept in memory for a period of time defined with the `DATA_FLUSH_INTERVAL_SECONDS` option of the `SET QUERY_STORE` statement. The SSMS Query Store dialog box allows you to enter **Data Flush Interval (Minutes)**, which it converts to seconds.  
  
 ![query-store-process-3plan](../../relational-databases/performance/media/query-store-process-3.png "query-store-process-3plan")  
  
 In case of a system crash, Query Store can lose runtime data up to amount defined with `DATA_FLUSH_INTERVAL_SECONDS`. The default value of 900 seconds (15 minutes) is an optimal balance between query capture performance and data availability.  
In case of memory pressure, runtime statistics can be flushed to disk earlier than defined with `DATA_FLUSH_INTERVAL_SECONDS`.  
During the read of the Query Store data in-memory and on-disk data are unified transparently.  
  
 ![query-store-process-4planinfo](../../relational-databases/performance/media/query-store-process-4planinfo.png "query-store-process-4planinfo")    

  
## See Also  
 [Monitoring Performance By Using the Query Store](../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Best Practice with the Query Store](../../relational-databases/performance/best-practice-with-the-query-store.md)   
 [Query Store Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/query-store-catalog-views-transact-sql.md)  
  
  