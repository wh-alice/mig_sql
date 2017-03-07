---
title: "sp_createstats (Transact-SQL) | Microsoft Docs"
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
  - "sp_createstats_TSQL"
  - "sp_createstats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_createstats"
ms.assetid: 8204f6f2-5704-40a7-8d51-43fc832eeb54
caps.latest.revision: 47
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_createstats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Calls the [CREATE STATISTICS](../../t-sql/statements/create-statistics-transact-sql.md) statement to create single-column statistics on columns that are not already the first column in a statistics object. Creating single-column statistics increases the number of histograms, which can improve cardinality estimates, query plans, and query performance. The first column of a statistics object has a histogram; other columns do not have a histogram.  
  
 sp_createstats is useful for applications such as benchmarking when query execution times are critical and cannot wait for the query optimizer to generate single-column statistics. In most cases, it is not necessary to use sp_createstats; the query optimizer generates single-column statistics as necessary to improve query plans when the **AUTO_CREATE_STATISTICS** option is on.  
  
 For more information about statistics, see [Statistics](../../relational-databases/statistics/statistics.md). For more information about generating single-column statistics, see the **AUTO_CREATE_STATISTICS** option in [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_createstats   
    [   [ @indexonly =   ] { 'indexonly'   | 'NO' } ]   
    [ , [ @fullscan =    ] { 'fullscan'    | 'NO' } ]   
    [ , [ @norecompute = ] { 'norecompute' | 'NO' } ]  
    [ , [ @incremental = ] { 'incremental' | 'NO' } ]  
```  
  
## Arguments  
 [ **@indexonly=** ] **'indexonly'**  
 Creates statistics only on columns that are in an existing index and are not the first column in any index definition. **indexonly** is **char(9)**. The default is NO.  
  
 [ **@fullscan=** ] **'fullscan'**  
 Uses the [CREATE STATISTICS](../../t-sql/statements/create-statistics-transact-sql.md) statement with the **FULLSCAN** option. **fullscan** is **char(9)**.  The default is NO.  
  
 [ **@norecompute=** ] **'norecompute'**  
 Uses the [CREATE STATISTICS](../../t-sql/statements/create-statistics-transact-sql.md) statement with the **NORECOMPUTE** option. **norecompute** is **char(12)**.  The default is NO.  
  
 [ **@incremental=** ] **'incremental'**  
 Uses the [CREATE STATISTICS](../../t-sql/statements/create-statistics-transact-sql.md) statement with the **INCREMENTAL = ON** option. **Incremental** is **char(12)**.  The default is NO.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 Each new statistics object has the same name as the column it is created on.  
  
## Remarks  
 sp_createstats does not create or update statistics on columns that are the first column in an existing statistics object;  This includes the first column of statistics created for indexes, columns with single-column statistics generated with AUTO_CREATE_STATISTICS option, and the first column of statistics created with the CREATE STATISTICS statement. sp_createstats does not create statistics on the first columns of disabled indexes unless that column is used in another enabled index. sp_createstats does not create statistics on tables with a disabled clustered index.  
  
 When the table contains a column set, sp_createstats does not create statistics on sparse columns. For more information about column sets and sparse columns, see [Use Column Sets](../../relational-databases/tables/use-column-sets.md) and [Use Sparse Columns](../../relational-databases/tables/use-sparse-columns.md).  
  
## Permissions  
 Requires membership in the db_owner fixed database role.  
  
## Examples  
  
### A. Create single-column statistics on all eligible columns  
 The following example creates single-column statistics on all eligible columns in the current database.  
  
```  
EXEC sp_createstats;  
GO  
```  
  
### B. Create single-column statistics on all eligible index columns  
 The following example creates single-column statistics on all eligible columns that are already in an index and are not the first column in the index.  
  
```  
EXEC sp_createstats 'indexonly';  
GO  
```  
  
## See Also  
 [Statistics](../../relational-databases/statistics/statistics.md)   
 [CREATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/create-statistics-transact-sql.md)   
 [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md)   
 [DBCC SHOW_STATISTICS &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-show-statistics-transact-sql.md)   
 [DROP STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/drop-statistics-transact-sql.md)   
 [UPDATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/update-statistics-transact-sql.md)   
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  