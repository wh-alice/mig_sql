---
title: "Query Hints (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "Query_Hint_TSQL"
  - "Query_TSQL"
  - "Query"
  - "Query Hint"
  - "MAX_GRANT_PERCENT"
  - "MAX_GRANT_PERCENT_TSQL"
  - "MIN_GRANT_PERCENT"
  - "MIN_GRANT_PERCENT_TSQL"
  - "EXTERNALPUSHDOWN"
  - "EXTERNALPUSHDOWN_TSQL"
  - "NOLOCK_TSQL"
  - "MAXDOP_TSQL"
  - "USE_HINT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "REPORT PLAN query hint"
  - "FORCE ORDER query hint"
  - "HASH JOIN query hint"
  - "query hints [SQL Server]"
  - "OPTIMIZE FOR query hint"
  - "FORCESCAN query hint"
  - "RECOMPILE query hint"
  - "MAXRECURSION query hint"
  - "MERGE JOIN query hint"
  - "HASH GROUP query hint"
  - "KEEP PLAN query hint"
  - "UNION query hint"
  - "FORCESEEK query hint"
  - "ORDER GROUP query hint"
  - "LOOP JOIN query hint"
  - "KEEPFIXED PLAN query hint"
  - "FAST query hint"
  - "MAXDOP query hint"
  - "PARAMETERIZATION query hint"
  - "hints [SQL Server], query"
  - "JOIN query hint"
  - "USE PLAN query hint"
  - "EXPAND VIEWS query hint"
  - "MAX_GRANT_PERCENT query hint"
  - "MIN_GRANT_PERCENT query hint"
  - "EXTERNALPUSHDOWN query hint"
  - "USE HINT query hint"
ms.assetid: 66fb1520-dcdf-4aab-9ff1-7de8f79e5b2d
caps.latest.revision: 136
ms.author: "rickbyh"
manager: "jhubbard"
---
# Hints (Transact-SQL) - Query
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Query hints specify that the indicated hints should be used throughout the query. They affect all operators in the statement. If UNION is involved in the main query, only the last query involving a UNION operation can have the OPTION clause. Query hints are specified as part of the [OPTION clause](../../t-sql/queries/option-clause-transact-sql.md). If one or more query hints cause the query optimizer not to generate a valid plan, error 8622 is raised.  
  
> [!CAUTION]  
>  Because the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] query optimizer typically selects the best execution plan for a query, we recommend only using hints as a last resort for experienced developers and database administrators.  
  
 **Applies to:**  
  
 [DELETE](../../t-sql/statements/delete-transact-sql.md)  
  
 [INSERT](../../t-sql/statements/insert-transact-sql.md)  
  
 [SELECT](../../t-sql/queries/select-transact-sql.md)  
  
 [UPDATE](../../t-sql/queries/update-transact-sql.md)  
  
 [MERGE](../../t-sql/statements/merge-transact-sql.md)  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
<query_hint > ::=   
{ { HASH | ORDER } GROUP   
  | { CONCAT | HASH | MERGE } UNION   
  | { LOOP | MERGE | HASH } JOIN   
  | EXPAND VIEWS   
  | FAST number_rows   
  | FORCE ORDER   
  | { FORCE | DISABLE } EXTERNALPUSHDOWN  
  | IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX  
  | KEEP PLAN   
  | KEEPFIXED PLAN  
  | MAX_GRANT_PERCENT = percent  
  | MIN_GRANT_PERCENT = percent  
  | MAXDOP number_of_processors   
  | MAXRECURSION number   
  | NO_PERFORMANCE_SPOOL   
  | OPTIMIZE FOR ( @variable_name { UNKNOWN | = literal_constant } [ , ...n ] )  
  | OPTIMIZE FOR UNKNOWN  
  | PARAMETERIZATION { SIMPLE | FORCED }  
  | RECOMPILE  
  | ROBUST PLAN   
  | USE HINT ( '<hint_name>' [ , ...n ] )
  | USE PLAN N'xml_plan'  | TABLE HINT ( exposed_object_name [ , <table_hint> [ [, ]...n ] ] )  
}  
  
