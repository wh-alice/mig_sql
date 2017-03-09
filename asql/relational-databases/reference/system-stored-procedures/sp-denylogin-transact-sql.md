---
title: "sp_denylogin (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_denylogin_TSQL"
  - "sp_denylogin"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_denylogin"
ms.assetid: db80f152-e8af-4303-95b6-3a3a7b664374
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_denylogin (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Prevents a Windows user or Windows group from connecting to an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [ALTER LOGIN](../../../t-sql/statements/alter-login-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_denylogin [ @loginame = ] 'login'   
```  
  
## Arguments  
 [ **@loginame =** ] **'***login* **'**  
 Is the name of a Windows user or group. *login* is **sysname**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_denylogin** denies CONNECT SQL permission to the server-level principal mapped to the specified Windows user or Windows group. If the server principal does not exist, it will be created. The new principal will be visible in the [sys.server_principals &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.server-principals-transact-sql.md) catalog view.  
  
 **sp_denylogin** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example shows how to use **sp_denylogin** to prevent Windows user `CORPORATE\GeorgeV` from connecting to the server.  
  
```  
EXEC sp_denylogin 'CORPORATE\GeorgeV';  
```  
  
## See Also  
 [sp_grantlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-grantlogin-transact-sql.md)   
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [ALTER LOGIN &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-login-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  