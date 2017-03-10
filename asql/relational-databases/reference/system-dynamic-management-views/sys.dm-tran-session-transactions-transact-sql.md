---
title: "sys.dm_tran_session_transactions (Transact-SQL) | Microsoft Docs"
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
  - "dm_tran_session_transactions"
  - "sys.dm_tran_session_transactions"
  - "sys.dm_tran_session_transactions_TSQL"
  - "dm_tran_session_transactions_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_tran_session_transactions dynamic management view"
ms.assetid: c7157491-58c2-49fe-87d7-0c9723113adf
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_tran_session_transactions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns correlation information for associated transactions and sessions.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_tran_session_transactions**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|session_id|**int**|ID of the session under which the transaction is running.|  
|transaction_id|**bigint**|ID of the transaction.|  
|transaction_descriptor|**binary(8)**|Transaction identifier used by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] when communicating with the client driver.|  
|enlist_count|**int**|Number of active requests in the session working on the transaction.|  
|is_user_transaction|**bit**|1 = The transaction was initiated by a user request.<br /><br /> 0 = System transaction.|  
|is_local|**bit**|1 = Local transaction.<br /><br /> 0 = Distributed transaction or an enlisted bound session transaction.|  
|is_enlisted|**bit**|1 = Enlisted distributed transaction.<br /><br /> 0 = Not an enlisted distributed transaction.|  
|is_bound|**bit**|1 = The transaction is active on the session via bound sessions.<br /><br /> 0 = The transaction is not active on the session via bound sessions.|  
|open_transaction_count||The number of open transactions for each session.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Remarks  
 Through bound sessions and distributed transactions, it is possible for a transaction to be running under more than one session. In such cases, sys.dm_tran_session_transactions will show multiple rows for the same transaction_id, one for each session under which the transaction is running.  
  
 By executing multiple requests in autocommit mode using multiple active result sets (MARS), it is possible to have more than one active transaction on a single session. In such cases, sys.dm_tran_session_transactions will show multiple rows for the same session_id, one for each transaction running under that session.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Transaction Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/transaction-related-dynamic-management-views-and-functions-transact-sql.md)  
  
  