<table_hint> ::=  
[ NOEXPAND ] {   
    INDEX ( index_value [ ,...n ] ) | INDEX = ( index_value )  
  | FORCESEEK [( index_value ( index_column_name [,... ] ) ) ]  
  | FORCESCAN  
  | HOLDLOCK   
  | NOLOCK   
  | NOWAIT  
  | PAGLOCK   
  | READCOMMITTED   
  | READCOMMITTEDLOCK   
  | READPAST   
  | READUNCOMMITTED   
  | REPEATABLEREAD   
  | ROWLOCK   
  | SERIALIZABLE   
  | SNAPSHOT  
  | SPATIAL_WINDOW_MAX_CELLS = integer  
  | TABLOCK   
  | TABLOCKX   
  | UPDLOCK   
  | XLOCK  
}  
```  
  
## Arguments  
 { HASH | ORDER } GROUP  
 Specifies that aggregations described in the GROUP BY, or DISTINCT clause of the query should use hashing or ordering.  
  
 { MERGE | HASH | CONCAT } UNION  
 Specifies that all UNION operations are performed by merging, hashing, or concatenating UNION sets. If more than one UNION hint is specified, the query optimizer selects the least expensive strategy from those hints specified.  
  
 { LOOP | MERGE | HASH } JOIN  
 Specifies that all join operations are performed by LOOP JOIN, MERGE JOIN, or HASH JOIN in the whole query. If more than one join hint is specified, the optimizer selects the least expensive join strategy from the allowed ones.  
  
 If, in the same query, a join hint is also specified in the FROM clause for a specific pair of tables, this join hint takes precedence in the joining of the two tables, although the query hints still must be honored. Therefore, the join hint for the pair of tables may only restrict the selection of allowed join methods in the query hint. For more information, see [Join Hints &#40;Transact-SQL&#41;](../../t-sql/queries/hints-transact-sql-join.md).  
  
 EXPAND VIEWS  
 Specifies that the indexed views are expanded and the query optimizer will not consider any indexed view as a substitute for any part of the query. A view is expanded when the view name is replaced by the view definition in the query text.  
  
 This query hint virtually disallows direct use of indexed views and indexes on indexed views in the query plan.  
  
 The indexed view is not expanded only if the view is directly referenced in the SELECT part of the query and WITH (NOEXPAND) or WITH (NOEXPAND, INDEX( *index_value* [ **,***...n* ] ) ) is specified. For more information about the query hint WITH (NOEXPAND), see [FROM](../../t-sql/queries/from-transact-sql.md).  
  
 Only the views in the SELECT part of statements, including those in INSERT, UPDATE, MERGE, and DELETE statements are affected by the hint.  
  
 FAST *number_rows*  
 Specifies that the query is optimized for fast retrieval of the first *number_rows.* This is a nonnegative integer. After the first *number_rows* are returned, the query continues execution and produces its full result set.  
  
 FORCE ORDER  
 Specifies that the join order indicated by the query syntax is preserved during query optimization. Using FORCE ORDER does not affect possible role reversal behavior of the query optimizer.  
  
> [!NOTE]  
>  In a MERGE statement, the source table is accessed before the target table as the default join order, unless the WHEN SOURCE NOT MATCHED clause is specified. Specifying FORCE ORDER preserves this default behavior.  
  
 { FORCE | DISABLE } EXTERNALPUSHDOWN  
 Force or disable the pushdown of the computation of qualifying expressions in Hadoop. Only applies to queries using PolyBase. Will not push down to Azure storage.  
  
 KEEP PLAN  
 Forces the query optimizer to relax the estimated recompile threshold for a query. The estimated recompile threshold is the point at which a query is automatically recompiled when the estimated number of indexed column changes have been made to a table by running UPDATE, DELETE, MERGE, or INSERT statements. Specifying KEEP PLAN makes sure that a query will not be recompiled as frequently when there are multiple updates to a table.  
  
 KEEPFIXED PLAN  
 Forces the query optimizer not to recompile a query due to changes in statistics. Specifying KEEPFIXED PLAN makes sure that a query will be recompiled only if the schema of the underlying tables is changed or if **sp_recompile** is executed against those tables.  
  
 IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Prevents the query from using a nonclustered memory optimized columnstore index. If the query contains the query hint to avoid use of the columnstore index and an index hint to use a columnstore index, the hints are in conflict and the query returns an error.  
  
 MAX_GRANT_PERCENT = *percent*  
 The maximum memory grant size in PERCENT. The query is guaranteed not to exceed this limit. The actual limit can be lower if the resource governor setting is lower than this. Valid values are between 0.0 and 100.0.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 MIN_GRANT_PERCENT = *percent*  
 The minimum memory grant size in PERCENT = % of default limit. The query is guaranteed to get MAX(required memory, min grant) because at least required memory is needed to start a query. Valid values are between 0.0 and 100.0.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 MAXDOP *number*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Overrides the **max degree of parallelism** configuration option of **sp_configure** and Resource Governor for the query specifying this option. The MAXDOP query hint can exceed the value configured with sp_configure. If MAXDOP exceeds the value configured with Resource Governor, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] uses the Resource Governor MAXDOP value, described in [ALTER WORKLOAD GROUP &#40;Transact-SQL&#41;](../../t-sql/statements/alter-workload-group-transact-sql.md). All semantic rules used with the **max degree of parallelism** configuration option are applicable when you use the MAXDOP query hint. For more information, see [Configure the max degree of parallelism Server Configuration Option](../../database-engine/configure/windows/configure-the-max-degree-of-parallelism-server-configuration-option.md).  
  
> [!WARNING]  
>  If MAXDOP is set to zero then the server chooses the max degree of parallelism.  
  
 MAXRECURSION *number*  
 Specifies the maximum number of recursions allowed for this query. *number* is a nonnegative integer between 0 and 32767. When 0 is specified, no limit is applied. If this option is not specified, the default limit for the server is 100.  
  
 When the specified or default number for MAXRECURSION limit is reached during query execution, the query is ended and an error is returned.  
  
 Because of this error, all effects of the statement are rolled back. If the statement is a SELECT statement, partial results or no results may be returned. Any partial results returned may not include all rows on recursion levels beyond the specified maximum recursion level.  
  
 For more information, see [WITH common_table_expression &#40;Transact-SQL&#41;](../../t-sql/queries/with-common-table-expression-transact-sql.md).  
  
 NO_PERFORMANCE_SPOOL  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Prevents a spool operator from being added to query plans (except for the plans when spool is required to guarantee valid update semantics). In some scenarios, the spool operator may reduce performance. For example, the spool uses tempdb and tempdb contention can occur if a there are many concurrent queries running with the spool operations.  
  
 OPTIMIZE FOR ( *@variable_name* { UNKNOWN | = *literal_constant }* [ **,** ...*n* ] )  
 Instructs the query optimizer to use a particular value for a local variable when the query is compiled and optimized. The value is used only during query optimization, and not during query execution.  
  
 *@variable_name*  
 Is the name of a local variable used in a query, to which a value may be assigned for use with the OPTIMIZE FOR query hint.  
  
 *UNKNOWN*  
 Specifies that the query optimizer use statistical data instead of the initial value to determine the value for a local variable during query optimization.  
  
 *literal_constant*  
 Is a literal constant value to be assigned *@variable_name* for use with the OPTIMIZE FOR query hint. *literal_constant* is used only during query optimization, and not as the value of *@variable_name* during query execution. *literal_constant* can be of any [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system data type that can be expressed as a literal constant. The data type of *literal_constant* must be implicitly convertible to the data type that *@variable_name* references in the query.  
  
 OPTIMIZE FOR can counteract the default parameter detection behavior of the optimizer or can be used when you create plan guides. For more information, see [Recompile a Stored Procedure](../../relational-databases/reference/stored-procedures/recompile-a-stored-procedure.md).  
  
 OPTIMIZE FOR UNKNOWN  
 Instructs the query optimizer to use statistical data instead of the initial values for all local variables when the query is compiled and optimized, including parameters created with forced parameterization.  
  
 If OPTIMIZE FOR @variable_name = *literal_constant* and OPTIMIZE FOR UNKNOWN are used in the same query hint, the query optimizer will use the *literal_constant* that is specified for a specific value and UNKNOWN for the remaining variable values. The values are used only during query optimization, and not during query execution.  
  
 PARAMETERIZATION { SIMPLE | FORCED }  
 Specifies the parameterization rules that the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] query optimizer applies to the query when it is compiled.  
  
> [!IMPORTANT]  
>  The PARAMETERIZATION query hint can only be specified inside a plan guide. It cannot be specified directly within a query.  
  
 SIMPLE instructs the query optimizer to attempt simple parameterization. FORCED instructs the optimizer to attempt forced parameterization. The PARAMETERIZATION query hint is used to override the current setting of the PARAMETERIZATION database SET option inside a plan guide. For more information, see [Specify Query Parameterization Behavior by Using Plan Guides](../../relational-databases/performance/specify-query-parameterization-behavior-by-using-plan-guides.md).  
  
 RECOMPILE  
 Instructs the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] to discard the plan generated for the query after it executes, forcing the query optimizer to recompile a query plan the next time the same query is executed. Without specifying RECOMPILE, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] caches query plans and reuses them. When compiling query plans, the RECOMPILE query hint uses the current values of any local variables in the query and, if the query is inside a stored procedure, the current values passed to any parameters.  
  
 RECOMPILE is a useful alternative to creating a stored procedure that uses the WITH RECOMPILE clause when only a subset of queries inside the stored procedure, instead of the whole stored procedure, must be recompiled. For more information, see [Recompile a Stored Procedure](../../relational-databases/reference/stored-procedures/recompile-a-stored-procedure.md). RECOMPILE is also useful when you create plan guides.  
  
 ROBUST PLAN  
 Forces the query optimizer to try a plan that works for the maximum potential row size, possibly at the expense of performance. When the query is processed, intermediate tables and operators may have to store and process rows that are wider than any one of the input rows. The rows may be so wide that, sometimes, the particular operator cannot process the row. If this occurs, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] produces an error during query execution. By using ROBUST PLAN, you instruct the query optimizer not to consider any query plans that may encounter this problem.  
  
 If such a plan is not possible, the query optimizer returns an error instead of deferring error detection to query execution. Rows may contain variable-length columns; the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] allows for rows to be defined that have a maximum potential size beyond the ability of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] to process them. Generally, despite the maximum potential size, an application stores rows that have actual sizes within the limits that the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] can process. If the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] encounters a row that is too long, an execution error is returned.  
 
 USE HINT ( **'***hint_name***'** )  
 Provides one or more additional hints to the query processor as specified by a hint name **inside single quotation marks**. 
  ||  
|-|  
|**Applies to**: Starting with [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)] SP1.|

 The following hint names are supported:
 
*  'DISABLE_OPTIMIZED_NESTED_LOOP'  
 Instructs the query processor not to use a sort operation (batch sort) for optimized nested loop joins when generating a query plan. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 2340.
*  'FORCE_LEGACY_CARDINALITY_ESTIMATION'  
 Forces the query optimizer to use [Cardinality Estimation](../../relational-databases/performance/cardinality-estimation-sql-server.md) model of [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] and earlier versions. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 9481 or [Database Scoped Configuration](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md) setting LEGACY_CARDINALITY_ESTIMATION=ON.
*  'ENABLE_QUERY_OPTIMIZER_HOTFIXES'  
 Enables query optimizer hotfixes (changes released in SQL Server Cumulative Updates and Service Packs). This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 4199 or [Database Scoped Configuration](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md) setting QUERY_OPTIMIZER_HOTFIXES=ON.
*  'DISABLE_PARAMETER_SNIFFING'  
 Instructs query optimizer to use average data distribution while compiling a query with one or more parameters, making the query plan independent on the parameter value which was first used when the query was compiled. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 4136 or [Database Scoped Configuration](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md) setting PARAMETER_SNIFFING=OFF.
*  'ASSUME_MIN_SELECTIVITY_FOR_FILTER_ESTIMATES'  
 Causes SQL Server to generate a plan using minimum selectivity when estimating AND predicates for filters to account for correlation. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 4137 when used with cardinality estimation model of [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] and earlier versions, and has similar effect when [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 9471 is used with cardinality estimation model of [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] or higher.
*  'DISABLE_OPTIMIZER_ROWGOAL'  
 Causes SQL Server to generate a plan that does not use row goal adjustments with queries that contain TOP, OPTION (FAST N), IN, or EXISTS keywords. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 4138.
*  'ENABLE_HIST_AMENDMENT_FOR_ASC_KEYS'  
 Enables automatically generated quick statistics (histogram amendment) for any leading index column for which cardinality estimation is needed. The histogram used to estimate cardinality will be adjusted at query compile time to account for actual maximum or minimum value of this column. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 4139. 
*  'ASSUME_JOIN_PREDICATE_DEPENDS_ON_FILTERS'  
 Causes SQL Server to generate a query plan using the Simple Containment assumption instead of the default Base Containment assumption for joins, under the query optimizer [Cardinality Estimation](../../relational-databases/performance/cardinality-estimation-sql-server.md) model of [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] or newer. This is equivalent to [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 9476. 
*  'FORCE_DEFAULT_CARDINALITY_ESTIMATION'  
 Forces the Query Optimizer to use [Cardinality Estimation](../../relational-databases/performance/cardinality-estimation-sql-server.md) model that corresponds to the current database compatibility level. Use this hint to override [Database Scoped Configuration](../../t-sql/statements/alter-database-scoped-configuration-transact-sql.md) setting LEGACY_CARDINALITY_ESTIMATION=ON or [trace flag](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md) 9481.
 
> [!TIP]
> Hint names are case-insensitive.
  
  The list of all supported USE HINT names can be queried using the dynamic management view [sys.dm_exec_valid_use_hints ](../../relational-databases/reference/system-dynamic-management-views/sys.dm-exec-valid-use-hints-transact-sql.md).
> [!IMPORTANT] 
> Some USE HINT hints may conflict with trace flags enabled at the global or session level, or database scoped configuration settings. In this case, the query level hint (USE HINT) always takes precedence. If a USE HINT conflicts with another query hint or a trace flag enabled at the query level (such as by QUERYTRACEON), SQL Server will generate an error when trying to execute the query. 

 USE PLAN N**'***xml_plan***'**  
 Forces the query optimizer to use an existing query plan for a query that is specified by **'***xml_plan***'**. USE PLAN cannot be specified with INSERT, UPDATE, MERGE, or DELETE statements.  
  
 TABLE HINT **(***exposed_object_name* [ **,** <table_hint> [ [**,** ]...*n* ] ] **)**  
 Applies the specified table hint to the table or view that corresponds to *exposed_object_name*. We recommend using a table hint as a query hint only in the context of a [plan guide](../../relational-databases/performance/plan-guides.md).  
  
 *exposed_object_name* can be one of the following references:  
  
-   When an alias is used for the table or view in the [FROM](../../t-sql/queries/from-transact-sql.md) clause of the query, *exposed_object_name* is the alias.  
  
-   When an alias is not used, *exposed_object_name* is the exact match of the table or view referenced in the FROM clause. For example, if the table or view is referenced using a two-part name, *exposed_object_name* is the same two-part name.  
  
 When *exposed_object_name* is specified without also specifying a table hint, any indexes specified in the query as part of a table hint for the object are disregarded and index usage is determined by the query optimizer. You can use this technique to eliminate the effect of an INDEX table hint when you cannot modify the original query. See Example J.  
  
 **<table_hint> ::=** { [ NOEXPAND ] { INDEX ( *index_value* [ ,...*n* ] ) | INDEX = ( *index_value* ) | FORCESEEK [**(***index_value***(***index_column_name* [**,**... ] **))** ]| FORCESCAN | HOLDLOCK | NOLOCK | NOWAIT | PAGLOCK | READCOMMITTED | READCOMMITTEDLOCK | READPAST | READUNCOMMITTED | REPEATABLEREAD | ROWLOCK | SERIALIZABLE | SNAPSHOT | SPATIAL_WINDOW_MAX_CELLS | TABLOCK | TABLOCKX | UPDLOCK | XLOCK }  
 Is the table hint to apply to the table or view that corresponds to *exposed_object_name* as a query hint. For a description of these hints, see [Table Hints &#40;Transact-SQL&#41;](../../t-sql/queries/hints-transact-sql-table.md).  
  
 Table hints other than INDEX, FORCESCAN, and FORCESEEK are disallowed as query hints unless the query already has a WITH clause specifying the table hint. For more information, see Remarks.  
  
> [!CAUTION] 
> Specifying FORCESEEK with parameters limits the number of plans that can be considered by the optimizer more than when specifying FORCESEEK without parameters. This may cause a "Plan cannot be generated" error to occur in more cases. In a future release, internal modifications to the optimizer may allow more plans to be considered.  
  
## Remarks  
 Query hints cannot be specified in an INSERT statement except when a SELECT clause is used inside the statement.  
  
 Query hints can be specified only in the top-level query, not in subqueries. When a table hint is specified as a query hint, the hint can be specified in the top-level query or in a subquery; however, the value specified for *exposed_object_name* in the TABLE HINT clause must match exactly the exposed name in the query or subquery.  
  
## Specifying Table Hints as Query Hints  
 We recommend using the INDEX, FORCESCAN or FORCESEEK table hint as a query hint only in the context of a [plan guide](../../relational-databases/performance/plan-guides.md). Plan guides are useful when you cannot modify the original query, for example, because it is a third-party application. The query hint specified in the plan guide is added to the query before it is compiled and optimized. For ad-hoc queries, use the TABLE HINT clause only when testing plan guide statements. For all other ad-hoc queries, we recommend specifying these hints only as table hints.  
  
 When specified as a query hint, the INDEX, FORCESCAN, and FORCESEEK table hints are valid for the following objects:  
  
-   Tables  
  
-   Views  
  
-   Indexed views  
  
-   Common table expressions (the hint must be specified in the SELECT statement whose result set populates the common table expression)  
  
-   Dynamic management views  
  
-   Named subqueries  
  
 The INDEX, FORCESCAN, and FORCESEEK table hints can be specified as query hints for a query that does not have any existing table hints, or they can be used to replace existing INDEX, FORCESCAN or FORCESEEK hints in the query, respectively. Table hints other than INDEX, FORCESCAN, and FORCESEEK are disallowed as query hints unless the query already has a WITH clause specifying the table hint. In this case, a matching hint must also be specified as a query hint by using TABLE HINT in the OPTION clause to preserve the semantics of the query. For example, if the query contains the table hint NOLOCK, the OPTION clause in the **@hints** parameter of the plan guide must also contain the NOLOCK hint. See Example K. When a table hint other than INDEX, FORCESCAN, or FORCESEEK is specified by using TABLE HINT in the OPTION clause without a matching query hint, or vice versa; error 8702 is raised (indicating that the OPTION clause can cause the semantics of the query to change) and the query fails.  
  
## Examples  
  
### A. Using MERGE JOIN  
 The following example specifies that the JOIN operation in the query is performed by MERGE JOIN. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
SELECT *   
FROM Sales.Customer AS c  
INNER JOIN Sales.CustomerAddress AS ca ON c.CustomerID = ca.CustomerID  
WHERE TerritoryID = 5  
OPTION (MERGE JOIN);  
GO    
```  
  
