---
title: "sp_grantdbaccess (Transact-SQL) | Microsoft Docs"
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
  - "sp_grantdbaccess"
  - "sp_grantdbaccess_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_grantdbaccess"
ms.assetid: 3eb09513-03f1-42f8-9917-3a1f3a579bec
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_grantdbaccess (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Adds a database user to the current database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [CREATE USER](../../t-sql/statements/create-user-transact-sql.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_grantdbaccess [ @loginame = ] 'login'  
    [ , [ @name_in_db = ] 'name_in_db' [ OUTPUT ] ]  
```  
  
## Arguments  
 [ **@loginame =** ] **'***login* **'**  
 Is the name of the Windows group, Windows login or [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login to be mapped to the new database user. Names of Windows groups and Windows logins must be qualified with a Windows domain name in the form *Domain*\\*login*; for example, **LONDON\Joeb**. The login cannot already be mapped to a user in the database. *login* is a **sysname**, with no default.  
  
 [ **@name_in_db=**] **'***name_in_db***'** [ **OUTPUT**]  
 Is the name for the new database user. *name_in_db* is an OUTPUT variable with a data type of **sysname**, and a default of NULL. If not specified, *login* is used. If specified as an OUTPUT variable with a value of NULL, **@name_in_db** is set to *login*. *name_in_db* must not already exist in the current database.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Remarks  
 **sp_grantdbaccess** calls CREATE USER, which supports additional options. For information about creating database users, see [CREATE USER &#40;Transact-SQL&#41;](../../t-sql/statements/create-user-transact-sql.md). To remove a database user from a database, use [DROP USER](../../t-sql/statements/drop-user-transact-sql.md).  
  
 **sp_grantdbaccess** cannot be executed within a user-defined transaction.  
  
## Permissions  
 Requires membership in the **db_owner** fixed database role or the **db_accessadmin** fixed database role.  
  
## Examples  
 The following example uses `CREATE USER` to add a database user for the Windows login `Edmonds\LolanSo` to the current database. The new user is named `Lolan`. This is the preferred method for creating a database user.  
  
```  
CREATE USER Lolan FOR LOGIN [Edmonds\LolanSo];  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [CREATE USER &#40;Transact-SQL&#41;](../../t-sql/statements/create-user-transact-sql.md)   
 [DROP USER &#40;Transact-SQL&#41;](../../t-sql/statements/drop-user-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  