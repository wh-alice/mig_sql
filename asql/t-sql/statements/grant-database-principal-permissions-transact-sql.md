---
title: "GRANT Database Principal Permissions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "database roles [SQL Server], permissions"
  - "permissions [SQL Server], database roles"
  - "granting permissions [SQL Server], database users"
  - "granting permissions [SQL Server], application roles"
  - "granting permissions [SQL Server], database roles"
  - "database user permissions [SQL Server]"
  - "permissions [SQL Server], application roles"
  - "permissions [SQL Server], database users"
  - "GRANT statement, users"
  - "GRANT statement, roles"
  - "application roles [SQL Server], permissions"
ms.assetid: 012588a2-cbe1-48f0-a731-b4a2b83203d5
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# GRANT Database Principal Permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Grants permissions on a database user, database role, or application role in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
GRANT permission [ ,...n ]    
    ON   
    {  [ USER :: database_user ]  
     | [ ROLE :: database_role ]  
     | [ APPLICATION ROLE :: application_role ]  
    }  
    TO <database_principal> [ ,...n ]  
       [ WITH GRANT OPTION ]  
       [ AS <database_principal> ]  
  
<database_principal> ::=  
    Database_user   
  | Database_role   
  | Application_role   
  | Database_user_mapped_to_Windows_User   
  | Database_user_mapped_to_Windows_Group   
  | Database_user_mapped_to_certificate   
  | Database_user_mapped_to_asymmetric_key   
  | Database_user_with_no_login   