### B. Using OPTIMIZE FOR  
 The following example instructs the query optimizer to use the value `'Seattle'` for local variable `@city_name` and to use statistical data to determine the value for the local variable `@postal_code` when optimizing the query. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
DECLARE @city_name nvarchar(30);  
DECLARE @postal_code nvarchar(15);  
SET @city_name = 'Ascheim';  
SET @postal_code = 86171;  
SELECT * FROM Person.Address  
WHERE City = @city_name AND PostalCode = @postal_code  
OPTION ( OPTIMIZE FOR (@city_name = 'Seattle', @postal_code UNKNOWN) );  
GO  
```  
  
### C. Using MAXRECURSION  
 MAXRECURSION can be used to prevent a poorly formed recursive common table expression from entering into an infinite loop. The following example intentionally creates an infinite loop and uses the MAXRECURSION hint to limit the number of recursion levels to two. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```tsql  
--Creates an infinite loop  
WITH cte (CustomerID, PersonID, StoreID) AS  
(  
    SELECT CustomerID, PersonID, StoreID  
    FROM Sales.Customer  
    WHERE PersonID IS NOT NULL  
  UNION ALL  
    SELECT cte.CustomerID, cte.PersonID, cte.StoreID  
    FROM cte   
    JOIN  Sales.Customer AS e   
        ON cte.PersonID = e.CustomerID  
)  
--Uses MAXRECURSION to limit the recursive levels to 2  
SELECT CustomerID, PersonID, StoreID  
FROM cte  
OPTION (MAXRECURSION 2);  
GO  
```  
  
 After the coding error is corrected, MAXRECURSION is no longer required.  
  
### D. Using MERGE UNION  
 The following example uses the MERGE UNION query hint. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
SELECT *  
FROM HumanResources.Employee AS e1  
UNION  
SELECT *  
FROM HumanResources.Employee AS e2  
OPTION (MERGE UNION);  
GO  
```  
  
