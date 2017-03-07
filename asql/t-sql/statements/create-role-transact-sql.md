---
title: "CREATE ROLE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-23"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CREATE ROLE"
  - "DATABASE ROLE"
  - "ROLE_TSQL"
  - "DATABASE_ROLE_TSQL"
  - "CREATE_ROLE_TSQL"
  - "CREATE DATABASE ROLE"
  - "ROLE"
  - "CREATE_DATABASE_ROLE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "database roles [SQL Server], creating"
  - "CREATE DATABASE ROLE statement"
  - "roles [SQL Server], creating"
  - "CREATE ROLE statement"
ms.assetid: b0cd54ad-e81d-4d71-acec-8a6d7261ca08
caps.latest.revision: 54
ms.author: "rickbyh"
manager: "jhubbard"
---
# CREATE ROLE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Creates a new database role in the current database.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
CREATE ROLE role_name [ AUTHORIZATION owner_name ]  
```  
  
## Arguments  
 *role_name*  
 Is the name of the role to be created.  
  
 AUTHORIZATION *owner_name*  
 Is the database user or role that is to own the new role. If no user is specified, the role will be owned by the user that executes CREATE ROLE.  
  
## Remarks  
 Roles are database-level securables. After you create a role, configure the database-level permissions of the role by using GRANT, DENY, and REVOKE. To add members to a database role, use [ALTER ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-role-transact-sql.md). For more information, see [Database-Level Roles](../../relational-databases/security/authentication-access/database-level-roles.md).  
  
 Database roles are visible in the sys.database_role_members and sys.database_principals catalog views.  
  
 For information about designing a permissions system, see [Getting Started with Database Engine Permissions](../../relational-databases/security/authentication-access/getting-started-with-database-engine-permissions.md).  
  
> [!CAUTION]  
>  [!INCLUDE[ssCautionUserSchema](../../t-sql/statements/includes/sscautionuserschema-md.md)]  
  
## Permissions  
 Requires **CREATE ROLE** permission on the database or membership in the **db_securityadmin** fixed database role. When you use the **AUTHORIZATION** option, the following permissions are also required:  
  
-   To assign ownership of a role to another user, requires IMPERSONATE permission on that user.  
  
-   To assign ownership of a role to another role, requires membership in the recipient role or ALTER permission on that role.  
  
-   To assign ownership of a role to an application role, requires ALTER permission on the application role.  
  
## Examples  
  
### A. Creating a database role that is owned by a database user  
 The following example creates the database role `buyers` that is owned by user `BenMiller`.  
  
```  
USE AdventureWorks2012;  
CREATE ROLE buyers AUTHORIZATION BenMiller;  
GO  
```  
  
### B. Creating a database role that is owned by a fixed database role  
 The following example creates the database role `auditors` that is owned the `db_securityadmin` fixed database role.  
  
```  
USE AdventureWorks2012;  
CREATE ROLE auditors AUTHORIZATION db_securityadmin;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### C. Creating a database role that is owned by a database user  
 The following example creates the database role `buyers` that is owned by user `BenMiller`.  
  
```  
-- Uses AdventureWorks  
  
CREATE ROLE buyers AUTHORIZATION BenMiller;  
GO  
```  
  
### D. Creating a database role that is owned by a fixed database role  
 The following example creates the database role `auditors` that is owned the `db_securityadmin` fixed database role.  
  
```  
-- Uses AdventureWorks  
  
CREATE ROLE auditors AUTHORIZATION db_securityadmin;  
GO  
```  
  
## See Also  
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [ALTER ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-role-transact-sql.md)   
 [DROP ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-role-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)   
 [sp_addrolemember &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-addrolemember-transact-sql.md)   
 [sys.database_role_members &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-role-members-transact-sql.md)   
 [sys.database_principals &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-principals-transact-sql.md)   
 [Getting Started with Database Engine Permissions](../../relational-databases/security/authentication-access/getting-started-with-database-engine-permissions.md)  
  
  