```  
  
## Arguments  
 *permission*  
 Specifies a permission that can be granted on the database principal. For a list of the permissions, see the Remarks section later in this topic.  
  
 USER ::*database_user*  
 Specifies the class and name of the user on which the permission is being granted. The scope qualifier (::) is required.  
  
 ROLE ::*database_role*  
 Specifies the class and name of the role on which the permission is being granted. The scope qualifier (::) is required.  
  
 APPLICATION ROLE ::*application_role*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)], [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
 Specifies the class and name of the application role on which the permission is being granted. The scope qualifier (::) is required.  
  
 WITH GRANT OPTION  
 Indicates that the principal will also be given the ability to grant the specified permission to other principals.  
  
 AS <database_principal>  
 Specifies a principal from which the principal executing this query derives its right to grant the permission.  
  
 *Database_user*  
 Specifies a database user.  
  
 *Database_role*  
 Specifies a database role.  
  
 *Application_role*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)], [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
 Specifies an application role.  
  
 *Database_user_mapped_to_Windows_User*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Specifies a database user mapped to a Windows user.  
  
 *Database_user_mapped_to_Windows_Group*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Specifies a database user mapped to a Windows group.  
  
 *Database_user_mapped_to_certificate*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Specifies a database user mapped to a certificate.  
  
 *Database_user_mapped_to_asymmetric_key*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Specifies a database user mapped to an asymmetric key.  
  
 *Database_user_with_no_login*  
 Specifies a database user with no corresponding server-level principal.  
  
## Remarks  
 Information about database principals is visible in the [sys.database_principals](../../relational-databases/reference/system-catalog-views/sys.database-principals-transact-sql.md) catalog view. Information about database-level permissions is visible in the [sys.database_permissions](../../relational-databases/reference/system-catalog-views/sys.database-permissions-transact-sql.md) catalog view.  
  
## Database User Permissions  
 A database user is a database-level securable contained by the database that is its parent in the permissions hierarchy. The most specific and limited permissions that can be granted on a database user are listed in the following table, together with the more general permissions that include them by implication.  
  
|Database user permission|Implied by database user permission|Implied by database permission|  
|------------------------------|-----------------------------------------|------------------------------------|  
|CONTROL|CONTROL|CONTROL|  
|IMPERSONATE|CONTROL|CONTROL|  
|ALTER|CONTROL|ALTER ANY USER|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## Database Role Permissions  
 A database role is a database-level securable contained by the database that is its parent in the permissions hierarchy. The most specific and limited permissions that can be granted on a database role are listed in the following table, together with the more general permissions that include them by implication.  
  
|Database role permission|Implied by database role permission|Implied by database permission|  
|------------------------------|-----------------------------------------|------------------------------------|  
|CONTROL|CONTROL|CONTROL|  
|TAKE OWNERSHIP|CONTROL|CONTROL|  
|ALTER|CONTROL|ALTER ANY ROLE|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## Application Role Permissions  
 An application role is a database-level securable contained by the database that is its parent in the permissions hierarchy. The most specific and limited permissions that can be granted on an application role are listed in the following, together with the more general permissions that include them by implication.  
  
|Application role permission|Implied by application role permission|Implied by database permission|  
|---------------------------------|--------------------------------------------|------------------------------------|  
|CONTROL|CONTROL|CONTROL|  
|ALTER|CONTROL|ALTER ANY APPLICATION ROLE|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## Permissions  
 The grantor (or the principal specified with the AS option) must have either the permission itself with GRANT OPTION, or a higher permission that implies the permission being granted.  
  
 If you are using the AS option, the following additional requirements apply.  
  
|AS *granting_principal*|Additional permission required|  
|------------------------------|------------------------------------|  
|Database user|IMPERSONATE permission on the user, membership in the db_securityadmin fixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Database user mapped to a Windows User|IMPERSONATE permission on the user, membership in the db_securityadmin fixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Database user mapped to a Windows Group|Membership in the Windows group, membership in the db_securityadmin fixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Database user mapped to a certificate|Membership in the db_securityadmin fixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Database user mapped to an asymmetric key|Membership in the db_securityadminfixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Database user not mapped to any server principal|IMPERSONATE permission on the user, membership in the db_securityadmin fixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Database role|ALTER permission on the role, membership in the db_securityadminfixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
|Application role|ALTER permission on the role, membership in the db_securityadmin fixed database role, membership in the db_owner fixed database role, or membership in the sysadmin fixed server role.|  
  
 Principals that have CONTROL permission on a securable can grant permission on that securable.  
  
 Grantees of CONTROL permission on a database, such as members of the db_owner fixed database role, can grant any permission on any securable in the database.  
  
## Examples  
  
### A. Granting CONTROL permission on a user to another user  
 The following example grants `CONTROL` permission on `AdventureWorks2012` user `Wanida` to user `RolandX`.  
  
```  
USE AdventureWorks2012;  
GRANT CONTROL ON USER::Wanida TO RolandX;  
GO  
```  
  
### B. Granting VIEW DEFINITION permission on a role to a user with GRANT OPTION  
 The following example grants `VIEW DEFINITION` permission on `AdventureWorks2012` role `SammamishParking` together with `GRANT OPTION` to database user `JinghaoLiu`.  
  
```  
USE AdventureWorks2012;  
GRANT VIEW DEFINITION ON ROLE::SammamishParking   
    TO JinghaoLiu WITH GRANT OPTION;  
GO  
```  
  
### C. Granting IMPERSONATE permission on a user to an application role  
 The following example grants `IMPERSONATE` permission on user `HamithaL` to `AdventureWorks2012` application role `AccountsPayable17`.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)], [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
```  
USE AdventureWorks2012;  
GRANT IMPERSONATE ON USER::HamithaL TO AccountsPayable17;  
GO    
```  
  
## See Also  
 [DENY Database Principal Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/deny-database-principal-permissions-transact-sql.md)   
 [REVOKE Database Principal Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/revoke-database-principal-permissions-transact-sql.md)   
 [sys.database_principals &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-principals-transact-sql.md)   
 [sys.database_permissions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-permissions-transact-sql.md)   
 [CREATE USER &#40;Transact-SQL&#41;](../../t-sql/statements/create-user-transact-sql.md)   
 [CREATE APPLICATION ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-application-role-transact-sql.md)   
 [CREATE ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-role-transact-sql.md)   
 [GRANT &#40;Transact-SQL&#41;](../../t-sql/statements/grant-transact-sql.md)   
 [Permissions &#40;Database Engine&#41;](../../relational-databases/security/permissions-database-engine.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)  
  
  