### E. Using HASH GROUP and FAST  
 The following example uses the HASH GROUP and FAST query hints. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
SELECT ProductID, OrderQty, SUM(LineTotal) AS Total  
FROM Sales.SalesOrderDetail  
WHERE UnitPrice < $5.00  
GROUP BY ProductID, OrderQty  
ORDER BY ProductID, OrderQty  
OPTION (HASH GROUP, FAST 10);  
GO    
```  
  
### F. Using MAXDOP  
 The following example uses the MAXDOP query hint. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
```  
SELECT ProductID, OrderQty, SUM(LineTotal) AS Total  
FROM Sales.SalesOrderDetail  
WHERE UnitPrice < $5.00  
GROUP BY ProductID, OrderQty  
ORDER BY ProductID, OrderQty  
OPTION (MAXDOP 2);    
GO
```  
  
### G. Using INDEX  
 The following examples use the INDEX hint. The first example specifies a single index. The second example specifies multiple indexes for a single table reference. In both examples, because the INDEX hint is applied on a table that uses an alias, the TABLE HINT clause must also specify the same alias as the exposed object name. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
EXEC sp_create_plan_guide   
    @name = N'Guide1',   
    @stmt = N'SELECT c.LastName, c.FirstName, e.Title  
              FROM HumanResources.Employee AS e   
              JOIN Person.Contact AS c ON e.ContactID = c.ContactID  
              WHERE e.ManagerID = 2;',   
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT(e, INDEX (IX_Employee_ManagerID)))';  
GO  
EXEC sp_create_plan_guide   
    @name = N'Guide2',   
    @stmt = N'SELECT c.LastName, c.FirstName, e.Title  
              FROM HumanResources.Employee AS e  
              JOIN Person.Contact AS c ON e.ContactID = c.ContactID  
              WHERE e.ManagerID = 2;',   
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT(e, INDEX(PK_Employee_EmployeeID, IX_Employee_ManagerID)))';  
GO    
```  
  
