---
title: "sp_grant_proxy_to_subsystem (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_grant_login_to_subsystem_TSQL"
  - "sp_grant_login_to_subsystem"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_grant_proxy_to_subsystem"
ms.assetid: 866aaa27-a1e0-453a-9b1b-af39431ad9c2
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_grant_proxy_to_subsystem (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Grants a proxy access to a subsystem.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_grant_proxy_to_subsystem  
     { [ @proxy_id = ] proxy_id | [ @proxy_name = ] 'proxy_name' },  
     { [ @subsystem_id = ] subsystem_id | [ @subsystem_name = ] 'subsystem_name' }  
```  
  
## Arguments  
 [ **@proxy_id =** ] *id*  
 The proxy identification number of the proxy to grant access for. The *proxy_id* is **int**, with a default of NULL. Either *proxy_id* or *proxy_name* must be specified, but both cannot be specified.  
  
 [ **@proxy_name =** ] **'***proxy_name***'**  
 The name of the proxy to grant access for. The *proxy_name* is **sysname**, with a default of NULL. Either *proxy_id* or *proxy_name* must be specified, but both cannot be specified.  
  
 [ **@subsystem_id =** ] *id*  
 The id number of the subsystem to grant access to. The *subsystem_id* is **int**, with a default of NULL. Either *subsystem_id* or *subsystem_name* must be specified, but both cannot be specified. The following table lists the values for each subsystem.  
  
|Value|Description|  
|-----------|-----------------|  
|**2**|[!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] ActiveX Script<br /><br /> **\*\* Important \*\*** The ActiveX Scripting subsystem will be removed from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent in a future version of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.|  
|**3**|Operating System (**CmdExec**)|  
|**4**|Replication Snapshot Agent|  
|**5**|Replication Log Reader Agent|  
|**6**|Replication Distribution Agent|  
|**7**|Replication Merge Agent|  
|**8**|Replication Queue Reader Agent|  
|**9**|Analysis Services Query|  
|**10**|Analysis Services Command|  
|**11**|[!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] package execution|  
|**12**|PowerShell Script|  
  
 [ **@subsystem_name =** ] **'***subsystem_name***'**  
 The name of the subsystem to grant access to. The **subsystem_name** is **sysname**, with a default of NULL. Either *subsystem_id* or *subsystem_name* must be specified, but both cannot be specified. The following table lists the values for each subsystem.  
  
|Value|Description|  
|-----------|-----------------|  
|**ActiveScripting**|ActiveX Script|  
|**CmdExec**|Operating System (**CmdExec**)|  
|**Snapshot**|Replication Snapshot Agent|  
|**LogReader**|Replication Log Reader Agent|  
|**Distribution**|Replication  Distribution Agent|  
|**Merge**|Replication Merge Agent|  
|**QueueReader**|Replication Queue Reader Agent|  
|**ANALYSISQUERY**|Analysis Services Query|  
|**ANALYSISCOMMAND**|Analysis Services Command|  
|**Dts**|SSIS package execution|  
|**PowerShell**|PowerShell Script|  
  
## Remarks  
 Granting a proxy access to a subsystem does not change the permissions for the principal specified in the proxy.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_grant_proxy_to_subsystem**.  
  
## Examples  
  
### A. Granting access to a subsystem by ID  
 The following example grants the proxy `Catalog application proxy` access to the ActiveX Scripting subsystem.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_grant_proxy_to_subsystem  
    @proxy_name = 'Catalog application proxy',  
    @subsystem_id = 2;  
GO  
```  
  
### B. Granting access to a subsystem by name.  
 The following example grants the proxy `Catalog application proxy` access to the SSIS package execution subsystem.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_grant_proxy_to_subsystem  
    @proxy_name = N'Catalog application proxy',  
    @subsystem_name = N'Dts' ;  
GO  
```  
  
## See Also  
 [Implement SQL Server Agent Security](../Topic/Implement%20SQL%20Server%20Agent%20Security.md)   
 [sp_revoke_proxy_from_subsystem &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-revoke-proxy-from-subsystem-transact-sql.md)   
 [sp_add_proxy &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-proxy-transact-sql.md)   
 [sp_delete_proxy &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-delete-proxy-transact-sql.md)   
 [sp_update_proxy &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-update-proxy-transact-sql.md)  
  
  