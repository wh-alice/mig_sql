---
title: "sp_unsetapprole (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_unsetapprole_TSQL"
  - "sp_unsetapprole"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_unsetapprole"
ms.assetid: 4c4033d3-1a34-4dfb-835d-e3293d1a442d
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_unsetapprole (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Deactivates an application role and reverts to the previous security context.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_unsetapprole @cookie   
```  
  
## Arguments  
 **@cookie**  
 Specifies the cookie that was created when the application role was activated. The cookie is created by [sp_setapprole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-setapprole-transact-sql.md). **varbinary(8000)**.  
  
> [!NOTE]  
>  The cookie **OUTPUT** parameter for **sp_setapprole** is currently documented as **varbinary(8000)** which is the correct maximum length. However the current implementation returns **varbinary(50)**. Applications should continue to reserve **varbinary(8000)** so that the application continues to operate correctly if the cookie return size increases in a future release.  
  
## Return Code Values  
 0 (success) and 1 (failure)  
  
## Remarks  
 After an application role is activated by using **sp_setapprole**, the role remains active until the user either disconnects from the server or executes **sp_unsetapprole**.  
  
 For an overview of application roles, see [Application Roles](../../../relational-databases/security/authentication-access/application-roles.md).  
  
## Permissions  
 Requires membership in **public** and knowledge of the cookie saved when the application role was activated.  
  
## Examples  
  
### Activating an application role with a cookie, then reverting to the previous context  
 The following example activates the `Sales11` application role with password `fdsd896#gfdbfdkjgh700mM`, and creates a cookie. The example returns the name of the current user, and then reverts to the original context by executing **sp_unsetapprole**.  
  
```  
DECLARE @cookie varbinary(8000);  
EXEC sp_setapprole 'Sales11', 'fdsd896#gfdbfdkjgh700mM'  
    , @fCreateCookie = true, @cookie = @cookie OUTPUT;  
-- The application role is now active.  
SELECT USER_NAME();  
-- This will return the name of the application role, Sales11.  
EXEC sp_unsetapprole @cookie;  
-- The application role is no longer active.  
-- The original context has now been restored.  
GO  
SELECT USER_NAME();  
-- This will return the name of the original user.   
GO   
```  
  
## See Also  
 [sp_setapprole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-setapprole-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [CREATE APPLICATION ROLE &#40;Transact-SQL&#41;](../../../t-sql/statements/create-application-role-transact-sql.md)   
 [DROP APPLICATION ROLE &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-application-role-transact-sql.md)  
  
  