### H. Using FORCESEEK  
 The following example uses the FORCESEEK table hint. Because the INDEX hint is applied on a table that uses a two-part name, the TABLE HINT clause must also specify the same two-part name as the exposed object name. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
EXEC sp_create_plan_guide   
    @name = N'Guide3',   
    @stmt = N'SELECT c.LastName, c.FirstName, HumanResources.Employee.Title  
              FROM HumanResources.Employee  
              JOIN Person.Contact AS c ON HumanResources.Employee.ContactID = c.ContactID  
              WHERE HumanResources.Employee.ManagerID = 3  
              ORDER BY c.LastName, c.FirstName;',   
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT( HumanResources.Employee, FORCESEEK))';  
GO    
```  
  
### I. Using multiple table hints  
 The following example applies the INDEX hint to one table and the FORCESEEK hint to another. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
EXEC sp_create_plan_guide   
    @name = N'Guide4',   
    @stmt = N'SELECT e.ManagerID, c.LastName, c.FirstName, e.Title  
              FROM HumanResources.Employee AS e   
              JOIN Person.Contact AS c ON e.ContactID = c.ContactID  
              WHERE e.ManagerID = 3;',   
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT (e, INDEX( IX_Employee_ManagerID))   
                       , TABLE HINT (c, FORCESEEK))';  
GO  
```  
  
