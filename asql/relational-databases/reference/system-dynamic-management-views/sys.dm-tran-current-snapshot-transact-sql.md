---
title: "sys.dm_tran_current_snapshot (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_tran_current_snapshot_TSQL"
  - "dm_tran_current_snapshot"
  - "dm_tran_current_snapshot_TSQL"
  - "sys.dm_tran_current_snapshot"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_tran_current_snapshot dynamic management view"
ms.assetid: 7509d595-c0e1-4237-a5ac-b41ad934544c
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_tran_current_snapshot (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a virtual table that displays all active transactions at the time when the current snapshot transaction starts. If the current transaction is not a snapshot transaction, this function returns no rows. **sys.dm_tran_current_snapshot** is similar to **sys.dm_tran_transactions_snapshot**, except that **sys.dm_tran_current_snapshot** returns only the active transactions for the current snapshot transaction.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_tran_current_snapshot**.  
  
## Syntax  
  
```  
  
sys.dm_tran_current_snapshot  
```  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**transaction_sequence_num**|**bigint**|Transaction sequence number of the active transaction.|  
|pdw_node_id|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../../a9retired/includes/sssds-md.md)] admin account.  
  
## Examples  
 The following example uses a test scenario in which four concurrent transactions, each identified by a transaction sequence number (XSN), are running in a database that has the ALLOW_SNAPSHOT_ISOLATION and READ_COMMITTED_SNAPSHOT options set to ON. The following transactions are running:  
  
-   XSN-57 is an update operation under serializable isolation.  
  
-   XSN-58 is the same as XSN-57.  
  
-   XSN-59 is a select operation under snapshot isolation.  
  
-   XSN-60 is the same as XSN-59.  
  
 The following query is executed within the scope of XSN-59.  
  
```  
SELECT   
    transaction_sequence_num  
  FROM sys.dm_tran_current_snapshot;  
```  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
```  
transaction_sequence_num  
------------------------  
57  
58  
```  
  
 The results show that XSN-57 and XSN-58 were active at the time that the snapshot transaction XSN-59 started. This same result persists, even after XSN-57 and XSN-58 commit or roll back, until the snapshot transaction finishes.  
  
 The same query is executed within the scope of XSN-60.  
  
 [!INCLUDE[ssResult](../../../relational-databases/includes/ssresult-md.md)]  
  
```  
transaction_sequence_num  
------------------------  
57  
58  
59  
```  
  
 The output for XSN-60 includes the same transactions that appear for XSN-59, but also includes XSN-59, which was active when XSN-60 started.  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Transaction Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/transaction-related-dynamic-management-views-and-functions-transact-sql.md)  
  
  

