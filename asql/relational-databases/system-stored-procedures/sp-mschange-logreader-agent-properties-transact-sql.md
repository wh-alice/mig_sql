---
title: "sp_MSchange_logreader_agent_properties (Transact-SQL) | Microsoft Docs"
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
  - "sp_MSchange_logreader_agent_properties_TSQL"
  - "sp_MSchange_logreader_agent_properties"
helpviewer_keywords: 
  - "sp_MSchange_logreader_agent_properties"
ms.assetid: 925df9d3-a041-4046-8e17-c47f40edb86d
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_MSchange_logreader_agent_properties (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the properties of a Log Reader Agent job that runs at a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] or later version Distributor. This stored procedure is used to change properties when the Publisher runs on an instance of [!INCLUDE[ssVersion2000](../../analysis-services/multidimensional-models/includes/ssversion2000-md.md)]. This stored procedure is executed at the Distributor on the distribution database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_MSchange_logreader_agent_properties [ @publisher = ] 'publisher'  
        , [ @publisher_db = ] 'publisher_db'  
        , [ @publisher_security_mode = ] publisher_security_mode  
        , [ @publisher_login = ] 'publisher_login'  
        , [ @publisher_password = ] 'publisher_password'   
        , [ @job_login = ] 'job_login'  
        , [ @job_password = ] 'job_password'  
        , [ @publisher_type = ] 'publisher_type'  
```  
  
## Arguments  
 [ **@publisher** = ] **'***publisher***'**  
 Is the name of the Publisher. *publisher* is **sysname**, with no default.  
  
 [ **@publisher_db=** ] **'***publisher_db***'**  
 Is the name of the publication database. *publisher_db* is **sysname**, with no default.  
  
 [ **@publisher_security_mode**= ] *publisher_security_mode*  
 Is the security mode used by the agent when connecting to the Publisher. *publisher_security_mode* is **smallint**, with no default.  
  
 **0** specifies [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication.  
  
 **1** specifies Windows Authentication.  
  
 [ **@publisher_login**= ] **'***publisher_login***'**  
 Is the login used when connecting to the Publisher. *publisher_login* is **sysname**, with no default. *publisher_login* must be specified when *publisher_security_mode* is **0**. If *publisher_login* is NULL and *publisher_security_mode* is **1**, then the Windows account specified in *job_login* will be used when connecting to the Publisher.  
  
 [ **@publisher_password**= ] **'***publisher_password***'**  
 Is the password used when connecting to the Publisher. *publisher_password* is **sysname**, with no default.  
  
 [ **@job_login**= ] **'***job_login***'**  
 Is the login for the Windows account under which the agent runs. *job_login* is **nvarchar(257)**, with no default. *This cannot be changed for a non-*[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] *publisher.*  
  
 [ **@job_password**= ] **'***job_password***'**  
 Is the password for the Windows account under which the agent runs. *job_password* is **sysname**, with no default.  
  
 [ **@publisher_type**= ] **'***publisher_type***'**  
 Specifies the Publisher type when the Publisher is not running in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. *publisher_type* is **sysname**, and can be one of the following values.  
  
|Value|Description|  
|-----------|-----------------|  
|**MSSQLSERVER**|Specifies a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher.|  
|**ORACLE**|Specifies a standard Oracle Publisher.|  
|**ORACLE GATEWAY**|Specifies an Oracle Gateway Publisher.|  
  
 For more information about the differences between an Oracle Publisher and an Oracle Gateway Publisher, see [Oracle Publishing Overview](../../relational-databases/replication/non-sql/oracle-publishing-overview.md).  
  
## Remarks  
 **sp_MSchange_logreader_agent_properties** is used in transactional replication.  
  
 You must specify all parameters when executing **sp_MSchange_logreader_agent_properties**. Execute [sp_helplogreader_agent &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helplogreader-agent-transact-sql.md) to return the current properties of the Log Reader Agent job.  
  
 After changing an agent login or password, you must stop and restart the agent before the change takes effect.  
  
 When the Publisher runs on an instance of [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] or later version, you should use [sp_changelogreader_agent](../../relational-databases/system-stored-procedures/sp-changelogreader-agent-transact-sql.md) to change properties of the Log Reader Agent.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role at the Distributor can execute **sp_MSchange_logreader_agent_properties**.  
  
## See Also  
 [sp_addlogreader_agent &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addlogreader-agent-transact-sql.md)  
  
  