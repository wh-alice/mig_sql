---
title: "MSqreader_history (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "MSqreader_history"
  - "MSqreader_history_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSqreader_history system table"
ms.assetid: c5c91d39-513c-4a77-870b-c8ef74a1cd6b
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSqreader_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSqreader_history** table contains history rows for the Queue Reader Agents associated with the local Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**agent_id**|**int**|The ID of the Queue Reader Agent.|  
|**publication_id**|**int**|The ID of the publication.|  
|**runstatus**|**int**|The running state of the agent:<br /><br /> **1** = Start.<br /><br /> **2** = Succeed.<br /><br /> **3** = In progress.<br /><br /> **4** = Idle.<br /><br /> **5** = Retry.<br /><br /> **6** = Fail.|  
|**start_time**|**datetime**|The date and time at which agent session started.|  
|**time**|**datetime**|The date and time of last logged message.|  
|**duration**|**int**|The elapsed time of the logged session activity, in seconds.|  
|**comments**|**nvarchar(255)**|The descriptive text.|  
|**transaction_id**|**nvarchar(40)**|The transaction ID stored with the message, if applicable.|  
|**transaction_status**|**int**|The status of the transaction.|  
|**transactions_processed**|**int**|The cumulative number of transactions processed in the session.|  
|**commands_processed**|**int**|The cumulative number of commands processed in the session.|  
|**delivery_rate**|**float(53)**|The average number of commands delivered per second.|  
|**transaction_rate**|**float(53)**|The rate of transactions processed.|  
|**subscriber**|**sysname**|The name of the Subscriber.|  
|**subscriberdb**|**sysname**|The name of the subscription database.|  
|**error_id**|**int**|If not zero, the number represents a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] error message.|  
|**timestamp**|**timestamp**|The timestamp column for the table.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  