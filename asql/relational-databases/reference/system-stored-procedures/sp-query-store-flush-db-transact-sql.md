---
title: "sp_query_store_flush_db (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_query_store_force_plan_TSQL"
  - "sys.sp_query_store_force_plan_TSQL"
  - "sp_query_store_force_plan"
  - "sys.sp_query_store_force_plan"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sp_query_store_force_plan"
  - "sp_query_store_force_plan"
ms.assetid: 580c03ae-57fc-4562-a6bb-5ec89521e38c
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_query_store_flush_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Flushes  the in-memory portion of the Query Store data to disk.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_query_store_flush_db [;]  
```  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
  
## Permissions  
 Requires the **EXECUTE** permission on the database, and **DELETE** permission on the query store catalog views.  
  
## Examples  
 The following example flushes the in-memory portion of the Query Store data to disk.  
  
```  
EXEC sp_query_store_flush_db;  
```  
  
## See Also  
 [sp_query_store_force_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-query-store-force-plan-transact-sql.md)   
 [sp_query_store_remove_query &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-query-store-remove-query-transact-sql.md)   
 [sp_query_store_unforce_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-query-store-unforce-plan-transact-sql.md)   
 [sp_query_store_reset_exec_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-query-store-reset-exec-stats-transact-sql.md)   
 [sp_query_store_remove_plan &#40;Transct-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-query-store-remove-plan-transct-sql.md)   
 [sp_query_store_reset_exec_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-query-store-reset-exec-stats-transact-sql.md)   
 [Query Store Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/query-store-catalog-views-transact-sql.md)   
 [Monitoring Performance By Using the Query Store](../../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)  
  
  