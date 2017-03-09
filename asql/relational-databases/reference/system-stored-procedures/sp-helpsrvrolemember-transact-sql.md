---
title: "sp_helpsrvrolemember (Transact-SQL) | Microsoft Docs"
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
  - "sp_helpsrvrolemember"
  - "sp_helpsrvrolemember_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_helpsrvrolemember"
ms.assetid: d0714913-8d6b-4de3-b042-3ae9934f839d
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpsrvrolemember (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about the members of a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] fixed server role.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_helpsrvrolemember [ [ @srvrolename = ] 'role' ]  
```  
  
## Arguments  
 [ **@srvrolename =** ] **'***role***'**  
 Is the name of a fixed server role. *role* is **sysname**, with a default of NULL. If *role*is not specified, the result set includes information about all fixed server roles.  
  
 *role* can be any of the following values.  
  
|Fixed server role|Description|  
|-----------------------|-----------------|  
|sysadmin|System administrators|  
|securityadmin|Security administrators|  
|serveradmin|Server administrators|  
|setupadmin|Setup administrators|  
|processadmin|Process administrators|  
|diskadmin|Disk administrators|  
|dbcreator|Database creators|  
|bulkadmin|Can execute BULK INSERT statements|  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|ServerRole|**sysname**|Name of the server role|  
|MemberName|**sysname**|Name of a member of ServerRole|  
|MemberSID|**varbinary(85)**|Security identifier of MemberName|  
  
## Remarks  
 Use sp_helprolemember to display the members of a database role.  
  
 All logins are a member of public. sp_helpsrvrolemember does not recognize the public role because, internally, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not implement public as a role.  
  
 To add or removed members from server roles, see [ALTER SERVER ROLE &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-server-role-transact-sql.md).  
  
 sp_helpsrvrolemember does not take a user-defined server role as an argument. To determine the members of a user-defined server role, see the examples in [ALTER SERVER ROLE &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-server-role-transact-sql.md).  
  
## Permissions  
 Requires membership in the public role.  
  
## Examples  
 The following example lists the members of the `sysadmin` fixed server role.  
  
```  
EXEC sp_helpsrvrolemember 'sysadmin';  
```  
  
## See Also  
 [sp_helprole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helprole-transact-sql.md)   
 [sp_helprolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helprolemember-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [Security Functions &#40;Transact-SQL&#41;](../../../t-sql/functions/security-functions-transact-sql.md)  
  
  