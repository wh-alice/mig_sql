---
title: "REVOKE System Object Permissions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
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
  - "REVOKE statement, system objects"
  - "permissions [SQL Server], system objects"
ms.assetid: 84983238-dd7d-45bd-99bb-52c9d8e96a87
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# REVOKE System Object Permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Revokes permissions on system objects such as stored procedures, extended stored procedures, functions, and views from a principal.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
REVOKE { SELECT | EXECUTE } ON [sys.]system_object FROM principal   
```  
  
## Arguments  
 [**sys.**] .  
 The **sys** qualifier is required only when you are referring to catalog views and dynamic management views.  
  
 *system_object*  
 Specifies the object on which permission is being revoked.  
  
 *principal*  
 Specifies the principal from which the permission is being revoked.  
  
## Remarks  
 This statement can be used to revoke permissions on certain stored procedures, extended stored procedures, table-valued functions, scalar functions, views, catalog views, compatibility views, INFORMATION_SCHEMA views, dynamic management views, and system tables that are installed by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Each of these system objects exists as a unique record in the resource database (**mssqlsystemresource**). The resource database is read-only. A link to the object is exposed as a record in the **sys** schema of every database.  
  
 Default name resolution resolves unqualified procedure names to the resource database. Therefore, the **sys.** qualifier is required only when you are specifying catalog views and dynamic management views.  
  
> [!CAUTION]  
>  Revoking permissions on system objects will cause applications that depend on them to fail. [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] uses catalog views and may not function as expected if you change the default permissions on catalog views.  
  
 Revoking permissions on triggers and on columns of system objects is not supported.  
  
 Permissions on system objects will be preserved during upgrades of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 System objects are visible in the [sys.system_objects](../../relational-databases/reference/system-catalog-views/sys.system-objects-transact-sql.md) catalog view.  
  
## Permissions  
 Requires CONTROL SERVER permission.  
  
## Examples  
 The following example revokes `EXECUTE` permission on `sp_addlinkedserver` from `public`.  
  
```  
REVOKE EXECUTE ON sys.sp_addlinkedserver FROM public;  
GO  
```  
  
## See Also  
 [sys.system_objects &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.system-objects-transact-sql.md)   
 [sys.database_permissions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.database-permissions-transact-sql.md)   
 [GRANT System Object Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/grant-system-object-permissions-transact-sql.md)   
 [DENY System Object Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/deny-system-object-permissions-transact-sql.md)  
  
  