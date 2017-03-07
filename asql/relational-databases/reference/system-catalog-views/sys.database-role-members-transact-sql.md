---
title: "sys.database_role_members (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2017-01-31"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.database_role_members_TSQL"
  - "sys.database_role_members"
  - "database_role_members_TSQL"
  - "database_role_members"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.database_role_members catalog view"
ms.assetid: ed1b019d-ca48-4db3-85df-cf6d2db591cf
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.database_role_members (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns one row for each member of each database role.  Database users, application roles, and other database roles can be members of a database role. To add members to a role, use the [ALTER ROLE](../../../t-sql/statements/alter-role-transact-sql.md) statement with the `ADD MEMBER` option. Join with [sys.database_principals](../../../relational-databases/reference/system-catalog-views/sys.database-principals-transact-sql.md) to return the names of the `principal_id` values.
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**role_principal_id**|**int**|Database principal ID of the role.|  
|**member_principal_id**|**int**|Database principal ID of the member.|  
  
## Permissions  
 Any user can view their own role membership. To view other role memberships requires membership in the `db_securityadmin` fixed database role or `VIEW DEFINITION` on the database.  
  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Example  
 The following query returns the members of the database roles.  
  
```  
SELECT DP1.name AS DatabaseRoleName,   
   isnull (DP2.name, 'No members') AS DatabaseUserName   
 FROM sys.database_role_members AS DRM  
 RIGHT OUTER JOIN sys.database_principals AS DP1  
   ON DRM.role_principal_id = DP1.principal_id  
 LEFT OUTER JOIN sys.database_principals AS DP2  
   ON DRM.member_principal_id = DP2.principal_id  
WHERE DP1.type = 'R'
ORDER BY DP1.name;  
```  
  
## See Also  
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Principals &#40;Database Engine&#41;](../../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
[ALTER ROLE (Transact-SQLL)](../../../t-sql/statements/alter-role-transact-sql.md)      
[sys.server_role_members (Transact-SQL)](../../../relational-databases/reference/system-catalog-views/sys.server-role-members-transact-sql.md)   
  

