---
title: "sp_syspolicy_rename_policy_category (Transact-SQL) | Microsoft Docs"
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
  - "sp_syspolicy_rename_policy_category_TSQL"
  - "sp_syspolicy_rename_policy_category"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syspolicy_rename_policy_category"
ms.assetid: 8a9c4a3a-91e8-435e-b721-e0293c92be3e
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syspolicy_rename_policy_category (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Renames an existing policy category in Policy-Based Management.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syspolicy_rename_policy_category { [ @name = ] 'name' | [ @policy_category_id = ] policy_category_id }  
    , [ @new_name = ] 'new_name'  
```  
  
## Arguments  
 [ **@name =** ] **'***name***'**  
 Is the name of the policy category that you want to rename. *name* is **sysname**, and must be specified if *policy_category_id* is NULL.  
  
 [ **@policy_category_id=** ] *policy_category_id*  
 Is the identifier for the policy category that you want to rename. *policy_category_id* is **int**, and must be specified if *name* is NULL.  
  
 [ **@new_name=** ] **'***new_name***'**  
 Is the new name for the policy category. *new_name* is **sysname**, and is required. Cannot be NULL or an empty string.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 You must run sp_syspolicy_rename_policy_category in the context of the msdb system database.  
  
 You must specify a value for either *name* or *policy_category_id*. Both cannot be NULL. To obtain these values, query the msdb.dbo.syspolicy_policy_categories system view.  
  
## Permissions  
 Requires membership in the PolicyAdministratorRole fixed database role.  
  
> [!IMPORTANT]  
>  Possible elevation of credentials: Users in the PolicyAdministratorRole role can create server triggers and schedule policy executions that can affect the operation of the instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)]. For example, users in the PolicyAdministratorRole role can create a policy that can prevent most objects from being created in the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)]. Because of this possible elevation of credentials, the PolicyAdministratorRole role should be granted only to users who are trusted with controlling the configuration of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].  
  
## Examples  
 The following example renames a policy category that is named 'Test Category 1' to 'Test Category 2'.  
  
```  
EXEC msdb.dbo.sp_syspolicy_rename_policy_category @name = N'Test Category 1'  
, @new_name = N'Test Category 2';  
  
GO  
```  
  
## See Also  
 [Policy-Based Management Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/policy-based-management-stored-procedures-transact-sql.md)   
 [sp_syspolicy_add_policy_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-add-policy-category-transact-sql.md)   
 [sp_syspolicy_delete_policy_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-delete-policy-category-transact-sql.md)   
 [sp_syspolicy_update_policy_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-update-policy-category-transact-sql.md)  
  
  