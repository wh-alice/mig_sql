---
title: "sys.dm_tran_database_transactions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_tran_database_transactions"
  - "sys.dm_tran_database_transactions_TSQL"
  - "dm_tran_database_transactions_TSQL"
  - "sys.dm_tran_database_transactions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_tran_database_transactions dynamic management view"
ms.assetid: 82a44295-4cbc-4a5b-891a-8ebaf307b8f5
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_tran_database_transactions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns information about transactions at the database level.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_tran_database_transactions**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|transaction_id|**bigint**|ID of the transaction at the instance level, not the database level. It is only unique across all databases within an instance, but not unique across all server instances.|  
|database_id|**int**|ID of the database associated with the transaction.|  
|database_transaction_begin_time|**datetime**|Time at which the database became involved in the transaction. Specifically, it is the time of the first log record in the database for the transaction.|  
|database_transaction_type|**int**|1 = Read/write transaction<br /><br /> 2 = Read-only transaction<br /><br /> 3 = System transaction|  
|database_transaction_state|**int**|1 = The transaction has not been initialized.<br /><br /> 3 = The transaction has been initialized but has not generated any log records.<br /><br /> 4 = The transaction has generated log records.<br /><br /> 5 = The transaction has been prepared.<br /><br /> 10 = The transaction has been committed.<br /><br /> 11 = The transaction has been rolled back.<br /><br /> 12 = The transaction is being committed. In this state the log record is being generated, but it has not been materialized or persisted.|  
|database_transaction_status|**int**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|database_transaction_status2|**int**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|database_transaction_log_record_count|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of log records generated in the database for the transaction.|  
|database_transaction_replicate_record_count|**int**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of log records generated in the database for the transaction that will be replicated.|  
|database_transaction_log_bytes_used|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of bytes used so far in the database log for the transaction.|  
|database_transaction_log_bytes_reserved|**bigint**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of bytes reserved for use in the database log for the transaction.|  
|database_transaction_log_bytes_used_system|**int**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of bytes used so far in the database log for system transactions on behalf of the transaction.|  
|database_transaction_log_bytes_reserved_system|**int**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of bytes reserved for use in the database log for system transactions on behalf of the transaction.|  
|database_transaction_begin_lsn|**numeric(25,0)**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Log sequence number (LSN) of the begin record for the transaction in the database log.|  
|database_transaction_last_lsn|**numeric(25,0)**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> LSN of the most recently logged record for the transaction in the database log.|  
|database_transaction_most_recent_savepoint_lsn|**numeric(25,0)**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> LSN of the most recent savepoint for the transaction in the database log.|  
|database_transaction_commit_lsn|**numeric(25,0)**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> LSN of the commit log record for the transaction in the database log.|  
|database_transaction_last_rollback_lsn|**numeric(25,0)**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> LSN that was most recently rolled back to. If no rollback has taken place, the value will be MaxLSN (-1:-1:-1).|  
|database_transaction_next_undo_lsn|**numeric(25,0)**|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> LSN of the next record to undo.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## See Also  
 [sys.dm_tran_active_transactions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-tran-active-transactions-transact-sql.md)   
 [sys.dm_tran_session_transactions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-tran-session-transactions-transact-sql.md)   
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Transaction Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/transaction-related-dynamic-management-views-and-functions-transact-sql.md)  
  
  

