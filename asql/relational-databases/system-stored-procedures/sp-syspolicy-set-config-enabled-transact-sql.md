---
title: "sp_syspolicy_set_config_enabled (Transact-SQL) | Microsoft Docs"
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
  - "sp_syspolicy_set_config_enabled"
  - "sp_syspolicy_set_config_enabled_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syspolicy_set_config_enabled"
ms.assetid: ddace1cc-ff23-4b61-8efb-8ded3df438bb
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syspolicy_set_config_enabled (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Enables or disables Policy-Based Management.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_syspolicy_set_config_enabled [ @value = ] value  
```  
  
## Arguments  
 [ **@value=** ] *value*  
 Determines whether Policy-Based Management is enabled. *value* is **sqlvariant**, and can be one of the following values:  
  
-   0 (or 'false') = Disabled  
  
-   1 (or 'true') = Enabled  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 You must run sp_syspolicy_set_config_enabled in the context of the msdb system database.  
  
## Permissions  
 Requires membership in the PolicyAdministratorRole fixed database role.  
  
> [!IMPORTANT]  
>  Possible elevation of credentials: Users in the PolicyAdministratorRole role can create server triggers and schedule policy executions that can affect the operation of the instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. For example, users in the PolicyAdministratorRole role can create a policy that can prevent most objects from being created in the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. Because of this possible elevation of credentials, the PolicyAdministratorRole role should be granted only to users who are trusted with controlling the configuration of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
## Examples  
 The following example enables Policy-Based Management.  
  
```  
EXEC msdb.dbo.sp_syspolicy_set_config_enabled @value = 1;  
  
GO   
```  
  
## See Also  
 [Policy-Based Management Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/policy-based-management-stored-procedures-transact-sql.md)   
 [sp_syspolicy_configure &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-syspolicy-configure-transact-sql.md)  
  
  