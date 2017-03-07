---
title: "sp_droprolemember (Transact-SQL) | Microsoft Docs"
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
  - "sp_droprolemember_TSQL"
  - "sp_droprolemember"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_droprolemember"
ms.assetid: c2f19ab1-e742-4d56-ba8e-8ffd40cf4925
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_droprolemember (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Removes a security account from a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] role in the current database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [ALTER ROLE](../../../t-sql/statements/alter-role-transact-sql.md) instead.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
sp_droprolemember [ @rolename = ] 'role' ,   
     [ @membername = ] 'security_account'  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
sp_droprolemember 'role' ,  
     'security_account'  
```  
  
## Arguments  
 [ **@rolename =** ] **'***role***'**  
 Is the name of the role from which the member is being removed. *role* is **sysname**, with no default. *role* must exist in the current database.  
  
 [ **@membername =** ] **'***security_account***'**  
 Is the name of the security account being removed from the role. *security_account* is **sysname**, with no default. *security_account* can be a database user, another database role, a Windows login, or a Windows group. *security_account* must exist in the current database.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 sp_droprolemember removes a member from a database role by deleting a row from the sysmembers table. When a member is removed from a role the member loses any permissions it has by membership in that role.  
  
 To remove a user from a fixed server role, use sp_dropsrvrolemember. Users cannot be removed from the public role, and dbo cannot be removed from any role.  
  
 Use sp_helpuser to see the members of a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] role, and use ALTER ROLE to add a member to a role.  
  
## Permissions  
 Requires ALTER permission on the role.  
  
## Examples  
 The following example removes the user `JonB` from the role `Sales`.  
  
```  
EXEC sp_droprolemember 'Sales', 'Jonb';  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]  
 The following example removes the user `JonB` from the role `Sales`.  
  
```  
EXEC sp_droprolemember 'Sales', 'JonB'  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [sp_addrolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addrolemember-transact-sql.md)   
 [sp_droprole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-droprole-transact-sql.md)   
 [sp_dropsrvrolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-dropsrvrolemember-transact-sql.md)   
 [sp_helpuser &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpuser-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  

