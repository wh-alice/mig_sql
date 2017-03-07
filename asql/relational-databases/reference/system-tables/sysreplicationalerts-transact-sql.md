---
title: "sysreplicationalerts (Transact-SQL) | Microsoft Docs"
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
  - "sysreplicationalerts_TSQL"
  - "sysreplicationalerts"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysreplicationalerts system table"
ms.assetid: 6ed15828-8cca-4cf0-b2ff-1ecd0d8db11a
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sysreplicationalerts (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains information about the conditions causing a replication alert to fire. This table is stored in the **msdb** database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**alert_id**|**int**|The ID of the alert.|  
|**status**|**int**|The user-defined value:<br /><br /> **0** = Unserviced.<br /><br /> **1** = Serviced.|  
|**agent_type**|**int**|Type of agent:<br /><br /> **1** = Snapshot Agent.<br /><br /> **2** = Log Reader Agent.<br /><br /> **3** = Distribution Agent.<br /><br /> **4** = Merge Agent.|  
|**agent_id**|**int**|The agent ID from the tables **MSsnapshot_agents**, **MSlogreader_agents**, **MSdistribution_agents**, or **MSmerge_agents**.|  
|**error_id**|**int**|The ID of the error stored in **MSrepl_errors**.|  
|**alert_error_code**|**int**|The message ID of the alert raised when logging this record.|  
|**time**|**datetime**|The time the record was inserted.|  
|**publisher**|**sysname**|The name of the Publisher associated with the agent that fired this alert.|  
|**publisher_db**|**sysname**|The publisher database associated with the agent that fired this alert.|  
|**publication**|**sysname**|The publication associated with the agent that fired this alert.|  
|**publication_type**|**int**|The type of publication:<br /><br /> **0** = Snapshot.<br /><br /> **1** = Transactional.<br /><br /> **2** = Merge.|  
|**subscriber**|**sysname**|The name of the Subscriber associated with the agent that fired this alert.|  
|**subscriber_db**|**sysname**|The name of the Subscriber database associated with the agent that fired this alert.|  
|**article**|**sysname**|The name of the article associated with the agent that fired this alert.|  
|**destination_object**|**sysname**|The name of the subscription table associated with the alert.|  
|**source_object**|**sysname**|The name of the published table associated with the alert.|  
|**alert_error_text**|**ntext**|The text of the alert.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  