### J. Using TABLE HINT to override an existing table hint  
 The following example shows how to use the TABLE HINT hint without specifying a hint to override the behavior of the INDEX table hint specified in the FROM clause of the query. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
EXEC sp_create_plan_guide   
    @name = N'Guide5',   
    @stmt = N'SELECT e.ManagerID, c.LastName, c.FirstName, e.Title  
              FROM HumanResources.Employee AS e WITH (INDEX (IX_Employee_ManagerID))  
              JOIN Person.Contact AS c ON e.ContactID = c.ContactID  
              WHERE e.ManagerID = 3;',   
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT(e))';  
GO    
```  
  
### K. Specifying semantics-affecting table hints  
 The following example contains two table hints in the query: NOLOCK, which is semantic-affecting, and INDEX, which is non-semantic-affecting. To preserve the semantics of the query, the NOLOCK hint is specified in the OPTIONS clause of the plan guide. In addition to the NOLOCK hint, the INDEX and FORCESEEK hints are specified and replace the non-semantic-affecting INDEX hint in the query when the statement is compiled and optimized. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
EXEC sp_create_plan_guide   
    @name = N'Guide6',   
    @stmt = N'SELECT c.LastName, c.FirstName, e.Title  
              FROM HumanResources.Employee AS e   
                   WITH (NOLOCK, INDEX (PK_Employee_EmployeeID))  
              JOIN Person.Contact AS c ON e.ContactID = c.ContactID  
              WHERE e.ManagerID = 3;',  
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT (e, INDEX(IX_Employee_ManagerID), NOLOCK, FORCESEEK))';  
GO    
```  
  
 The following example shows an alternative method to preserving the semantics of the query and allowing the optimizer to choose an index other than the index specified in the table hint. This is done by specifying the NOLOCK hint in the OPTIONS clause (because it is semantic-affecting) and specifying the TABLE HINT keyword with only a table reference and no INDEX hint. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
