---
title: "sp_dropsubscription (Transact-SQL) | Microsoft Docs"
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
  - "sp_dropsubscription"
  - "sp_dropsubscription_TSQL"
helpviewer_keywords: 
  - "sp_dropsubscription"
ms.assetid: 7551f345-5510-4684-ab53-f9057249d13a
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dropsubscription (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops subscriptions to a particular article, publication, or set of subscriptions on the Publisher. This stored procedure is executed at the Publisher on the publication database.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_dropsubscription [ [ @publication= ] 'publication' ]  
    [ , [ @article= ] 'article' ]  
        , [ @subscriber= ] 'subscriber'  
    [ , [ @destination_db= ] 'destination_db' ]  
    [ , [ @ignore_distributor = ] ignore_distributor ]  
    [ , [ @reserved= ] 'reserved' ]  
```  
  
## Arguments  
 [ **@publication=** ] **'***publication***'**  
 Is the name of the associated publication. *publication* is **sysname**, with a default of NULL. If **all**, all subscriptions for all publications for the specified Subscriber are canceled. *publication* is a required parameter.  
  
 [ **@article=** ] **'***article***'**  
 Is the name of the article. *article* is **sysname**, with a default value of NULL. If **all**, subscriptions to all articles for each specified publication and Subscriber are dropped. Use **all** for publications that allow immediate updating.  
  
 [ **@subscriber=** ] **'***subscribe*r**'**  
 Is the name of the Subscriber that will have its subscriptions dropped. *subscriber* is **sysname**, with no default. If **all**, all subscriptions for all Subscribers are dropped.  
  
 [ **@destination_db=** ] **'***destination_db***'**  
 Is the name of the destination database. *destination_db* is **sysname**, with a default of NULL. If NULL, all the subscriptions from that Subscriber are dropped.  
  
 [ **@ignore_distributor =** ] *ignore_distributor*  
 [!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]  
  
 [ **@reserved=** ] **'***reserved***'**  
 [!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_dropsubscription** is used in snapshot and transactional replication.  
  
 If you drop the subscription on an article in an immediate-sync publication, you cannot add it back unless you drop the subscriptions on all the articles in the publication and add them all back at once.  
  
## Example  
 [!code-sql[HowTo#sp_droptransubscription](../../../relational-databases/reference/system-stored-procedures/codesnippet/tsql/sp-dropsubscription-tran_1.sql)]  
  
## Permissions  
 Only members of the **sysadmin** fixed server role, the **db_owner** fixed database role, or the user that created the subscription can execute **sp_dropsubscription**.  
  
## See Also  
 [Delete a Push Subscription](../../../relational-databases/replication/delete-a-push-subscription.md)   
 [sp_addsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addsubscription-transact-sql.md)   
 [sp_changesubstatus &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changesubstatus-transact-sql.md)   
 [sp_helpsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpsubscription-transact-sql.md)  
  
  