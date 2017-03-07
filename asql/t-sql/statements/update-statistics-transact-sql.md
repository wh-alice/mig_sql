---
title: "UPDATE STATISTICS (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-01"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "UPDATE STATISTICS"
  - "UPDATE_STATISTICS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "updating statistics"
  - "query optimization statistics [SQL Server], updating"
  - "UPDATE STATISTICS statement"
  - "statistical information [SQL Server], updating"
ms.assetid: 919158f2-38d0-4f68-82ab-e1633bd0d308
caps.latest.revision: 74
ms.author: "rickbyh"
manager: "jhubbard"
---
# UPDATE STATISTICS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Updates query optimization statistics on a table or indexed view. By default, the query optimizer already updates statistics as necessary to improve the query plan; in some cases you can improve query performance by using UPDATE STATISTICS or the stored procedure [sp_updatestats](../../relational-databases/system-stored-procedures/sp-updatestats-transact-sql.md) to update statistics more frequently than the default updates.  
  
 Updating statistics ensures that queries compile with up-to-date statistics. However, updating statistics causes queries to recompile. We recommend not updating statistics too frequently because there is a performance tradeoff between improving query plans and the time it takes to recompile queries. The specific tradeoffs depend on your application. UPDATE STATISTICS can use tempdb to sort the sample of rows for building statistics.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
UPDATE STATISTICS table_or_indexed_view_name   
    [   
        {   
            { index_or_statistics__name }  
          | ( { index_or_statistics_name } [ ,...n ] )   
                }  
    ]   
    [    WITH   
        [  
            FULLSCAN   
            | SAMPLE number { PERCENT | ROWS }   
            | RESAMPLE   
              [ ON PARTITIONS ( { <partition_number> | <range> } [, …n] ) ]  
            | <update_stats_stream_option> [ ,...n ]  
        ]   
        [ [ , ] [ ALL | COLUMNS | INDEX ]   
        [ [ , ] NORECOMPUTE ]   
        [ [ , ] INCREMENTAL = { ON | OFF } ]  
    ] ;  
  
<update_stats_stream_option> ::=  
    [ STATS_STREAM = stats_stream ]  
    [ ROWCOUNT = numeric_constant ]  
    [ PAGECOUNT = numeric_contant ]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
UPDATE STATISTICS schema_name . ] table_name   
    [ ( { statistics_name | index_name } ) ]  
    [ WITH   
       {  
              FULLSCAN   
            | SAMPLE number PERCENT   
            | RESAMPLE   
        }  
    ]  
