---
title: "sp_droprole (Transact-SQL) | Microsoft Docs"
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
  - "sp_droprole"
  - "sp_droprole_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_droprole"
ms.assetid: 889ee074-00f8-40a9-bddb-d7d3ef0cbc19
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_droprole (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a database role from the current database.  
  
> [!IMPORTANT]  
>  In [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)], **sp_droprole** was replaced by the DROP ROLE statement. **sp_droprole** is included only for compatibility with earlier versions of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] and may not be supported in a future release.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_droprole [ @rolename= ] 'role'  
```  
  
## Arguments  
 [ **@rolename =** ] **'***role***'**  
 Is the name of the database role to remove from the current database. *role* is a **sysname**, with no default. *role* must already exist in the current database.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 Only database roles can be removed by using **sp_droprole**.  
  
 A database role with existing members cannot be removed. All members of a database role must be removed before the database role can be removed. To remove users from a role, use **sp_droprolemember**. If any users are still members of the role, **sp_droprole** displays those members.  
  
 Fixed roles and the **public** role cannot be removed.  
  
 A role cannot be removed if it owns any securables. Before dropping an application role that owns securables, you must first transfer ownership of the securables, or drop them. Use ALTER AUTHORIZATION to change the owner of objects that must not be removed.  
  
 **sp_droprole** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires CONTROL permission on the role.  
  
## Examples  
 The following example removes the application role `Sales`.  
  
```  
EXEC sp_droprole 'Sales';  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [sp_addrole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addrole-transact-sql.md)   
 [DROP ROLE &#40;Transact-SQL&#41;](../../../t-sql/statements/drop-role-transact-sql.md)   
 [ALTER AUTHORIZATION &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-authorization-transact-sql.md)   
 [sp_dropapprole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-dropapprole-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  