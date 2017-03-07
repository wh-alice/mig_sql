---
title: "sp_changereplicationserverpasswords (Transact-SQL) | Microsoft Docs"
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
  - "sp_changereplicationserverpasswords_TSQL"
  - "sp_changereplicationserverpasswords"
helpviewer_keywords: 
  - "sp_changereplicationserverpasswords"
ms.assetid: 9333da96-3a1c-4adb-9a74-5dac9ce596df
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_changereplicationserverpasswords (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes stored passwords for the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows account or [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login used by replication agents when connecting to servers in a replication topology. You would normally have to change a password for each individual agent running at a server, even if they all use the same login or account. This stored procedure enables you to change the password for all instances of a given [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Login or Windows account used by all replication agents that run at a server. This stored procedure is executed at any server in the replication topology on the master database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_changereplicationserverpasswords [ @login_type = ] login_type  
        , [ @login = ] 'login'   
        , [ @password = ] 'password'  
    [ , [ @server = ] 'server' ]  
```  
  
## Arguments  
 [ **@login_type** = ] *login_type*  
 Is the type of authentication for the supplied credentials. *login_type* is **tinyint**, with no default.  
  
 **1** = Windows Integrated Authentication  
  
 **0** = [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication  
  
 [ **@login** = ] **'***login***'**  
 Is the name of the Windows account or [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login being changed. *login* is **nvarchar(257)**, with no default  
  
 [ **@password** = ] **'***password***'**  
 Is the new password to be stored for the specified *login*. *password* is **sysname**, with no default.  
  
> [!NOTE]  
>  After changing a replication password, you must stop and restart each agent that uses the password before the change takes effect for that agent.  
  
 [ **@server** = ] **'***server***'**  
 Is the server connection for which the stored password is being changed. *server* is **sysname**, and can be one of these values:  
  
|Value|Description|  
|-----------|-----------------|  
|**distributor**|All agent connections to the Distributor.|  
|**publisher**|All agent connections to the Publisher.|  
|**subscriber**|All agent connections to the Subscriber.|  
|**%** (default)|All agent connections to all servers in a replication topology.|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_changereplicationserverpasswords** is used with all types of replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_changereplicationserverpasswords**.  
  
## See Also  
 [View and Modify Replication Security Settings](../../relational-databases/replication/security/view-and-modify-replication-security-settings.md)  
  
  