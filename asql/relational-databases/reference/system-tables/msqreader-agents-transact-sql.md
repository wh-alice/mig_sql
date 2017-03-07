---
title: "MSqreader_agents (Transact-SQL) | Microsoft Docs"
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
  - "MSqreader_agents_TSQL"
  - "MSqreader_agents"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSqreader_agents system table"
ms.assetid: dfa1f45e-c531-4385-a097-0a9edd1d7eab
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSqreader_agents (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSqreader_agents** table contains one row for each Queue Reader Agent running at the local Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**id**|**int**|The ID of the Queue Reader Agent.|  
|**name**|**nvarchar(100)**|The name of the Queue Reader Agent.|  
|**job_id**|**binary(16)**|The unique job ID number from **sysjobs** table.|  
|**profile_id**|**int**|The profile ID from the **MSagent_profiles** table.|  
|**job_step_uid**|**uniqueidentifier**|The unique ID of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent job step in which the agent is started.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  