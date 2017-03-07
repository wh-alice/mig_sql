---
title: "STATS_DATE (Transact-SQL) | Microsoft Docs"
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
  - "STATS_DATE_TSQL"
  - "STATS_DATE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "statistical information [SQL Server], last time updated"
  - "STATS_DATE function"
  - "query optimization statistics [SQL Server], last time updated"
  - "last time statistics updated"
ms.assetid: f9ec3101-1e41-489d-b519-496a0d6089fb
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# STATS_DATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns the date of the most recent update for statistics on a table or indexed view.  
  
 For more information about updating statistics, see [Statistics](../../relational-databases/statistics/statistics.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
STATS_DATE ( object_id , stats_id )  
```  
  
## Arguments  
 *object_id*  
 ID of the table or indexed view with the statistics.  
  
 *stats_id*  
 ID of the statistics object.  
  
## Return Types  
 Returns **datetime** on success. Returns **NULL** on error.  
  
## Remarks  
 System functions can be used in the select list, in the WHERE clause, and anywhere an expression can be used.  
  
## Permissions  
 Requires membership in the db_owner fixed database role or permission to view the metadata for the table or indexed view.  
  
## Examples  
  
### A. Return the dates of the most recent statistics for a table  
 The following example returns the date of the most recent update for each statistics object on the `Person.Address` table.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT name AS stats_name,   
    STATS_DATE(object_id, stats_id) AS statistics_update_date  
FROM sys.stats   
WHERE object_id = OBJECT_ID('Person.Address');  
GO  
```  
  
 If statistics correspond to an index, the *stats_id* value in the [sys.stats](../../relational-databases/system-catalog-views/sys.stats-transact-sql.md) catalog view is the same as the *index_id* value in the [sys.indexes](../../relational-databases/system-catalog-views/sys.indexes-transact-sql.md) catalog view, and the following query returns the same results as the preceding query. If statistics do not correspond to an index, they are in the sys.stats results but not in the sys.indexes results.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT name AS index_name,   
    STATS_DATE(object_id, index_id) AS statistics_update_date  
FROM sys.indexes   
WHERE object_id = OBJECT_ID('Person.Address');  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### B. Learn when a named statistics was last updated  
 The following example creates statistics on the LastName column of the DimCustomer table. It then runs a query to show the date of the statistics. Then it udpates the statistics and runs the query again to show the updated date.  
  
```  
  
--First, create a statistics object  
USE AdventureWorksPDW2012;  
GO  
CREATE STATISTICS Customer_LastName_Stats  
ON AdventureWorksPDW2012.dbo.DimCustomer (LastName)  
WITH SAMPLE 50 PERCENT;  
GO  
  
--Return the date when Customer_LastName_Stats was last updated  
USE AdventureWorksPDW2012;  
GO  
SELECT stats_id, name AS stats_name,   
    STATS_DATE(object_id, stats_id) AS statistics_date  
FROM sys.stats s  
WHERE s.object_id = OBJECT_ID('dbo.DimCustomer')  
    AND s.name = 'Customer_LastName_Stats';  
GO  
  
--Update Customer_LastName_Stats so it will have a different timestamp in the next query  
GO  
UPDATE STATISTICS dbo.dimCustomer (Customer_LastName_Stats);  
  
--Return the date when Customer_LastName_Stats was last updated.  
SELECT stats_id, name AS stats_name,   
    STATS_DATE(object_id, stats_id) AS statistics_date  
FROM sys.stats s  
WHERE s.object_id = OBJECT_ID('dbo.DimCustomer')  
    AND s.name = 'Customer_LastName_Stats';  
GO  
  
```  
  
### C. View the date of the last update for all statistics on a table  
 This example returns the date for when each statistics object on the DimCustomer table was last updated.  
  
```  
--Return the dates all statistics on the table were last updated.  
SELECT stats_id, name AS stats_name,   
    STATS_DATE(object_id, stats_id) AS statistics_date  
FROM sys.stats s  
WHERE s.object_id = OBJECT_ID('dbo.DimCustomer');  
GO  
```  
  
 If statistics correspond to an index, the *stats_id* value in the [sys.stats](../../relational-databases/system-catalog-views/sys.stats-transact-sql.md) catalog view is the same as the *index_id* value in the [sys.indexes](../../relational-databases/system-catalog-views/sys.indexes-transact-sql.md) catalog view, and the following query returns the same results as the preceding query. If statistics do not correspond to an index, they are in the sys.stats results but not in the sys.indexes results.  
  
```  
USE AdventureWorksPDW2012;  
GO  
SELECT name AS index_name,   
    STATS_DATE(object_id, index_id) AS statistics_update_date  
FROM sys.indexes   
WHERE object_id = OBJECT_ID('dbo.DimCustomer');  
GO  
```  
  
## See Also  
 [System Functions &#40;Transact-SQL&#41;](../../relational-databases/system-functions/system-functions-transact-sql.md)   
 [UPDATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/update-statistics-transact-sql.md)   
 [sp_autostats &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-autostats-transact-sql.md)   
 [Statistics](../../relational-databases/statistics/statistics.md)  
  
  