```  
EXEC sp_create_plan_guide   
    @name = N'Guide7',   
    @stmt = N'SELECT c.LastName, c.FirstName, e.Title  
              FROM HumanResources.Employee AS e   
                   WITH (NOLOCK, INDEX (PK_Employee_EmployeeID))  
              JOIN Person.Contact AS c ON e.ContactID = c.ContactID  
              WHERE e.ManagerID = 2;',  
    @type = N'SQL',  
    @module_or_batch = NULL,   
    @params = NULL,   
    @hints = N'OPTION (TABLE HINT (e, NOLOCK))';  
GO  
```  
### L. Using USE HINT  
 The following example uses the RECOMPILE and USE HINT query hints. The example uses the [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)], [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)].|  
  
```  
SELECT * FROM Person.Address  
WHERE City = 'SEATTLE' AND PostalCode = 98104
OPTION (RECOMPILE, USE HINT ('ASSUME_MIN_SELECTIVITY_FOR_FILTER_ESTIMATES', 'DISABLE_PARAMETER_SNIFFING')); 
GO  
```  
    
## See Also  
 [Hints &#40;Transact-SQL&#41;](../../t-sql/queries/hints-transact-sql.md)   
 [sp_create_plan_guide &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-transact-sql.md)   
 [sp_control_plan_guide &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-control-plan-guide-transact-sql.md)  
 [Trace Flags](../../t-sql/database-console-commands/dbcc-traceon-trace-flags-transact-sql.md)
  
  