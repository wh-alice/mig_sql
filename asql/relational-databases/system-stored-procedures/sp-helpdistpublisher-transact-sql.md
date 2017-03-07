---
title: "sp_helpdistpublisher (Transact-SQL) | Microsoft Docs"
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
  - "sp_helpdistpublisher_TSQL"
  - "sp_helpdistpublisher"
helpviewer_keywords: 
  - "sp_helpdistpublisher"
ms.assetid: f207c22d-8fb2-4756-8a9d-6c51d6cd3470
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpdistpublisher (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns properties of the Publishers using a Distributor. This stored procedure is executed at the Distributor on any database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_helpdistpublisher [ [ @publisher=] 'publisher']   
    [ , [ @check_user = ] check_user  
```  
  
## Arguments  
 [ **@publisher=** ] **'***publisher***'**  
 Is the Publisher for which properties are returned. *publisher* is **sysname**, with a default of **%**.  
  
 [ **@check_user=** ] *check_user*  
 [!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Name of Publisher.|  
|**distribution_db**|**sysname**|Distribution database for the specified Publisher.|  
|**security_mode**|**int**|Security mode used by replication agents to connect to the Publisher for queued updating subscriptions, or with a non-[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher.<br /><br /> **0** = [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication<br /><br /> **1** = Windows Authentication|  
|**login**|**sysname**|Login name used by replication agents to connect to the Publisher for queued updating subscriptions, or with a non-[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher.|  
|**password**|**nvarchar(524)**|Password returned (in simple encrypted form). Password is NULL for users other than **sysadmin**.|  
|**active**|**bit**|Whether a remote Publisher is using the local server as a Distributor:<br /><br /> **0** = No<br /><br /> **1** = Yes|  
|**working_directory**|**nvarchar(255)**|Name of the working directory.|  
|**trusted**|**bit**|If the password is required when the Publisher connects to the Distributor. For [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] and later versions, this should always return **0**, which means that the password is required.|  
|**thirdparty_flag**|**bit**|Whether the publication is enabled by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or by a third party application:<br /><br /> **0** = [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], Oracle, or Oracle Gateway Publisher.<br /><br /> **1** = Publisher has been integrated with [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using a third-party application.|  
|**publisher_type**|**sysname**|Type of Publisher; can be one of the following:<br /><br /> **MSSQLSERVER**<br /><br /> **ORACLE**<br /><br /> **ORACLE GATEWAY**|  
|**publisher_data_source**|**nvarchar(4000)**|Name of the OLE DB data source on the Publisher.|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_helpdistpublisher** is used in all types of replication.  
  
 **sp_helpdistpublisher** will not display the publisher login or password in the result set for non-**sysadmin** logins.  
  
## Permissions  
 Members of the **sysadmin** fixed server role may execute **sp_helpdistpublisher** for any Publisher using the local server as a Distributor. Members of the **db_owner** fixed database role or the **replmonitor** role in a distribution database may execute **sp_helpdistpublisher** for any Publisher using that distribution database. Users in the publication access list for a publication at the specified *publisher* may execute **sp_helpdistpublisher**. If *publisher* is not specified, information is returned for all Publishers that the user has rights to access.  
  
## See Also  
 [View and Modify Distributor and Publisher Properties](../../relational-databases/replication/view-and-modify-distributor-and-publisher-properties.md)   
 [sp_adddistpublisher &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-adddistpublisher-transact-sql.md)   
 [sp_changedistpublisher &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-changedistpublisher-transact-sql.md)   
 [sp_dropdistpublisher &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dropdistpublisher-transact-sql.md)  
  
  