---
title: "sp_link_publication (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
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
  - "sp_link_publication_TSQL"
  - "sp_link_publication"
helpviewer_keywords: 
  - "sp_link_publication"
ms.assetid: 1945ed24-f9f1-4af6-94ca-16d8e864706e
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_link_publication (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Sets the configuration and security information used by synchronization triggers of immediate updating subscriptions when connecting to the Publisher. This stored procedure is executed at the Subscriber on the subscription database.  
  
> [!IMPORTANT]  
>  When configuring a Publisher with a remote Distributor, the values supplied for all parameters, including *job_login* and *job_password*, are sent to the Distributor as plain text. You should encrypt the connection between the Publisher and its remote Distributor before executing this stored procedure. For more information, see [Enable Encrypted Connections to the Database Engine &#40;SQL Server Configuration Manager&#41;](../Topic/Enable%20Encrypted%20Connections%20to%20the%20Database%20Engine%20\(SQL%20Server%20Configuration%20Manager\).md).  
  
> [!IMPORTANT]  
>  Under certain conditions, this stored procedure can fail if the Subscriber is running [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] Service Pack 1 or later, and the Publisher is running an earlier version. If the stored procedure fails in this scenario, upgrade the Publisher to [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] Service Pack 1 or later.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_link_publication [ @publisher = ] 'publisher'   
        , [ @publisher_db = ] 'publisher_db'   
        , [ @publication = ] 'publication'   
        , [ @security_mode = ] security_mode  
    [ , [ @login = ] 'login' ]  
    [ , [ @password = ]'password' ]  
    [ , [ @distributor = ] 'distributor' ]  
```  
  
## Arguments  
 [ **@publisher**= ] **'***publisher***'**  
 Is the name of the Publisher to link to. *publisher* is **sysname**, with no default.  
  
 [ **@publisher_db**= ] **'***publisher_db***'**  
 Is the name of the Publisher database to link to. *publisher_db* is **sysname**, with no default.  
  
 [ **@publication**= ] **'***publication***'**  
 Is the name of the publication to link to. *publication* is **sysname**, with no default.  
  
 [ **@security_mode**= ] *security_mode*  
 Is the security mode used by the Subscriber to connect to a remote Publisher for immediate updating. *security_mode* is **int**, and can be one of these values. [!INCLUDE[ssNoteWinAuthentication](../../integration-services/includes/ssnotewinauthentication-md.md)]  
  
|Value|Description|  
|-----------|-----------------|  
|**0**|Uses [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication with the login specified in this stored procedure as *login* and *password*.<br /><br /> Note: In previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this option was used to specify a dynamic remote procedure call (RPC).|  
|**1**|Uses the security context ([!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication or Windows Authentication) of the user making the change at the Subscriber.<br /><br /> Note: This account must also exist at the Publisher with sufficient privileges. When using Windows Authentication, security account delegation must be supported.|  
|**2**|Uses an existing, user-defined linked server login created using **sp_link_publication**.|  
  
 [ **@login**= ] **'***login***'**  
 Is the login. *login* is **sysname**, with a default of NULL. This parameter must be specified when *security_mode* is **0**.  
  
 [ **@password**= ] **'***password***'**  
 Is the password. *password* is **sysname**, with a default of NULL. This parameter must be specified when *security_mode* is **0**.  
  
 [ **@distributor=** ] **'***distributor***'**  
 Is the name of the Distributor. *distributor* is **sysname**, with a default of NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_link_publication** is used by immediate updating subscriptions in transactional replication.  
  
 **sp_link_publication** can be used for both push and pull subscriptions. It can be called before or after the subscription is created. An entry is inserted or updated in the [MSsubscription_properties &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mssubscription-properties-transact-sql.md) system table.  
  
 For push subscriptions, the entry can be cleaned up by [sp_subscription_cleanup &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-subscription-cleanup-transact-sql.md). For pull subscriptions, the entry can be cleaned up by [sp_droppullsubscription &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-droppullsubscription-transact-sql.md) or [sp_subscription_cleanup &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-subscription-cleanup-transact-sql.md). You can also call **sp_link_publication** with a NULL password to clear the entry in the [MSsubscription_properties &#40;Transact-SQL&#41;](../../relational-databases/system-tables/mssubscription-properties-transact-sql.md) system table for security concerns.  
  
 The default mode used by an immediate updating Subscriber when it connects to the Publisher does not allow a connection using Windows Authentication. To connect with a mode of Windows Authentication, a linked server has to be set up to the Publisher, and the immediate updating Subscriber should use this connection when updating the Subscriber. This requires the **sp_link_publication** to be run with *security_mode* = **2**. When using Windows Authentication, security account delegation must be supported.  
  
## Example  
 [!code-sql[HowTo#sp_addtranpullsubscriptionagent_failover](../../relational-databases/replication/codesnippet/tsql/sp-link-publication-tran_1.sql)]  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_link_publication**.  
  
## See Also  
 [sp_droppullsubscription &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-droppullsubscription-transact-sql.md)   
 [sp_helpsubscription_properties &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpsubscription-properties-transact-sql.md)   
 [sp_subscription_cleanup &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-subscription-cleanup-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  