---
title: "sp_addmergepullsubscription (Transact-SQL) | Microsoft Docs"
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
  - "sp_addmergepullsubscription_TSQL"
  - "sp_addmergepullsubscription"
helpviewer_keywords: 
  - "sp_addmergepullsubscription"
ms.assetid: d63909a0-8ea7-4734-9ce8-8204d936a3e4
caps.latest.revision: 44
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_addmergepullsubscription (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Adds a pull subscription to a merge publication. This stored procedure is executed at the Subscriber on the subscription database.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_addmergepullsubscription [ @publication= ] 'publication'   
    [ , [ @publisher= ] 'publisher' ]   
    [ , [ @publisher_db = ] 'publisher_db' ]   
    [ , [ @subscriber_type= ] 'subscriber_type' ]   
    [ , [ @subscription_priority= ] subscription_priority ]   
    [ , [ @sync_type= ] 'sync_type' ]   
    [ , [ @description= ] 'description' ]  
```  
  
## Arguments  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication. *publication* is **sysname**, with no default.  
  
 [ **@publisher=**] **'***publisher***'**  
 Is the name of the Publisher. *Publisher* is **sysname**, with a default of the local server name. The Publisher must be a valid server.  
  
 [ **@publisher_db =**] **'***publisher_db***'**  
 Is the name of the Publisher database. *publisher_db* is **sysname**, with a default of NULL.  
  
 [ **@subscriber_type=**] **'***subscriber_type***'**  
 Is the type of Subscriber. *subscriber_type* is **nvarchar(15)**, and can be **global**, **local** or **anonymous**. In [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)] and later versions, local subscriptions are referred to as client subscriptions and global subscriptions are referred to as server subscriptions.  
  
 [ **@subscription_priority=**] *subscription_priority*  
 Is the subscription priority. *subscription_priority*is **real**, with a default of NULL. For local and anonymous subscriptions, the priority is **0.0**. The priority is used by the default resolver to pick a winner when conflicts are detected. For global subscribers, the subscription priority must be less than 100, which is the priority of the publisher.  
  
 [ **@sync_type=**] **'***sync_type***'**  
 Is the subscription synchronization type. *sync_type*is **nvarchar(15)**, with a default of **automatic**. Can be **automatic** or **none**. If **automatic**, the schema and initial data for published tables are transferred to the Subscriber first. If **none**, it is assumed the Subscriber already has the schema and initial data for published tables. System tables and data are always transferred.  
  
> [!NOTE]  
>  We do not recommend specifying a value of **none**.  
  
 [ **@description=**] **'***description***'**  
 Is a brief description of this pull subscription. *description*is **nvarchar(255)**, with a default of NULL. This value is displayed by the Replication Monitor in the **Friendly Name** column, which can be used to sort the subscriptions for a monitored publication.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_addmergepullsubscription** is used for merge replication.  
  
 If using [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent to synchronize the subscription, the [sp_addmergepullsubscription_agent](../../../relational-databases/reference/system-stored-procedures/sp-addmergepullsubscription-agent-transact-sql.md) stored procedure must be run at the Subscriber to create an agent and job to synchronize with the Publication.  
  
## Example  
 [!code-sql[HowTo#sp_addmergepullsubscriptionagent](../../../a9retired/codesnippet/tsql/sp-addmergepullsubscript_0_1.sql)]  
  
 [!code-sql[HowTo#sp_addmergepullsub_websync_anon](../../../a9retired/codesnippet/tsql/sp-addmergepullsubscript_0_2.sql)]  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_addmergepullsubscription**.  
  
## See Also  
 [Create a Pull Subscription](../../../relational-databases/replication/create-a-pull-subscription.md)   
 [Subscribe to Publications](../../../relational-databases/replication/subscribe-to-publications.md)   
 [sp_addmergepullsubscription_agent &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addmergepullsubscription-agent-transact-sql.md)   
 [sp_changemergepullsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changemergepullsubscription-transact-sql.md)   
 [sp_dropmergepullsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-dropmergepullsubscription-transact-sql.md)   
 [sp_helpmergepullsubscription &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpmergepullsubscription-transact-sql.md)   
 [sp_helpsubscription_properties &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpsubscription-properties-transact-sql.md)  
  
  