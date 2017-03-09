---
title: "sp_subscription_cleanup (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "sp_subscription_cleanup_TSQL"
  - "sp_subscription_cleanup"
helpviewer_keywords: 
  - "sp_subscription_cleanup"
ms.assetid: bdc8aaa0-ff2d-40c2-84b2-4ba513ced279
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_subscription_cleanup (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes metadata when a subscription is dropped at a Subscriber. For a synchronizing transaction subscription, it also includes immediate-updating triggers. This stored procedure is executed at the Subscriber on the subscription database.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_subscription_cleanup [ @publisher = ] 'publisher'  
        , [ @publisher_db = ] 'publisher_db'  
    [ , [ @publication = ] 'publication']  
    [ , [ @reserved = ] 'reserved']  
```  
  
## Arguments  
 [ **@publisher=**] **'***publisher***'**  
 Is the name of the Publisher. *publisher* is **sysname**, with no default.  
  
 [ **@publisher_db=**] **'***publisher_db***'**  
 Is the name of the Publisher database. *publisher_db* is **sysname**, with no default.  
  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication. *publication* is **sysname**, with a default of NULL. If NULL, subscriptions using a shared agent publication in the publishing database will be deleted.  
  
 [ **@reserved=**] **'***reserved***'**  
 [!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_subscription_cleanup** is used in transactional and snapshot replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the **db_owner** fixed database role can execute **sp_subscription_cleanup**.  
  
## See Also  
 [sp_expired_subscription_cleanup &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-expired-subscription-cleanup-transact-sql.md)   
 [sp_mergesubscription_cleanup &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-mergesubscription-cleanup-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  