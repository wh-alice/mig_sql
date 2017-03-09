---
title: "sys.query_store_query_text (Transact-SQL) | Microsoft Docs"
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
  - "SYS.QUERY_STORE_QUERY_TEXT"
  - "QUERY_STORE_QUERY_TEXT"
  - "SYS.QUERY_STORE_QUERY_TEXT_TSQL"
  - "QUERY_STORE_QUERY_TEXT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.query_store_query_text catalog view"
  - "query_store_query_text catalog view"
ms.assetid: f7032fa0-7c16-4492-bb82-685806c63a8c
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.query_store_query_text (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Contains  the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] text and the SQL handle of the query.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**query_text_id**|**bigint**|Primary key.|  
|**query_sql_text**|**nvarchar(max)**|SQL text of the query, as provided by the user. Includes whitespaces, hints and comments.|  
|**statement_sql_handle**|**vabinary(64)**|SQL handle of the individual query.|  
|**is_part_of_encrypted_module**|**bit**|Query text is a part of an encrypted module.|  
|**has_restricted_text**|**bit**|Query text contains a password or other unmentionable words.|  
  
## Permissions  
 Requires the **VIEW DATABASE STATE** permission.  
  
## See Also  
 [sys.database_query_store_options &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.database-query-store-options-transact-sql.md)   
 [sys.query_context_settings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-context-settings-transact-sql.md)   
 [sys.query_store_plan &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-plan-transact-sql.md)   
 [sys.query_store_query &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-query-transact-sql.md)   
 [sys.query_store_runtime_stats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-runtime-stats-transact-sql.md)   
 [sys.query_store_runtime_stats_interval &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.query-store-runtime-stats-interval-transact-sql.md)   
 [Monitoring Performance By Using the Query Store](../../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Query Store Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/query-store-stored-procedures-transact-sql.md)   
 [sys.fn_stmt_sql_handle_from_sql_stmt &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-functions/sys.fn-stmt-sql-handle-from-sql-stmt-transact-sql.md)  
  
  