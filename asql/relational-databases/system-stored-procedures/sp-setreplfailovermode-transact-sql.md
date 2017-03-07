---
title: "sp_setreplfailovermode (Transact-SQL) | Microsoft Docs"
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
  - "sp_setreplfailovermode"
  - "sp_setreplfailovermode_TSQL"
helpviewer_keywords: 
  - "sp_setreplfailovermode"
ms.assetid: ca98a4c3-bea4-4130-88d7-79e0fd1e85f6
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_setreplfailovermode (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Allows you to set the failover operation mode for subscriptions enabled for immediate updating with queued updating as failover. This stored procedure is executed at the Subscriber on the subscription database. For more information about failover modes, see [Updatable Subscriptions for Transactional Replication](../Topic/Updatable%20Subscriptions%20for%20Transactional%20Replication.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_setreplfailovermode [ @publisher= ] 'publisher'  
    [ , [ @publisher_db = ] 'publisher_db' ]  
    [ , [ @publication= ] 'publication' ]  
    [ , [ @failover_mode= ] 'failover_mode' ]  
    [ , [ @override = ] override ]  
```  
  
## Arguments  
 [ **@publisher=**] **'***publisher***'**  
 Is the name of the publication. *publication* is **sysname**, with no default. The publication must already exist.  
  
 [ **@publisher_db =**] **'***publisher_db***'**  
 Is the name of the publication database. *publisher_db* is **sysname**, with no default.  
  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication. *publication*is **sysname**, with no default.  
  
 [**@failover_mode=**] **'***failover_mode***'**  
 Is the failover mode for the subscription. *failover_mode* is **nvarchar(10)** and can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**immediate** or **sync**|Data modifications made at the Subscriber are bulk-copied to the Publisher as they occur.|  
|**queued**|Data modifications are stored in a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] queue.|  
  
> [!NOTE]  
>  [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Message Queuing has been deprecated and is no longer supported.  
  
 [ **@override**= ] *override*  
 Internal use only.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_setreplfailovermode** is used in snapshot replication or transactional replication for which subscriptions are enabled, either for queued updating with failover to immediate updating, or for immediate updating with failover to queued updating.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_setreplfailovermode**.  
  
## See Also  
 [Switch Between Update Modes for an Updatable Transactional Subscription](../../relational-databases/replication/administration/switch-between-update-modes-for-an-updatable-transactional-subscription.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  