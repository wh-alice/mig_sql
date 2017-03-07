---
title: "sp_defaultdb (Transact-SQL) | Microsoft Docs"
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
  - "sp_defaultdb_TSQL"
  - "sp_defaultdb"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_defaultdb"
ms.assetid: 663b859f-c6da-4942-95a6-60b93d05654e
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_defaultdb (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the default database for a [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] login.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [ALTER LOGIN](../../../t-sql/statements/alter-login-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_defaultdb [ @loginame = ] 'login', [ @defdb = ] 'database'   
```  
  
## Arguments  
 [ **@loginame=**] **'***login***'**  
 Is the login name. *login* is **sysname**, with no default. *login* can be an existing [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] login or a Windows user or group. If a login for the Windows user or group does not exist in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], it is automatically added.  
  
 [ **@defdb=**] **'***database***'**  
 Is the name of the new default database. *database* is **sysname**, with no default. *database* must already exist.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_defaultdb** calls ALTER LOGIN. This statement supports additional options. For information about changing default database, see [ALTER LOGIN &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-login-transact-sql.md).  
  
 **sp_defaultdb** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires ALTER ANY LOGIN permission.  
  
## Examples  
 The following example sets [!INCLUDE[ssSampleDBnormal](../../../a9notintoc/includes/sssampledbnormal-md.md)] as the default database for [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] login `Victoria`.  
  
```  
EXEC sp_defaultdb 'Victoria', 'AdventureWorks2012';  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [ALTER LOGIN &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-login-transact-sql.md)   
 [sp_addlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addlogin-transact-sql.md)   
 [sp_droplogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-droplogin-transact-sql.md)   
 [sp_grantdbaccess &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-grantdbaccess-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  