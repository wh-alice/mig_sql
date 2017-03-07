---
title: "sp_replqueuemonitor (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "sp_replqueuemonitor"
  - "sp_replqueuemonitor_TSQL"
helpviewer_keywords: 
  - "sp_replqueuemonitor"
ms.assetid: 6909a3f1-43a2-4df5-a6a5-9e6f347ac841
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_replqueuemonitor (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Lists the queue messages from a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] queue or [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Message Queuing for queued updating subscriptions to a specified publication. If [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] queues are used, this stored procedure is executed at the Subscriber on the subscription database. If Message Queuing is used, this stored procedure is executed at the Distributor on the distribution database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_replqueuemonitor [ @publisher = ] 'publisher'  
    [ , [ @publisherdb = ] 'publisher_db' ]  
    [ , [ @publication = ] 'publication' ]  
    [ , [ @tranid = ] 'tranid' ]  
    [ , [ @queuetype = ] 'queuetype' ]  
```  
  
## Arguments  
 [ **@publisher** = ] **'***publisher***'**  
 Is the name of the Publisher. *publisher* is **sysname**, with a default of NULL. The server must be configured for publishing. NULL for all Publishers.  
  
 [ **@publisherdb** = ] **'***publisher_db***'** ]  
 Is the name of the publication database. *publisher_db* is **sysname**, with a default of NULL. NULL for all publication databases.  
  
 [ **@publication** = ] **'***publication***'** ]  
 Is the name of the publication. *publication*is **sysname**, with a default of NULL. NULL for all publications.  
  
 [ **@tranid** = ] **'***tranid***'** ]  
 Is the transaction ID. *tranid*is **sysname**, with a default of NULL. NULL for all transactions.  
  
 [**@queuetype=** ] **'***queuetype***'** ]  
 Is the type of queue that stores transactions. *queuetype* is **tinyint** with a default of **0**, and can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**0**|All types of queues|  
|**1**|Message Queuing|  
|**2**|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] queue|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_replqueuemonitor** is used in snapshot replication or transactional replication with queued updating subscriptions. The queue messages that do not contain SQL commands or are part of a spanning SQL command are not displayed.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_replqueuemonitor**.  
  
## See Also  
 [Updatable Subscriptions for Transactional Replication](../Topic/Updatable%20Subscriptions%20for%20Transactional%20Replication.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  