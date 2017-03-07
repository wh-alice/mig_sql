---
title: "sp_drop_agent_profile (Transact-SQL) | Microsoft Docs"
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
  - "sp_drop_agent_profile"
  - "sp_drop_agent_profile_TSQL"
helpviewer_keywords: 
  - "sp_drop_agent_profile"
ms.assetid: b884f9ef-ae89-4cbc-a917-532c3ff6ed41
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_drop_agent_profile (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops a profile from the **MSagent_profiles** table. This stored procedure is executed at the Distributor on any database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_drop_agent_profile [ @profile_id = ] profile_id  
```  
  
## Arguments  
 [ **@profile_id=**] *profile_id*  
 Is the ID of the profile to be dropped. *profile_id* is **int**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_drop_agent_profile** is used in all types of replication.  
  
 The parameters of the given profile are also dropped from the **MSagent_parameters** table.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_drop_agent_profile**.  
  
## See Also  
 [sp_add_agent_profile &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-agent-profile-transact-sql.md)   
 [sp_change_agent_profile &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-change-agent-profile-transact-sql.md)   
 [sp_help_agent_profile &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-agent-profile-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  