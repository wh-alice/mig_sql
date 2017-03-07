---
title: "sp_dropremotelogin (Transact-SQL) | Microsoft Docs"
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
  - "sp_dropremotelogin"
  - "sp_dropremotelogin_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_dropremotelogin"
ms.assetid: 9f097652-a286-40b2-be73-568d77ada698
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dropremotelogin (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a remote login mapped to a local login used to execute remote stored procedures against the local server running [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepNextDontUse](../../../database-engine/configure/windows/includes/ssnotedepnextdontuse-md.md)] Use linked servers and linked-server stored procedures instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_dropremotelogin [ @remoteserver = ] 'remoteserver'   
     [ , [ @loginame = ] 'login' ]   
     [ , [ @remotename = ] 'remote_name' ]  
```  
  
## Arguments  
 [ **@remoteserver =** ] **'***remoteserver***'**  
 Is the name of the remote server mapped to the remote login that is to be removed. *remoteserver* is **sysname**, with no default. *remoteserver* must already exist.  
  
 [ **@loginame =** ] **'***login***'**  
 Is the optional login name on the local server that is associated with the remote server. *login* is **sysname**, with a default of NULL. *login* must already exist if specified.  
  
 [ **@remotename =** ] **'***remote_name***'**  
 Is the optional name of the remote login that is mapped to *login* when logging in from the remote server. *remote_name* is **sysname**, with a default of NULL.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 If only *remoteserver* is specified, all remote logins for that remote server are removed from the local server. If *login* is also specified, all remote logins from *remoteserver* mapped to that specific local login are removed from the local server. If *remote_name* is also specified, only the remote login for that remote user from *remoteserver* is removed from the local server.  
  
 To add local server users, use **sp_addlogin**. To remove local server users, use **sp_droplogin**.  
  
 Remote logins are required only when you use earlier versions of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] version 7.0 and later versions use linked server logins instead. Use **sp_addlinkedsrvlogin** and **sp_droplinkedsrvlogin** to add and remove linked server logins.  
  
 **sp_dropremotelogin** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires membership in the **sysadmin** or **securityadmin** fixed server roles.  
  
## Examples  
  
### A. Dropping all remote logins for a remote server  
 The following example removes the entry for the remote server `ACCOUNTS`, and, therefore, removes all mappings between logins on the local server and remote logins on the remote server.  
  
```  
EXEC sp_dropremotelogin 'ACCOUNTS';  
```  
  
### B. Dropping a login mapping  
 The following example removes the entry for mapping remote logins from the remote server `ACCOUNTS` to the local login `Albert`.  
  
```  
EXEC sp_dropremotelogin 'ACCOUNTS', 'Albert';  
```  
  
### C. Dropping a remote user  
 The following example removes the login for the remote login `Chris` on the remote server `ACCOUNTS` that was mapped to the local login `salesmgr`.  
  
```  
EXEC sp_dropremotelogin 'ACCOUNTS', 'salesmgr', 'Chris';  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [sp_addlinkedsrvlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addlinkedsrvlogin-transact-sql.md)   
 [sp_addlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addlogin-transact-sql.md)   
 [sp_addremotelogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addremotelogin-transact-sql.md)   
 [sp_addserver &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addserver-transact-sql.md)   
 [sp_droplinkedsrvlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-droplinkedsrvlogin-transact-sql.md)   
 [sp_droplogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-droplogin-transact-sql.md)   
 [sp_helpremotelogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpremotelogin-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  