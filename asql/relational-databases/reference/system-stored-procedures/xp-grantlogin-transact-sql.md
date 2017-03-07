---
title: "xp_grantlogin (Transact-SQL) | Microsoft Docs"
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
  - "xp_grantlogin"
  - "xp_grantlogin_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "xp_grantlogin"
ms.assetid: c851c1ab-3b29-4b99-9902-78c2665a844b
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# xp_grantlogin (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Grants a Windows group or user access to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [CREATE LOGIN](../../../t-sql/statements/create-login-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
xp_grantlogin {[@loginame = ] 'login'} [,[@logintype = ] 'logintype']  
```  
  
## Arguments  
 [ **@loginame =** ] **'***login***'**  
 Is the name of the Windows user or group to be added. The Windows user or group must be qualified with a Windows domain name in the form *Domain*\\*User*. *login* is **sysname**, with no default.  
  
 [ **@logintype =** ] **'***logintype***'**  
 Is the security level of the login being granted access. *logintype* is **varchar(5)**, with a default of NULL. Only **admin** can be specified. If **admin** is specified, *login* is granted access to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], and added as a member of the **sysadmin** fixed server role.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **xp_grantlogin** is now a system stored procedure instead of an extended stored procedure. **xp_grantlogin** calls **sp_grantlogin** and **sp_addsrvrolemember**.  
  
## Permissions  
 Requires membership in the **securityadmin** fixed server role. When changing the *logintype*, requires membership in the **sysadmin** fixed server role.  
  
## See Also  
 [sp_denylogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-denylogin-transact-sql.md)   
 [sp_grantlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-grantlogin-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [General Extended Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/general-extended-stored-procedures-transact-sql.md)   
 [xp_enumgroups &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/xp-enumgroups-transact-sql.md)   
 [xp_loginconfig &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/xp-loginconfig-transact-sql.md)   
 [xp_logininfo &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/xp-logininfo-transact-sql.md)   
 [sp_revokelogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-revokelogin-transact-sql.md)  
  
  