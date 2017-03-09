---
title: "sp_syspolicy_purge_history (Transact-SQL) | Microsoft Docs"
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
  - "sp_syspolicy_purge_history_TSQL"
  - "sp_syspolicy_purge_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syspolicy_purge_history"
ms.assetid: 6db414e7-4946-4bd2-8264-6b490810b306
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syspolicy_purge_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes the policy evaluation history according to the history retention interval setting.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syspolicy_purge_history  
```  
  
## Arguments  
 This stored procedure has no parameters.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 You must run sp_syspolicy_purge_history in the context of the msdb system database.  
  
 To view the history retention interval, you can use the following query:  
  
```  
SELECT current_value  
FROM msdb.dbo.syspolicy_configuration  
WHERE name = N'HistoryRetentionInDays';  
GO  
```  
  
> [!NOTE]  
>  If the history retention interval is set to 0, policy evaluation history will not be removed.  
  
## Permissions  
 Requires membership in the PolicyAdministratorRole fixed database role.  
  
> [!IMPORTANT]  
>  Possible elevation of credentials: Users in the PolicyAdministratorRole role can create server triggers and schedule policy executions that can affect the operation of the instance of the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)]. For example, users in the PolicyAdministratorRole role can create a policy that can prevent most objects from being created in the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)]. Because of this possible elevation of credentials, the PolicyAdministratorRole role should be granted only to users who are trusted with controlling the configuration of the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
## Examples  
 The following example removes the policy evaluation history.  
  
```  
EXEC msdb.dbo.sp_syspolicy_purge_history;  
  
GO  
```  
  
## See Also  
 [Policy-Based Management Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/policy-based-management-stored-procedures-transact-sql.md)   
 [sp_syspolicy_set_config_history_retention &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-set-config-history-retention-transact-sql.md)   
 [sp_syspolicy_delete_policy_execution_history &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-delete-policy-execution-history-transact-sql.md)  
  
  