---
title: "Query Store Usage Scenarios | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-04-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-query-tuning"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Query Store, usage scenarios"
ms.assetid: f5309285-ce93-472c-944b-9014dc8f001d
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# Query Store Usage Scenarios
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Query Store can be used in wide set of scenarios when tracking and ensuring predictable workload performance is critical. Here are some examples you can consider:  
  
-   Pinpoint and fix queries with plan choice regressions  
  
-   Identify and tune top resource consuming queries  
  
-   A/B testing  
  
-   Keep performance stability during the upgrade to [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)]  
  
-   Identify and improve ad-hoc workloads  
  
## Pinpoint and fix queries with plan choice regressions  
 During the regular query execution Query Optimizer may decide to take a different plan because important inputs became different: data cardinality has changed, indexes have been created, altered or dropped, statistics have been updated, etc.  For the most part new plan it picks is better or about the same than one was used previously. However, there are cases when new plan is significantly worse - we refer to that situation as plan choice change regression. Prior to Query Store, it was an issue very difficult to identify and fix as [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] didn’t provide built-in data store for users to look at for execution plans that were used over time.  
  
 Now with the Query Store you can quickly:  
  
-   Identify all queries which execution metrics have been degraded in the period of time of interest (last hour, day, week, etc.). Use **Regressed Queries** in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] to speed up your analysis.  
  
-   Among the regressed queries it’s very easy to find those that had multiple plans and which degraded because of the bad plan choice. Use **Plan Summary** pane in **Regressed Queries** to visualize all plans for a regressed query and their query performance over time.  
  
-   Force the previous plan from the history if it proved to be better. Use **Force Plan** button in the **Regressed Queries** to force selected plan for the query.  
  
 ![query-store-usage-1](../../relational-databases/performance/media/query-store-usage-1.png "query-store-usage-1")  
  
 For detailed description of the scenario refer to [Query Store: A flight data recorder for your database](https://azure.microsoft.com/blog/query-store-a-flight-data-recorder-for-your-database/) blog.  
  
## Identify and tune top resource consuming queries  
 Although your workload may generate thousands of queries, typically only a handful of them actually use the most of the system resources and therefore require your attention. Among top resource consuming queries you will typically find those that are either regressed or those that can be improved with additional tuning.  
  
 The easiest way to start exploration is to open **Top Resource Consuming Queries** in [!INCLUDE[ssManStudio](../../a9notintoc/includes/ssmanstudio-md.md)].  User interface is separated into three panes: A histogram representing top resource consuming queries (left), a plan summary for selected query (right) and visual query plan for selected plan (bottom). Click the **Configure** button to control how many queries you want to analyze and the time interval of interest. Additionally, you can choose between different resource consumption dimensions (duration, CPU, memory, IO, number of execution) and the baseline (Average, Min, Max, Total, Standard Deviation).  
  
 ![query-store-usage-2](../../relational-databases/performance/media/query-store-usage-2.png "query-store-usage-2")  
  
 Look at the plan summary on the right to analyze the execution history and learn about the different plans and their runtime statistics. Use the bottom pane to examine the different plans or to compare them visually, rendered side by side (use the Compare button).  
  
 When you identify a query with sub-optimal performance, your action depends on the nature of the problem:  
  
1.  If the query was executed with multiple plans and the last plan is significantly worse than previous plan, you can use the plan forcing mechanism to ensure [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] will use the optimal plan for future executions  
  
2.  Check if the optimizer is suggesting any missing indexes in XML plan. If yes, create the missing index and use the Query Store to evaluate query performance after the index creation  
  
3.  Make sure that the statistics are up-to-date for the underlying tables used by the query.  
  
4.  Make sure that indexes used by the query are defragmented.  
  
5.  Consider rewriting expensive query. For example, take advantages of query parameterization and reduce usage of dynamic SQL. Implement optimal logic when read the data (apply data filtering on database side, not on application side).  
  
## A/B testing  
 Use Query Store to compare workload performance before and after the application change you plan to introduce.  The following list contains several examples where you can use Query Store to assess impact of the environment or application change to the workload performance:  
  
-   Rolling out new application version.  
  
-   Adding new hardware to the server.  
  
-   Creating missing indexes on tables referenced by expensive queries.  
  
-   Applying filtering policy for row-level security. For more details see [Optimizing Row Level Security with Query Store](http://blogs.msdn.com/b/sqlsecurity/archive/2015/07/21/optimizing-rls-performance-with-the-query-store.aspx).  
  
-   Adding temporal system-versioning to tables that are frequently modified by your OLTP applications.  
  
 In any of these scenarios apply the following workflow:  
  
1.  Run your workload with the Query Store before the planned change to generate performance baseline.  
  
2.  Apply application change at the controlled moment in time.  
  
3.  Continue running the workload long enough to generate performance image of the system after the change  
  
4.  Compare results from #1 and #3.  
  
    1.  Open **Overall Database Consumption** to determine impact to the entire database  
  
    2.  Open **Top Resource Consuming Queries** (or run your own analysis using [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)]) to analyze impact of the change to the most important queries.  
  
5.  Decide whether to keep the change or perform roll back in case when new performance is unacceptable.  
  
 The following illustration shows Query Store analysis (step 4) in case of missing index creation. Open **Top Resource Consuming Queries** / Plan summary pane to get this view for the query that should be impacted by the index creation:  
  
 ![query-store-usage-3](../../relational-databases/performance/media/query-store-usage-3.png "query-store-usage-3")  
  
 Additionally, you can compare plans before and after index creation by rendering them side by side. (“Compare the plans for the selected query in a separate window” toolbar option which is marked with red square on the toolbar.)  
  
 ![query-store-usage-4](../../relational-databases/performance/media/query-store-usage-4.png "query-store-usage-4")  
  
 Plan before index creation (plan_id  = 1, above) has missing index hint and you can inspect that Clustered Index Scan was the most expensive operator in the query (red rectangle).  
  
 Plan after missing index creation (plan_id  = 15, below) now has Index Seek (Nonclustered) which reduces the overall cost of the query and improves it performance (green rectangle).  
  
 Based on analysis you would likely keep the index as query performance has been improved.  
  
## Keep performance stability during the upgrade to SQL Server 2016  
 Prior to [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)], users were exposed to the risk of performance regression during the upgrade to the latest platform version. The reason for that was the fact that latest version of Query Optimizer became active immediately once new bits are installed.  
  
 Starting with [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] all Query Optimizer changes are tied to the latest `COMPATIBILITY_LEVEL`, so plans are not changed right at point of upgrade but rather when a user changes the `COMPATIBILITY_LEVEL` to the latest one. This capability, in combination with Query Store gives you a great level of control over the query performance in the upgrade process. Recommended upgrade workflow is shown on the following picture:  
  
 ![query-store-usage-5](../../relational-databases/performance/media/query-store-usage-5.png "query-store-usage-5")  
  