[;]  
```  
  
## Arguments  
 *table_or_indexed_view_name*  
 Is the name of the table or indexed view that contains the statistics object.  
  
 *index_or_statistics_name*  
 Is the name of the index to update statistics on or name of the statistics to update. If *index_or_statistics_name* is not specified, the query optimizer updates all statistics for the table or indexed view. This includes statistics created using the CREATE STATISTICS statement, single-column statistics created when AUTO_CREATE_STATISTICS is on, and statistics created for indexes.  
  
 For more information about AUTO_CREATE_STATISTICS, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md). To view all indexes for a table or view, you can use [sp_helpindex](../../relational-databases/system-stored-procedures/sp-helpindex-transact-sql.md).  
  
 FULLSCAN  
 Compute statistics by scanning all rows in the table or indexed view. FULLSCAN and SAMPLE 100 PERCENT have the same results. FULLSCAN cannot be used with the SAMPLE option.  
  
 SAMPLE *number* { PERCENT | ROWS }  
 Specifies the approximate percentage or number of rows in the table or indexed view for the query optimizer to use when it updates statistics. For PERCENT, *number* can be from 0 through 100 and for ROWS, *number* can be from 0 to the total number of rows. The actual percentage or number of rows the query optimizer samples might not match the percentage or number specified. For example, the query optimizer scans all rows on a data page.  
  
 SAMPLE is useful for special cases in which the query plan, based on default sampling, is not optimal. In most situations, it is not necessary to specify SAMPLE because the query optimizer uses sampling and determines the statistically significant sample size by default, as required to create high-quality query plans. 
 
Starting with SQL Server 2016, sampling of data to build statistics is done in parallel, when using compatibility level 130, to improve the performance of statistics collection. The query optimizer will use parallel sample statistics, whenever a table size exceeds a certain threshold. 
   
 SAMPLE cannot be used with the FULLSCAN option. When neither SAMPLE nor FULLSCAN is specified, the query optimizer uses sampled data and computes the sample size by default.  
  
 We recommend against specifying 0 PERCENT or 0 ROWS. When 0 PERCENT or ROWS is specified, the statistics object is updated but does not contain statistics data.  
  
 For most workloads, a full scan is not required, and default sampling is adequate.  
However, certain workloads that are sensitive to widely varying data distributions may require an increased sample size, or even a full scan.  
For more information, see  the [CSS SQL Escalation Services blog](http://blogs.msdn.com/b/psssql/archive/2010/07/09/sampling-can-produce-less-accurate-statistics-if-the-data-is-not-evenly-distributed.aspx).  
  
 RESAMPLE  
 Update each statistic using its most recent sample rate.  
  
 Using RESAMPLE can result in a full-table scan. For example, statistics for indexes use a full-table scan for their sample rate. When none of the sample options (SAMPLE, FULLSCAN, RESAMPLE) are specified, the query optimizer samples the data and computes the sample size by default.  
  
 ON PARTITIONS ( { <partition_number> | \<range> } [, …n] ) ]  
 Forces the leaf-level statistics covering the partitions specified in the ON PARTITIONS clause to be recomputed, and then merged to build the global statistics. WITH RESAMPLE is required because partition statistics built with different sample rates cannot be merged together.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 ALL | COLUMNS | INDEX  
 Update all existing statistics, statistics created on one or more columns, or statistics created for indexes. If none of the options are specified, the UPDATE STATISTICS statement updates all statistics on the table or indexed view.  
  
 NORECOMPUTE  
 Disable the automatic statistics update option, AUTO_UPDATE_STATISTICS, for the specified statistics. If this option is specified, the query optimizer completes this statistics update and disables future updates.  
  
 To re-enable the AUTO_UPDATE_STATISTICS option behavior, run UPDATE STATISTICS again without the NORECOMPUTE option or run **sp_autostats**.  
  
> [!WARNING]  
>  Using this option can produce suboptimal query plans. We recommend using this option sparingly, and then only by a qualified system administrator.  
  
 For more information about the AUTO_STATISTICS_UPDATE option, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md).  
  
 INCREMENTAL = { ON | OFF }  
 When **ON**, the statistics are recreated as per partition statistics. When **OFF**, the statistics tree is dropped and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] re-computes the statistics. The default is **OFF**.  
  
 If per partition statistics are not supported an error is generated. Incremental stats are not supported for following statistics types:  
  
-   Statistics created with indexes that are not partition-aligned with the base table.  
  
-   Statistics created on Always On readable secondary databases.  
  
-   Statistics created on read-only databases.  
  
-   Statistics created on filtered indexes.  
  
-   Statistics created on views.  
  
-   Statistics created on internal tables.  
  
-   Statistics created with spatial indexes or XML indexes.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 <update_stats_stream_option>  
 [!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]  
  
## Remarks  
  
## When to Use UPDATE STATISTICS  
 For more information about when to use UPDATE STATISTICS, see [Statistics](../../relational-databases/statistics/statistics.md).  
  
## Updating All Statistics with sp_updatestats  
 For information about how to update statistics for all user-defined and internal tables in the database, see the stored procedure [sp_updatestats &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-updatestats-transact-sql.md). For example, the following command calls sp_updatestats to update all statistics for the database.  
  
```  
EXEC sp_updatestats;  
```  
  
## Determining the Last Statistics Update  
 To determine when statistics were last updated, use the [STATS_DATE](../../t-sql/functions/stats-date-transact-sql.md) function.  
  
## PDW / SQL Data Warehouse  
 The following syntax is not supported by PDW / SQL Data Warehouse  
  
-   ```  
    update statistics t1 (a,b);   
    ```  
  
-   ```  
    update statistics t1 (a) with sample 10 rows;  
    ```  
  
-   ```  
    update statistics t1 (a) with NORECOMPUTE;  
    ```  
  
-   ```  
    update statistics t1 (a) with INCREMENTAL=ON;  
    ```  
  
-   ```  
    update statistics t1 (a) with stats_stream = 0x01;  
    ```  
  
## Permissions  
 Requires ALTER permission on the table or view.  
  
## Examples  
  
### A. Update all statistics on a table  
 The following example updates the statistics for all indexes on the `SalesOrderDetail` table.  
  
```  
USE AdventureWorks2012;  
GO  
UPDATE STATISTICS Sales.SalesOrderDetail;  
GO  
```  
  
### B. Update the statistics for an index  
 The following example updates the statistics for the `AK_SalesOrderDetail_rowguid` index of the `SalesOrderDetail` table.  
  
```  
USE AdventureWorks2012;  
GO  
UPDATE STATISTICS Sales.SalesOrderDetail AK_SalesOrderDetail_rowguid;  
GO  
```  
  
### C. Update statistics by using 50 percent sampling  
 The following example creates and then updates the statistics for the `Name` and `ProductNumber` columns in the `Product` table.  
  
```  
USE AdventureWorks2012;  
GO  
CREATE STATISTICS Products  
    ON Production.Product ([Name], ProductNumber)  
    WITH SAMPLE 50 PERCENT  
-- Time passes. The UPDATE STATISTICS statement is then executed.  
UPDATE STATISTICS Production.Product(Products)   
    WITH SAMPLE 50 PERCENT;  
```  
  
### D. Update statistics by using FULLSCAN and NORECOMPUTE  
 The following example updates the `Products` statistics in the `Product` table, forces a full scan of all rows in the `Product` table, and turns off automatic statistics for the `Products` statistics.  
  
```  
USE AdventureWorks2012;  
GO  
UPDATE STATISTICS Production.Product(Products)  
    WITH FULLSCAN, NORECOMPUTE;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### E. Update statistics on a table  
 The following example updates the `CustomerStats1` statistics on the `Customer` table.  
  
```  
UPDATE STATISTICS Customer ( CustomerStats1 );  
```  
  
### F. Update statistics by using a full scan  
 The following example updates the `CustomerStats1` statistics, based on scanning all of the rows in the `Customer` table.  
  
```  
UPDATE STATISTICS Customer (CustomerStats1) WITH FULLSCAN;  
```  
  
### G. Update all statistics on a table  
 The following example updates all statistics on the `Customer` table.  
  
```  
UPDATE STATISTICS Customer;  
```  
  
## See Also  
 [Statistics](../../relational-databases/statistics/statistics.md)   
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)   
 [CREATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/create-statistics-transact-sql.md)   
 [DBCC SHOW_STATISTICS &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-show-statistics-transact-sql.md)   
 [DROP STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/drop-statistics-transact-sql.md)   
 [sp_autostats &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-autostats-transact-sql.md)   
 [sp_updatestats &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-updatestats-transact-sql.md)   
 [STATS_DATE &#40;Transact-SQL&#41;](../../t-sql/functions/stats-date-transact-sql.md)  
  
  

