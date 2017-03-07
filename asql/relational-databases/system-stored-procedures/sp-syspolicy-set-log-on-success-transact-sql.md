---
title: "sp_syspolicy_set_log_on_success (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_syspolicy_set_log_on_success_TSQL"
  - "sp_syspolicy_set_log_on_success"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syspolicy_set_log_on_success"
ms.assetid: 6b33383b-5949-488a-a911-59299a270f46
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syspolicy_set_log_on_success (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Specifies whether successful policy evaluations are logged in the Policy History log for Policy-Based Management.  
  
 
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_syspolicy_set_log_on_success [ @value = ] value  
```  
  
## Arguments  
 [ **@value=** ] *value*  
 Determines whether successful policy evaluations are logged. *value* is **sqlvariant**, and can be one of the following values:  
  
-   0 or 'false' = Successful policy evaluations are not logged.  
  
-   1 or 'true' = Successful policy evaluations are logged.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 You must run sp_syspolicy_set_log_on_success in the context of the msdb system database.  
  
 When *value* is set to 0 or to 'false', only failed policy evaluations are logged.  
  
## Permissions  
 Requires membership in the PolicyAdministratorRole fixed database role.  
  
> **IMPORTANT!!** Possible elevation of credentials: Users in the PolicyAdministratorRole role can create server triggers and schedule policy executions that can affect the operation of the instance of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. For example, users in the PolicyAdministratorRole role can create a policy that can prevent most objects from being created in the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)]. Because of this possible elevation of credentials, the PolicyAdministratorRole role should be granted only to users who are trusted with controlling the configuration of the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)].  
  
## Examples  
 The following example enables the logging of successful policy evaluations.  
  
```  
EXEC msdb.dbo.sp_syspolicy_set_log_on_success @value = 1;  
  
GO  
```  
  
## See Also  
 [Policy-Based Management Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/policy-based-management-stored-procedures-transact-sql.md)   
 [sp_syspolicy_configure &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-syspolicy-configure-transact-sql.md)  
  
  