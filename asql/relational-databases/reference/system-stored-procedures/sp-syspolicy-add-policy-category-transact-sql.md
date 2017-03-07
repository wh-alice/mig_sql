---
title: "sp_syspolicy_add_policy_category (Transact-SQL) | Microsoft Docs"
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
  - "sp_syspolicy_add_policy_category"
  - "sp_syspolicy_add_policy_category_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syspolicy_add_policy_category"
ms.assetid: b682fac4-23c6-4662-8d05-c38f3b45507e
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syspolicy_add_policy_category (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Adds a policy category that can be used with Policy-Based Management. Policy categories enable you to organize policies, and to set policy scope.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syspolicy_add_policy_category [ @name = ] 'name'  
    [ , [ @mandate_database_subscriptions = ] mandate_database_subscriptions ]  
    , [ @policy_category_id = ] policy_category_id OUTPUT  
```  
  
## Arguments  
 [ **@name=** ] **'***name***'**  
 Is the name of the policy category. *name* is **sysname**, and is required. *name* cannot be NULL or an empty string.  
  
 [ **@mandate_database_subscriptions =** ] *mandate_database_subscriptions*  
 Determines whether database subscription is mandated for the policy category. *mandate_database_subscriptions* is a **bit** value, with a default of 1 (enabled).  
  
 [ **@policy_category_id=** ] *policy_category_id*  
 Is the identifier for the policy category. *policy_category_id* is **int**, and is returned as OUTPUT.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 You must run sp_syspolicy_add_policy_category in the context of the msdb system database.  
  
## Permissions  
 Requires membership in the PolicyAdministratorRole fixed database role.  
  
> [!IMPORTANT]  
>  Possible elevation of credentials: Users in the PolicyAdministratorRole role can create server triggers and schedule policy executions that can affect the operation of the instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)]. For example, users in the PolicyAdministratorRole role can create a policy that can prevent most objects from being created in the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)]. Because of this possible elevation of credentials, the PolicyAdministratorRole role should be granted only to users who are trusted with controlling the configuration of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].  
  
## Examples  
 The following example creates a policy category where subscription to the category is not mandated. This means that individual databases can be configured to opt in or opt out of policies in the category.  
  
```  
DECLARE @policy_category_id int;  
  
EXEC msdb.dbo.sp_syspolicy_add_policy_category  
  @name = N'Table Naming Policies'  
, @mandate_database_subscriptions = 0  
, @policy_category_id = @policy_category_id OUTPUT;  
  
GO  
```  
  
## See Also  
 [Policy-Based Management Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/policy-based-management-stored-procedures-transact-sql.md)   
 [sp_syspolicy_add_policy_category_subscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-add-policy-category-subscription-transact-sql.md)   
 [sp_syspolicy_delete_policy_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-delete-policy-category-transact-sql.md)  
  
  