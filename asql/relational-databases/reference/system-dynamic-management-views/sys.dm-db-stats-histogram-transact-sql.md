---
title: "sys.dm_db_stats_histogram (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-01"
ms.prod: "sql-vnext"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sys.dm_db_stats_histogram"
  - "sys.dm_db_stats_histogram_TSQL"
  - "dm_db_stats_histogram"
  - "dm_db_stats_histogram_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_stats_histogram dynamic management function"
ms.assetid: 1897fd4a-8d51-461e-8ef2-c60be9e563f2
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_db_stats_histogram (Transact-SQL)
[!INCLUDE[tsql-appliesto-ssvNxt-xxxx-xxxx-xxx](../../../analysis-services/includes/tsql-appliesto-ssvnxt-xxxx-xxxx-xxx.md)]

Returns the statistics histogram for the specified database object (table or indexed view) in the current [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database. Similar to `DBCC SHOW_STATISTICS WITH HISTOGRAM`.
 
## Syntax  
  
```  
sys.dm_db_stats_histogram (object_id, stats_id)  
```  
  
## Arguments  
 *object_id*  
 Is the ID of the object in the current database for which properties of one of its statistics is requested. *object_id* is **int**.  
  
 *stats_id*  
 Is the ID of statistics for the specified *object_id*. The statistics ID can be obtained from the [sys.stats](../../../relational-databases/reference/system-catalog-views/sys.stats-transact-sql.md) dynamic management view. *stats_id* is **int**.  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|object_id |**int**|ID of the object (table or indexed view) for which to return the properties of the statistics object.|  
|stats_id |**int**|ID of the statistics object. Is unique within the table or indexed view. For more information, see [sys.stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.stats-transact-sql.md).|  
|step_number |**int** |The number of step in the histogram. |
|range_high_key |**sql_variant** |Upper bound column value for a histogram step. The column value is also called a key value. |
|range_rows |**real** |Estimated number of rows whose column value falls within a histogram step, excluding the upper bound. |
|equal_rows |**real** |Estimated number of rows whose column value equals the upper bound of the histogram step. |
|distict_range_rows |**bigint** |Estimated number of rows with a distinct column value within a histogram step, excluding the upper bound. |
|average_range_rows |**real** |Average number of rows with duplicate column values within a histogram step, excluding the upper bound (`RANGE_ROWS / DISTINCT_RANGE_ROWS` for `DISTINCT_RANGE_ROWS > 0`). |
  
 ## Remarks  
 
 The resultset for `sys.dm_db_stats_histogram` returns information similar to `DBCC SHOW_STATISTICS WITH HISTROGRAM` and also includes `object_id`, `stats_id`, and `step_number`.

### Histogram
  
 A histogram measures the frequency of occurrence for each distinct value in a data set. The query optimizer computes a histogram on the column values in the first key column of the statistics object, selecting the column values by statistically sampling the rows or by performing a full scan of all rows in the table or view. If the histogram is created from a sampled set of rows, the stored totals for number of rows and number of distinct values are estimates and do not need to be whole integers.  
  
 To create the histogram, the query optimizer sorts the column values, computes the number of values that match each distinct column value and then aggregates the column values into a maximum of 200 contiguous histogram steps. Each step includes a range of column values followed by an upper bound column value. The range includes all possible column values between boundary values, excluding the boundary values themselves. The lowest of the sorted column values is the upper boundary value for the first histogram step.  
  
 The following diagram shows a histogram with six steps. The area to the left of the first upper boundary value is the first step.  
  
 ![](../../../relational-databases/reference/system-dynamic-management-views/media/a0ce6714-01f4-4943-a083-8cbd2d6f617a.gif "a0ce6714-01f4-4943-a083-8cbd2d6f617a")  
  
 For each histogram step:  
  
-   Bold line represents the upper boundary value (RANGE_HI_KEY) and the number of times it occurs (EQ_ROWS)  
  
-   Solid area left of RANGE_HI_KEY represents the range of column values and the average number of times each column value occurs (AVG_RANGE_ROWS). The AVG_RANGE_ROWS for the first histogram step is always 0.  
  
-   Dotted lines represent the sampled values used to estimate total number of distinct values in the range (DISTINCT_RANGE_ROWS) and total number of values in the range (RANGE_ROWS). The query optimizer uses RANGE_ROWS and DISTINCT_RANGE_ROWS to compute AVG_RANGE_ROWS and does not store the sampled values.  
  
 The query optimizer defines the histogram steps according to their statistical significance. It uses a maximum difference algorithm to minimize the number of steps in the histogram while maximizing the difference between the boundary values. The maximum number of steps is 200. The number of histogram steps can be fewer than the number of distinct values, even for columns with fewer than 200 boundary points. For example, a column with 100 distinct values can have a histogram with fewer than 100 boundary points.  
  
## Permissions  

Requires that the user has select permissions on statistics columns or the user owns the table or the user is a member of the `sysadmin` fixed server role, the `db_owner` fixed database role, or the `db_ddladmin` fixed database role.

## Examples  

Useful queries:   
```tsql  
SELECT hist.step_number, hist.range_high_key, hist.range_rows, 
    hist.equal_rows, hist.distinct_range_rows, hist.average_range_rows
FROM sys.stats AS s
CROSS APPLY sys.dm_db_stats_histogram(s.[object_id], s.stats_id) AS hist
WHERE s.[name] = N'<statistic_name>';
```
  
## See Also  

[DBCC SHOW_STATISTICS (Transact-SQL)](../../../t-sql/database-console-commands/dbcc-show-statistics-transact-sql.md)   
[Object Related Dynamic Management Views and Functions (Transact-SQL)](../../../relational-databases/reference/system-dynamic-management-views/object-related-dynamic-management-views-and-functions-transact-sql.md)  
[sys.dm_db_stats_properties (Transact-SQL)](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-db-stats-properties-transact-sql.md)   
  