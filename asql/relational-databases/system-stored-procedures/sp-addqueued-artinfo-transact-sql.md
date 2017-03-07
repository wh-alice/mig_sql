---
title: "sp_addqueued_artinfo (Transact-SQL) | Microsoft Docs"
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
  - "sp_addqueued_artinfo"
  - "sp_addqueued_artinfo_TSQL"
helpviewer_keywords: 
  - "sp_addqueued_artinfo"
ms.assetid: decdb6eb-3dcd-4053-a21d-fd367c3fbafb
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_addqueued_artinfo (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  
  
> [!IMPORTANT]  
>  The [sp_script_synctran_commands](../../relational-databases/system-stored-procedures/sp-script-synctran-commands-transact-sql.md) procedure should be used instead of **sp_addqueued_artinfo**. [sp_script_synctran_commands](../../relational-databases/system-stored-procedures/sp-script-synctran-commands-transact-sql.md) generates a script that contains the **sp_addqueued_artinfo** and **sp_addsynctrigger** calls.  
  
 Creates the [MSsubscription_articles](../../relational-databases/system-tables/mssubscription-articles-transact-sql.md) table at the Subscriber that is used to track article subscription information (Queued Updating and Immediate Updating with Queued Updating as Failover). This stored procedure is executed at the Subscriber on the subscription database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_addqueued_artinfo [ @artid= ] 'artid'  
        , [ @article= ] 'article'  
        , [ @publisher = ] 'publisher'  
        , [ @publisher_db = ] 'publisher_db'  
        , [ @publication = ] 'publication'  
        , [ @dest_table= ] 'dest_table'  
        , [ @owner = ] 'owner'  
        , [ @cft_table= ] 'cft_table'  
```  
  
## Arguments  
 [ **@artid=** ] **'***artid***'**  
 Is the name of the article ID. *artid* is **int**, with no default  
  
 [ **@article=**] **'***article***'**  
 Is the name of the article to be scripted. *article* is **sysname**, with no default  
  
 [ **@publisher=**] **'***publisher***'**  
 Is the name of the Publisher server. *publisher* is **sysname**, with no default.  
  
 [ **@publisher_db=**] **'***publisher_db***'**  
 Is the name of the Publisher database. *publisher_db* is **sysname**, with no default.  
  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication to be scripted. *publication* is **sysname**, with no default.  
  
 [ **@dest_table=** ] *'dest_table***'**  
 Is the name of the destination table. *dest_table* is **sysname**, with no default.  
  
 [**@owner =** ] **'***owner***'**  
 Is the owner of the subscription. *owner* is **sysname**, with no default.  
  
 [ **@cft_table=** ] **'***cft_table***'**  
 Name of the queued updating conflict table for this article. *cft_table*is **sysname**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_addqueued_artinfo** is used by the Distribution Agent as part of subscription initialization. This stored procedure is not commonly run by users, but may be useful if the user needs to manually set up a subscription.  
  
 [sp_script_synctran_commands](../../relational-databases/system-stored-procedures/sp-script-synctran-commands-transact-sql.md) instead of **sp_addqueued_artinfo**.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_addqueued_artinfo**.  
  
## See Also  
 [Updatable Subscriptions for Transactional Replication](../Topic/Updatable%20Subscriptions%20for%20Transactional%20Replication.md)   
 [sp_script_synctran_commands &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-script-synctran-commands-transact-sql.md)   
 [MSsubscription_articles &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mssubscription-articles-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  