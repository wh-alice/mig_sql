---
title: "sp_syspolicy_subscribe_to_policy_category (Transact-SQL) | Microsoft Docs"
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
  - "sp_syspolicy_subscribe_to_policy_category"
  - "sp_syspolicy_subscribe_to_policy_category_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syspolicy_subscribe_to_policy_category"
ms.assetid: de88cc49-bcc8-4dc6-8e59-ad85cfbfb2fb
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syspolicy_subscribe_to_policy_category (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Adds a policy category subscription for the specified database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syspolicy_subscribe_to_policy_category [ @policy_category = ] 'policy_category'  
```  
  
## Arguments  
 [ **@policy_category=** ] **'***policy_category***'**  
 Is the name of the policy category that you want the database to subscribe to. *policy_category* is **sysname**, and is required.  
  
 To obtain values for *policy_category*, query the msdb.dbo.syspolicy_policy_categories system view.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 You must run sp_syspolicy_subscribe_to_policy_category in the context of the database where you want to add a policy category subscription.  
  
## Permissions  
 Requires membership in the db_owner fixed database role.  
  
## Examples  
 The following example adds a subscription to the 'Finance' policy category for the specified database.  
  
```  
USE <database_name>;  
  
EXEC sys.sp_syspolicy_subscribe_to_policy_category @policy_category = N'Finance';  
  
GO  
```  
  
## See Also  
 [Policy-Based Management Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/policy-based-management-stored-procedures-transact-sql.md)   
 [sp_syspolicy_unsubscribe_from_policy_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syspolicy-unsubscribe-from-policy-category-transact-sql.md)  
  
  