---
title: "sp_droplogin (Transact-SQL) | Microsoft Docs"
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
  - "sp_droplogin"
  - "sp_droplogin_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_droplogin"
ms.assetid: e58684d1-c394-48de-906e-da6ee91100c3
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_droplogin (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] login. This prevents access to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] under that login name.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [DROP LOGIN](../../../t-sql/statements/drop-login-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_droplogin [ @loginame = ] 'login'  
```  
  
## Arguments  
 [ **@loginame =** ] **'***login***'**  
 Is the login to be removed. *login* is **sysname**, with no default. *login* must already exist in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_droplogin** calls DROP LOGIN.  
  
 **sp_droplogin** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires ALTER ANY LOGIN permission on the server.  
  
## Examples  
 The following example uses `DROP LOGIN` to remove the login `Victoria` from an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. This is the preferred method.  
  
```  
DROP LOGIN Victoria;  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [DROP LOGIN &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-login-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  