---
title: "ALTER ROLE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-01-19"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "ALTER_ROLE_TSQL"
  - "ALTER ROLE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "modifying database roles"
  - "ALTER ROLE statement"
  - "renaming database roles"
  - "database roles [SQL Server], modifying"
  - "names [SQL Server], database roles"
ms.assetid: e1e83caa-17cc-4871-b2db-2711339fb64f
caps.latest.revision: 64
ms.author: "rickbyh"
manager: "jhubbard"
---
# ALTER ROLE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Adds or removes members to or from a database role, or changes the name of a user-defined database role.  
  
> [!NOTE]  
>  To alter roles in [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use [sp_addrolemember &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addrolemember-transact-sql.md) and [sp_droprolemember &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-droprolemember-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server (starting with 2012) and Azure SQL Database  
  
ALTER ROLE  role_name  
{  
       ADD MEMBER database_principal  
    |  DROP MEMBER database_principal  
    |  WITH NAME = new_name  
}  
[;]  
```  
  
 
```  
-- Syntax for SQL Server 2008 only  
  
-- Change the name of a user-defined database role  
ALTER ROLE role_name   
    WITH NAME = new_name  
[;]  
```  
  
## Arguments  
 *role_name*  
 **APPLIES TO:**  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (starting with 2008), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)]  
  
 Specifies the database role to change.  
  
 ADD MEMBER *database_principal*l  
 **APPLIES TO:**  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (starting with 2012), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)]  
  
 Specifies to add the database principal to the membership of a database role.  
  
-   *database_principal* is a database user or a user-defined database role.  
  
-   *database_principal* cannot be a fixed database role or a server principal.  
  
 DROP MEMBER *database_principal*  
 **APPLIES TO:**  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (starting with 2012), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)]  
  
 Specifies to remove a database principal from the membership of a database role.  
  
-   *database_principal* is a database user or a user-defined database role.  
  
-   *database_principal* cannot be a fixed database role or a server principal.  
  
 WITH NAME = *new_name*  
 **APPLIES TO:**  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (starting with 2008), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)]  
  
 Specifies to change the name of a user-defined database role. The new name must not already exist in the database.  
  
 Changing the name of a database role does not change ID number, owner, or permissions of the role.  
  
## Permissions  
 To run this command you need one or more of these permissions or memberships:  
  
-   **ALTER** permission on the role  
  
-   **ALTER ANY ROLE** permission on the database  
  
-   Membership in the **db_securityadmin** fixed database role  
  
 Additionally, to change the membership in a fixed database role you need:  
  
-   Membership in the **db_owner** fixed database role  
  
## Limitations and restrictions  
 You cannot change the name of a fixed database role.  
  
## Metadata  
 These system views contain information about database roles and database principals.  
  
-   [sys.database_role_members &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-role-members-transact-sql.md)  
  
-   [sys.database_principals &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-principals-transact-sql.md)  
  
## Examples  
  
### A. Change the name of a database role  
 **APPLIES TO:**  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (starting with 2008), [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)]  
  
 The following example changes the name of role `buyers` to `purchasing`. [!INCLUDE[AdWorks-example](../../t-sql/statements/includes/adworks-example-md.md)]  
  
```tsql  
ALTER ROLE buyers WITH NAME = purchasing;  
```  
  
### B. Add or remove role members  
 **APPLIES TO:**  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (starting with 2012), [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)]  
  
 This example creates a database role named `Sales`. It adds a database user named Barry to the membership, and then shows how to remove the member Barry. [!INCLUDE[AdWorks-example](../../t-sql/statements/includes/adworks-example-md.md)]  
  
```tsql  
CREATE ROLE Sales;  
ALTER ROLE Sales ADD MEMBER Barry;  
ALTER ROLE Sales DROP MEMBER Barry;  
```  
  
## See Also  
 [CREATE ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-role-transact-sql.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [DROP ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-role-transact-sql.md)   
 [sp_addrolemember &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addrolemember-transact-sql.md)   
 [sys.database_role_members &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-role-members-transact-sql.md)   
 [sys.database_principals &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-principals-transact-sql.md)  
  
  