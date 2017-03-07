---
title: "IS_MEMBER (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-08-05"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IS_MEMBER"
  - "IS_MEMBER_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "database roles [SQL Server], members"
  - "current member status"
  - "roles [SQL Server], members"
  - "testing member status"
  - "members [SQL Server]"
  - "checking member status"
  - "IS_MEMBER function"
  - "verifying member status"
  - "groups [SQL Server], members"
  - "members [SQL Server], verifying"
ms.assetid: 77cb68a0-19b7-4fe1-ab17-e5587699631b
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# IS_MEMBER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Indicates whether the current user is a member of the specified [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows group or [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database role.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
IS_MEMBER ( { 'group' | 'role' } )  
```  
  
## Arguments  
 **'** *group* **'**  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Is the name of the Windows group that is being checked; must be in the format *Domain*\\*Group*. *group* is **sysname**.  
  
 **'** *role* **'**  
 Is the name of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] role that is being checked. *role* is **sysname** and can include the database fixed roles or user-defined roles, but not server roles.  
  
## Return Types  
 **int**  
  
## Remarks  
 IS_MEMBER returns the following values.  
  
|Return value|Description|  
|------------------|-----------------|  
|0|Current user is not a member of *group* or *role*.|  
|1|Current user is a member of *group* or *role*.|  
|NULL|Either *group* or *role* is not valid. When queried by a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login or a login using an application role, returns NULL for a Windows group.|  
  
 IS_MEMBER determines Windows group membership by examining an access token that is created by Windows. The access token does not reflect changes in group membership that are made after a user connects to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Windows group membership cannot be queried by a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login or a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] application role.  
  
 To add and remove members from a database role, use [ALTER ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-role-transact-sql.md). To add and remove members from a server role, use [ALTER SERVER ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-server-role-transact-sql.md).  
  
 This function evaluates role membership, not the underlying permission. For example, the **db_owner** fixed database role has the **CONTROL DATABASE** permission. If the user has the **CONTROL DATABASE** permission but is not a member of the role, this function will correctly report that the user is not a member of the **db_owner** role, even though the user has the same permissions.  
  
 Members of the **sysadmin** fixed server role enter every database as the **dbo** user. Checking permission for member of the **sysadmin** fixed server role, checks permissions for **dbo**, not the original login. Since **dbo** can't be added to a database role and doesn’t exist in Windows groups, **dbo** will always return 0 (or NULL if the role doesn't exist).  
  
## Related Functions  
 To determine whether another [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login is a member of a database role, use [IS_ROLEMEMBER &#40;Transact-SQL&#41;](../../t-sql/functions/is-rolemember-transact-sql.md). To determine whether a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login is a member of a server role, use [IS_SRVROLEMEMBER &#40;Transact-SQL&#41;](../../t-sql/functions/is-srvrolemember-transact-sql.md).  
  
## Examples  
 The following example checks whether the current user is a member of a database role or a Windows domain group.  
  
```  
-- Test membership in db_owner and print appropriate message.  
IF IS_MEMBER ('db_owner') = 1  
   PRINT 'Current user is a member of the db_owner role'  
ELSE IF IS_MEMBER ('db_owner') = 0  
   PRINT 'Current user is NOT a member of the db_owner role'  
ELSE IF IS_MEMBER ('db_owner') IS NULL  
   PRINT 'ERROR: Invalid group / role specified';  
GO  
  
-- Execute SELECT if user is a member of ADVWORKS\Shipping.  
IF IS_MEMBER ('ADVWORKS\Shipping') = 1  
   SELECT 'User ' + USER + ' is a member of ADVWORKS\Shipping.';   
GO  
```  
  
## See Also  
 [IS_SRVROLEMEMBER &#40;Transact-SQL&#41;](../../t-sql/functions/is-srvrolemember-transact-sql.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Security Functions &#40;Transact-SQL&#41;](../../t-sql/functions/security-functions-transact-sql.md)  
  
  