1.  Upgrade [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] without changing the `COMPATIBILITY_LEVEL`. It doesn’t expose you to the latest Query Optimizer but gives you [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] features including Query Store.  
  
2.  Enable Query Store: capture queries and plans and establish performance baseline with previous `COMPATIBILITY_LEVEL`. Stay at this step long enough to capture all plans and get stable baseline.  
  
3.  Move to latest compatibility level: get your workload exposed to the latest Query Optimizer and let it create potentially new plans.  
  
4.  Use Query Store for analysis and regression fixes: for the most part new Query Optimizer should produce better plans. However, Query Store will give you easy way to identify plan choice regressions and fix them using plan forcing mechanism.  
  
## Identify and improve ad-hoc workloads  
 Some workloads do not have dominant queries that you can tune to improve overall application performance. Those workload are typically characterized with relatively large number of different queries each of them consuming portion of system resources. Being unique, those queries are executed very rarely (usually only once, thus name ad hoc), so their runtime consumption is not critical. On the other hand, given that application is generating net new queries all the time, significant portion of system resources is spent on query compilation which is not optimal. This is not ideal situation for Query Store either given that large number of queries and plans flood the space you have reserved which means that Query Store will likely end up in the read-only mode very quickly. If you activated **Size Based Cleanup Policy** ([highly recommended](https://msdn.microsoft.com/library/mt604821.aspx) to keep Query Store always up and running), then background process will be cleaning Query Store structures most of the time also taking significant system resources.  
  
 **Top Resource Consuming Queries** view will give you first indication of the ad-hoc nature of your workload:  
  
 ![query-store-usage-6](../../relational-databases/performance/media/query-store-usage-6.png "query-store-usage-6")  
  
 Use **Execution Count** metric to analyze whether your top queries are ad hoc (this requires you to run Query Store with `QUERY_CAPTURE_MODE = ALL`). From diagram above you can see that 90% of your **Top Resource Consuming Queries** are executed only once.  
  
 Alternatively, you can run [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] script to get total number of query texts, queries and plans in the system and determine how different they are by comparing their query_hash and plan_hash:  
  
```  
/*Do cardinality analysis when suspect on ad-hoc workloads*/  
SELECT COUNT(*) AS CountQueryTextRows FROM sys.query_store_query_text;  
SELECT COUNT(*) AS CountQueryRows FROM sys.query_store_query;  
SELECT COUNT(DISTINCT query_hash) AS CountDifferentQueryRows FROM  sys.query_store_query;  
SELECT COUNT(*) AS CountPlanRows FROM sys.query_store_plan;  
SELECT COUNT(DISTINCT query_plan_hash) AS  CountDifferentPlanRows FROM  sys.query_store_plan;  
```  
  
 This is one potential result you can get in case of workload with ad-hoc queries:  
  
 ![query-store-usage-7](../../relational-databases/performance/media/query-store-usage-7.png "query-store-usage-7")  
  
 Query result shows that despite the large number of queries and plans in the Query Store their query_hash and plan_hash are actually not different. Ratio between unique query texts and unique query_hash which is much bigger than 1 is an indication that workload is a good candidate for parameterization as the only difference between the queries is literal constant (parameter) provided as part of the query text.  
  
 Usually, this situation happens if your application generates queries (instead of invoking stored procedures or parameterized queries) or if it relies on object-relational mapping frameworks that generate queries by default.  
  
 If you are in control of the application code you may consider rewriting of the data access layer to utilize stored procedures or parameterized queries. However, this situation can be also significantly improved without application changes by forcing query parameterization for the entire database (all queries) or for the individual query templates with the same query_hash.  
  
 Approach with individual query templates requires plan guide creation:  
  
```  
  
/*Apply plan guide for the selected query template*/  
DECLARE @stmt nvarchar(max);  
DECLARE @params nvarchar(max);  
EXEC sp_get_query_template   
    N'<your query text goes here>',  
    @stmt OUTPUT,   
    @params OUTPUT;  
  
EXEC sp_create_plan_guide   
    N'TemplateGuide1',   
    @stmt,   
    N'TEMPLATE',   
    NULL,   
    @params,   
    N'OPTION (PARAMETERIZATION FORCED)';  
```  
  
 Solution with plan guides is more precise but it requires more work.  
  
 If all your queries (or majority of them) are candidates for auto-parameterization than changing `FORCED PARAMETERIZATION` for the entire database may be a better option:  
  
```  
  
/*Apply forced parameterization for entire database*/  
ALTER DATABASE <database name> SET PARAMETERIZATION  FORCED;  
```  
  
 After you apply any of these steps, **Top Resource Consuming Queries** will show you different picture of your workload.  
  
 ![query-store-usage-8](../../relational-databases/performance/media/query-store-usage-8.png "query-store-usage-8")  
  
 In some cases your application may generate lots of different queries which are not good candidates for auto-parameterization. In that case you will see large number of queries in the system but the ratio between unique queries and unique query_hash is likely close to 1.  
  
 In that case you may want to set 'optimize for ad hoc workloads’ to prevent wasting cache memory on queries that won’t likely be executed again. To prevent capture of those queries in the Query Store, set `QUERY_CAPTURE_MODE` to `AUTO`.  
  
```  
sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
  
sp_configure 'optimize for ad hoc workloads', 1;  
GO  
RECONFIGURE;  
GO  
  
ALTER DATABASE  [QueryStoreTest] SET QUERY_STORE CLEAR;  
ALTER DATABASE  [QueryStoreTest] SET QUERY_STORE = ON   
    (OPERATION_MODE = READ_WRITE, QUERY_CAPTURE_MODE = AUTO);  
```  
  
## See Also  
 [Monitoring Performance By Using the Query Store](../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Best Practice with the Query Store](../../relational-databases/performance/best-practice-with-the-query-store.md)  
  
  