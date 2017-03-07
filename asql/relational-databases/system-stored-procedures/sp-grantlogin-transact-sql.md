---
title: "sp_grantlogin (Transact-SQL) | Microsoft Docs"
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
  - "sp_grantlogin_TSQL"
  - "sp_grantlogin"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_grantlogin"
ms.assetid: 0c873d99-c3bf-4eb1-948b-a46cb235ccd4
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_grantlogin (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [CREATE LOGIN](../../t-sql/statements/create-login-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_grantlogin [@loginame=] 'login'  
```  
  
## Arguments  
 [ **@loginame =** ] **'***login***'**  
 Is the name of a Windows user or group. The Windows user or group must be qualified with a Windows domain name in the form *Domain*\\*User*; for example, **London\Joeb**. *login* is **sysname**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_grantlogin** calls CREATE LOGIN, which supports additional options. For information on creating SQL Server logins, see [CREATE LOGIN &#40;Transact-SQL&#41;](../../t-sql/statements/create-login-transact-sql.md)  
  
 **sp_grantlogin** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires ALTER ANY LOGIN permission on the server.  
  
## Examples  
 The following example uses `CREATE LOGIN` to create a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login for the Windows user `Corporate\BobJ.` This is the preferred method.  
  
```  
CREATE LOGIN [Corporate\BobJ] FROM WINDOWS;  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [CREATE LOGIN &#40;Transact-SQL&#41;](../../t-sql/statements/create-login-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  