---
title: "sp_query_store_reset_exec_stats (Transact-SQL) | Microsoft Docs"
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
  - "sp_query_store_reset_exec_stats_TSQL"
  - "sys.sp_query_store_reset_exec_stats_TSQL"
  - "sys.sp_query_store_reset_exec_stats"
  - "sp_query_store_reset_exec_stats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_query_store_reset_exec_stats"
  - "sys.sp_query_store_reset_exec_stats"
ms.assetid: 899df1ff-e871-44df-9361-f3b87ac3ea31
caps.latest.revision: 6
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_query_store_reset_exec_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Clears the runtime stats for a specific query plan from the query store.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_query_store_reset_exec_stats [ @plan_id = ] plan_id [;]  
```  
  
## Arguments  
 [ **@plan_id =** ] *plan_id*  
 Is the id of the query plan to being cleared. *plan_id* is a **bigint**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
  
## Permissions  
 Requires the **EXECUTE** permission on the database, and **DELETE** permission on the query store catalog views.  
  
## Examples  
 The following example returns information about the queries in the query store.  
  
```  
SELECT Txt.query_text_id, Txt.query_sql_text, Pl.plan_id, Qry.*  
FROM sys.query_store_plan AS Pl  
JOIN sys.query_store_query AS Qry  
    ON Pl.query_id = Qry.query_id  
JOIN sys.query_store_query_text AS Txt  
    ON Qry.query_text_id = Txt.query_text_id ;  
```  
  
 After you identify the plan_id that you want to clear the statistics, use the following example to delete the execution stats for a specific query plan. This example deletes the execution stats for plan number 3.  
  
```  
EXEC sp_query_store_reset_exec_stats 3;  
```  
  
## See Also  
 [sp_query_store_force_plan &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-query-store-force-plan-transact-sql.md)   
 [sp_query_store_remove_query &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-query-store-remove-query-transact-sql.md)   
 [sp_query_store_unforce_plan &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-query-store-unforce-plan-transact-sql.md)   
 [sp_query_store_remove_plan &#40;Transct-SQL&#41;](../../relational-databases/system-stored-procedures/sp-query-store-remove-plan-transct-sql.md)   
 [sp_query_store_flush_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-query-store-flush-db-transact-sql.md)   
 [Query Store Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/query-store-catalog-views-transact-sql.md)   
 [Monitoring Performance By Using the Query Store](../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)  
  
  