---
title: "sp_help_agent_default (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_agent_default"
  - "sp_help_agent_default_TSQL"
helpviewer_keywords: 
  - "sp_help_agent_default"
ms.assetid: 7ba55e39-05dd-43c7-b5da-b268ed8426dd
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_help_agent_default (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Retrieves the ID of the default configuration for the agent type passed as parameter. This stored procedure is executed at Distributor on any database.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_help_agent_default [ @profile_id= ] profile_id OUTPUT   
        , [ @agent_type = ] agent_type  
```  
  
## Arguments  
 [ **@profile_id=**] *profile_id***OUTPUT**  
 Is the ID of the default configuration for the type of agent. *profile_id* is **int**, with no default.*profile_id* is also an OUTPUT parameter and returns the ID of the default configuration for the type of agent.  
  
 [ **@agent_type=**] **'***agent_type***'**  
 Is the type of agent. *agent_type* is **int**, with no default, and can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**1**|Snapshot Agent.|  
|**2**|Log Reader Agent.|  
|**3**|Distribution Agent.|  
|**4**|Merge Agent.|  
|**9**|Queue Reader Agent|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_help_agent_default** is used in all types of replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **replmonitor** fixed database role can execute **sp_help_agent_default**.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  