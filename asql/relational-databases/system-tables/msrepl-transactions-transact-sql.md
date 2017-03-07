---
title: "MSrepl_transactions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSrepl_transactions_TSQL"
  - "MSrepl_transactions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSrepl_transactions system table"
ms.assetid: d325288d-47ae-4488-8799-122f7ab43459
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSrepl_transactions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSrepl_transactions** table contains one row for each replicated transaction. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisher_database_id**|**int**|The ID of the Publisher database.|  
|**xact_id**|**varbinary(16)**|The ID of the transaction.|  
|**xact_seqno**|**varbinary(16)**|The sequence number of the transaction.|  
|**entry_time**|**datetime**|The time the transaction entered the distribution database.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  