---
title: "logmarkhistory (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "logmarkhistory"
  - "logmarkhistory_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "logmarkhistory system table"
ms.assetid: 5c1becc5-f34e-4869-bf69-dfafab684540
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# logmarkhistory (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each marked transaction that has been committed. This table is stored in the **msdb** database.  
  

|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_name**|**nvarchar(128)**|Local database where marked transaction occurred.|  
|**mark_name**|**nvarchar(128)**|User-provided name for marked transaction.|  
|**description**|**nvarchar(255)**|User-provided description of the marked transaction. Can be NULL.|  
|**user_name**|**nvarchar(128)**|Database user name that performed marked transaction. Can be NULL.|  
|**lsn**|**numeric(25,0)**|Log sequence number of transaction record where mark occurred.|  
|**mark_time**|**datetime**|Commit time of marked transaction (local time).|  
  
## See Also  
 [Restore a Database to a Marked Transaction &#40;SQL Server Management Studio&#41;](../../relational-databases/backup-restore/restore-a-database-to-a-marked-transaction-sql-server-management-studio.md)   
 [Use Marked Transactions to Recover Related Databases Consistently &#40;Full Recovery Model&#41;](../Topic/Use%20Marked%20Transactions%20to%20Recover%20Related%20Databases%20Consistently%20\(Full%20Recovery%20Model\).md)   
 [System Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/system-tables-transact-sql.md)  
  
  