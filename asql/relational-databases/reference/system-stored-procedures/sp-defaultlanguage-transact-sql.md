---
title: "sp_defaultlanguage (Transact-SQL) | Microsoft Docs"
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
  - "sp_defaultlanguage"
  - "sp_defaultlanguage_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_defaultlanguage"
ms.assetid: 908d01cc-e704-45d9-9e85-d2df6da3e6f5
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_defaultlanguage (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the default language of for a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [ALTER LOGIN](../../../t-sql/statements/alter-login-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_defaultlanguage [ @loginame = ] 'login'   
     [ , [ @language = ] 'language' ]   
```  
  
## Arguments  
 [ **@loginame =** ] **'***login***'**  
 Is the login name. *login* is **sysname**, with no default. *login* can be an existing [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login or a Windows user or group.  
  
 [ **@language =** ] **'***language***'**  
 Is the default language of the login. *language* is **sysname**, with a default of NULL. *language* must be a valid language on the server. If *language* is not specified, *language* is set to the server default language; default language is defined by the **sp_configure** configuration variable **default language**. Changing the server default language does not change the default language for existing logins.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_defaultlanguage** calls ALTER LOGIN, which supports additional options. For information about changing other login defaults, see [ALTER LOGIN &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-login-transact-sql.md).  
  
 Use the SET LANGUAGE statement to change the language of the current session. Use the @@LANGUAGE function to show the current language setting.  
  
 If the default language of a login is dropped from the server, the login acquires the default language of the server. **sp_defaultlanguage** cannot be executed within a user-defined transaction.  
  
 Information about languages installed on the server is visible in the **sys.syslanguages** catalog view.  
  
## Permissions  
 Requires ALTER ANY LOGIN permission.  
  
## Examples  
 The following example uses `ALTER LOGIN` to change the default language for login `Fathima` to Arabic. This is the preferred method.  
  
```  
ALTER LOGIN Fathima WITH DEFAULT_LANGUAGE = Arabic;  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [ALTER LOGIN &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-login-transact-sql.md)   
 [@@LANGUAGE &#40;Transact-SQL&#41;](../../../t-sql/functions/language-transact-sql.md)   
 [SET Statements &#40;Transact-SQL&#41;](../../../t-sql/statements/set-statements-transact-sql.md)   
 [sys.syslanguages &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-compatibility-views/sys.syslanguages-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  