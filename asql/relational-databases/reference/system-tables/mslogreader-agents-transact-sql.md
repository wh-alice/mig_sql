---
title: "MSlogreader_agents (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "MSlogreader_agents_TSQL"
  - "MSlogreader_agents"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSlogreader_agents system table"
ms.assetid: 8baa3c5a-cb40-42d0-b966-00e6d55368e8
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSlogreader_agents (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSlogreader_agents** table contains one row for each Log Reader Agent running at the local Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**id**|**int**|The ID of the Log Reader Agent.|  
|**name**|**nvarchar(100)**|The name of the Log Reader Agent.|  
|**publisher_id**|**smallint**|The ID of the Publisher.|  
|**publisher_db**|**sysname**|The name of the Publisher database.|  
|**publication**|**sysname**|The name of the publication.|  
|**local_job**|**bit**|Indicates whether there is a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent job on the local Distributor.|  
|**job_id**|**binary(16)**|The job identification number.|  
|**profile_id**|**int**|The configuration ID from the [MSagent_profiles](../../../relational-databases/reference/system-tables/msagent-profiles-transact-sql.md) table.|  
|**publisher_security_mode**|**smallint**|The security mode used by the agent when connecting to the Publisher, which can be one of the following:<br /><br /> **0** = [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.<br /><br /> **1** = [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows Authentication.|  
|**publisher_login**|**sysname**|The login used when connecting to the Publisher.|  
|**publisher_password**|**nvarchar(524)**|The encrypted value of the password that is used when connecting to the Publisher.|  
|**job_step_uid**|**uniqueidentifier**|The unique ID of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent job step in which the agent is started.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  