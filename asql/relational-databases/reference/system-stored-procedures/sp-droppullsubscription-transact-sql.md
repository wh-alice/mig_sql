---
title: "sp_droppullsubscription (Transact-SQL) | Microsoft Docs"
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
  - "sp_droppullsubscription"
  - "sp_droppullsubscription_TSQL"
helpviewer_keywords: 
  - "sp_droppullsubscription"
ms.assetid: 7352d94a-f8f2-42ea-aaf1-d08c3b5a0e76
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_droppullsubscription (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops a subscription at the current database of the Subscriber. This stored procedure is executed at the Subscriber on the pull subscription database.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_droppullsubscription [ @publisher= ] 'publisher'  
        , [ @publisher_db= ] 'publisher_db'  
        , [ @publication= ] 'publication'  
    [ , [ @reserved= ] reserved ]  
```  
  
## Arguments  
 [ **@publisher=** ] **'***publisher***'**  
 Is the remote server name. *publisher* is **sysname**, with no default. If **all**, the subscription is dropped at all the Publishers.  
  
 [ **@publisher_db=** ] **'***publisher_db***'**  
 Is the name of the Publisher database. *publisher_db* is **sysname**, with no default. **all** means all the Publisher databases.  
  
 [ **@publication=** ] **'***publication***'**  
 Is the publication name. *publication* is **sysname**, with no default. If **all**, the subscription is dropped to all the publications.  
  
 [ **@reserved=** ] *reserved*  
 [!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_droppullsubscription** is used in snapshot replication and transactional replication.  
  
 **sp_droppullsubscription** deletes the corresponding row in the [MSreplication_subscriptions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/msreplication-subscriptions-transact-sql.md) table and the corresponding Distributor Agent at the Subscriber. If no rows are left in [MSreplication_subscriptions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/msreplication-subscriptions-transact-sql.md), it drops the table.  
  
## Example  
 [!code-sql[HowTo#sp_droptranpullsubscription](../../../a9retired/codesnippet/tsql/sp-droppullsubscription-_1.sql)]  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or the user who created the pull subscription can execute **sp_droppullsubscription**. The **db_owner** fixed database role is only able to execute **sp_droppullsubscription** if the user who created the pull subscription belongs to this role.  
  
## See Also  
 [Delete a Pull Subscription](../../../relational-databases/replication/delete-a-pull-subscription.md)   
 [sp_addpullsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addpullsubscription-transact-sql.md)   
 [sp_change_subscription_properties &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-change-subscription-properties-transact-sql.md)   
 [sp_helppullsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helppullsubscription-transact-sql.md)   
 [sp_dropsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-dropsubscription-transact-sql.md)  
  
  