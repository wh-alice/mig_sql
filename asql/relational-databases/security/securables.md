---
title: "Securables | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-10-18"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.roleproperties.selectobject.f1"
helpviewer_keywords: 
  - "securables [SQL Server]"
  - "schemas [SQL Server], securables"
  - "database securables [SQL Server]"
  - "hierarchies [SQL Server], securables"
  - "server securables [SQL Server]"
ms.assetid: bfa748f0-70b0-453c-870a-04b7b205b9ff
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# Securables
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Securables are the resources to which the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] authorization system regulates access. For example, a table is a securable. Some securables can be contained within others, creating nested hierarchies called "scopes" that can themselves be secured. The securable scopes are **server**, **database**, and **schema**.  
  
## Securable scope: Server  
 The **server** securable scope contains the following securables:  
  
-   Availability group  
  
-   Endpoint  
  
-   Login  
  
-   Server role  
  
-   Database  
  
## Securable scope: Database  
 The **database** securable scope contains the following securables:  
  
-   Application role  
  
-   Assembly  
  
-   Asymmetric key  
  
-   Certificate  
  
-   Contract  
  
-   Fulltext catalog  
  
-   Fulltext stoplist  
  
-   Message type  
  
-   Remote Service Binding  
  
-   (Database) Role  
  
-   Route  
  
-   Schema  
  
-   Search property list  
  
-   Service  
  
-   Symmetric key  
  
-   User  
  
## Securable scope: Schema  
 The **schema** securable scope contains the following securables:  
  
-   Type  
  
-   XML schema collection  
  
-   Object – The object class has the following members:  
  
    -   Aggregate  
  
    -   Function  
  
    -   Procedure  
  
    -   Queue  
  
    -   Synonym  
  
    -   Table  
  
    -   View 
    
    -   External Table 
  
## Controlling Access to a Securable  
 The entity that receives permission to a securable is called a principal. The most common principals are logins and database users. Access to securables is controlled by granting or denying permissions, or by adding logins and users to roles which have access. For information about controlling permissions, see [GRANT &#40;Transact-SQL&#41;](../../t-sql/statements/grant-transact-sql.md), [REVOKE &#40;Transact-SQL&#41;](../../t-sql/statements/revoke-transact-sql.md), [DENY &#40;Transact-SQL&#41;](../../t-sql/statements/deny-transact-sql.md), [sp_addrolemember &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-addrolemember-transact-sql.md), and [sp_droprolemember &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-droprolemember-transact-sql.md).  
  
> [!CAUTION]  
>  The default permissions that are granted to system objects at the time of setup are carefully evaluated against possible threats and need not be altered as part of hardening the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] installation. Any changes to the permissions on the system objects could limit or break the functionality and could potentially leave your [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] installation in an unsupported state.  
  
## Related Content  
 [Getting Started with Database Engine Permissions](../../relational-databases/security/authentication-access/getting-started-with-database-engine-permissions.md)  
  
 [Securing SQL Server](../../relational-databases/security/securing-sql-server.md)  
  
 [sys.database_principals &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-principals-transact-sql.md)  
  
 [sys.database_role_members &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-role-members-transact-sql.md)  
  
 [sys.server_principals &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-principals-transact-sql.md)  
  
 [sys.server_role_members &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.server-role-members-transact-sql.md)  
  
 [sys.sql_logins &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.sql-logins-transact-sql.md)  
  
  