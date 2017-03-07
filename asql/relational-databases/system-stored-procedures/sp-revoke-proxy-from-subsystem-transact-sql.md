---
title: "sp_revoke_proxy_from_subsystem (Transact-SQL) | Microsoft Docs"
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
  - "sp_revoke_login_from_subsystem"
  - "sp_revoke_login_from_subsystem_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_revoke_proxy_from_subsystem"
ms.assetid: b87bc8ba-3ea8-4aed-b54b-32c3d82d9d2a
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_revoke_proxy_from_subsystem (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Revokes access to a subsystem from a proxy.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_revoke_proxy_from_subsystem   
    [ @proxy_id = ] proxy_id,  
    [ @proxy_name = ] 'proxy_name',  
    [ @subsystem_id = ] subsystem_id,  
    [ @subsystem_name = ] 'subsystem_name'  
```  
  
## Arguments  
 [ **@proxy_id** = ] *id*  
 The proxy identification number of the proxy to revoke access from. The *proxy_id* is **int**, with a default of NULL. Either *proxy_id* or *proxy_name* must be specified, but both cannot be specified.  
  
 [ **@proxy_name** = ] **'***proxy_name***'**  
 The name of the proxy to revoke access from. The *proxy_name* is **sysname**, with a default of NULL. Either *proxy_id* or *proxy_name* must be specified, but both cannot be specified.  
  
 [ **@subsystem_id** = ] *id*  
 The id number of the subsystem to revoke access to. The *subsystem_id* is **int**, with a default of NULL. Either *subsystem_id* or *subsystem_name* must be specified, but both cannot be specified. The following table lists the values for each subsystem.  
  
|Value|Description|  
|-----------|-----------------|  
|**2**|ActiveX Script<br /><br /> **\*\* Important \*\*** The ActiveX Scripting subsystem will be removed from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent in a future version of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.|  
|**3**|Operating System (CmdExec)|  
|**4**|Replication Snapshot Agent|  
|**5**|Replication Log Reader Agent|  
|**6**|Replication Distribution Agent|  
|**7**|Replication Merge Agent|  
|**8**|Replication Queue Reader Agent|  
|**9**|Analysis Services Command|  
|**10**|Analysis Services Query|  
|**11**|[!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] package execution|  
|**12**|PowerShell Script|  
  
 [ **@subsystem_name**= ] **'***subsystem_name***'**  
 The name of the subsystem to revoke access to. The *subsystem_name* is **sysname**, with a default of NULL. Either *subsystem_id* or *subsystem_name* must be specified, but both cannot be specified. The following table lists the values for each subsystem.  
  
|Value|Description|  
|-----------|-----------------|  
|ActiveScripting|ActiveX Script|  
|CmdExec|Operating System (CmdExec)|  
|Snapshot|Replication Snapshot Agent|  
|LogReader|Replication Log Reader Agent|  
|Distribution|Replication Distribution Agent|  
|Merge|Replication Merge Agent|  
|QueueReader|Replication Queue Reader Agent|  
|ANALYSISQUERY|Analysis Services Command|  
|ANALYSISCOMMAND|Analysis Services Query|  
|Dts|[!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] package execution|  
|PowerShell|PowerShell Script|  
  
## Remarks  
 Revoking access to a subsystem does not change the permissions for the principal specified in the proxy.  
  
> [!NOTE]  
>  To determine which job steps reference a proxy, right-click the **Proxies** node under **SQL Server Agent** in Microsoft [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], and then click **Properties**. In the **Proxy Account Properties** dialog box, select the **References** page to view all job steps that reference this proxy.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_revoke_proxy_from_subsystem**.  
  
## Examples  
 The following example revokes access to the [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] subsystem for the proxy `Catalog application proxy`.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_revoke_proxy_from_subsystem  
    @proxy_name = 'Catalog application proxy',  
    @subsystem_name = N'Dts';  
```  
  
## See Also  
 [SQL Server Agent Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sql-server-agent-stored-procedures-transact-sql.md)   
 [Implement SQL Server Agent Security](../Topic/Implement%20SQL%20Server%20Agent%20Security.md)   
 [sp_grant_proxy_to_subsystem &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-grant-proxy-to-subsystem-transact-sql.md)  
  
  