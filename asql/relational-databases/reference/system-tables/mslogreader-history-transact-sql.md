---
title: "MSlogreader_history (Transact-SQL) | Microsoft Docs"
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
  - "MSlogreader_history_TSQL"
  - "MSlogreader_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSlogreader_history system table"
ms.assetid: 2e399fa1-3591-4c1c-96b7-7964fe82c7c4
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSlogreader_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSlogreader_history** table contains history rows for the Log Reader Agents associated with the local Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**agent_id**|**int**|The ID of the Log Reader Agent.|  
|**runstatus**|**int**|The running status:<br /><br /> 1 = Start.<br /><br /> 2 = Succeed.<br /><br /> 3 = In progress.<br /><br /> 4 = Idle.<br /><br /> 5 = Retry.<br /><br /> 6 = Fail.|  
|**start_time**|**datetime**|The time to begin execution of the job.|  
|**time**|**datetime**|The time the message is logged.|  
|**duration**|**int**|The duration, in seconds, of the message session.|  
|**comments**|**nvarchar(255)**|The message text.|  
|**xact_seqno**|**varbinary(16)**|The last processed transaction sequence number.|  
|**delivery_time**|**int**|The time first transaction is delivered.|  
|**delivered_transactions**|**int**|The total number of transactions delivered in the session.|  
|**delivered_commands**|**int**|The total number of commands delivered in the session.|  
|**average_commands**|**int**|The average number of commands delivered in the session.|  
|**delivery_rate**|**float**|The average delivered commands per second.|  
|**delivery_latency**|**int**|The latency between the command entering the published database and being entered into the distribution database. In milliseconds.|  
|**error_id**|**int**|The ID of the error in the **MSrepl_error** system table.|  
|**timestamp**|**timestamp**|The timestamp column of this table.|  
|**updateable_row**|**bit**|Set to **1** if the history row can be overwritten.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  