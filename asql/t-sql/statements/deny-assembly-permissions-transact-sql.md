---
title: "DENY Assembly Permissions (Transact-SQL) | Microsoft Docs"
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
  - "assemblies [CLR integration], permissions"
  - "DENY statement, assemblies"
  - "denying permissions [SQL Server], assemblies"
ms.assetid: be0896b3-f793-44c9-9390-1c6e58f33b2b
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# DENY Assembly Permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Denies permissions on an assembly.  
  

  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
DENY { permission [ ,...n ] } ON ASSEMBLY :: assembly_name  
    TO database_principal [ ,...n ]   
        [ CASCADE ]  
        [ AS denying_principal ]  
```  
  
## Arguments  
 *permission*  
 Specifies a permission that can be denied on an assembly. Listed below.  
  
 ON ASSEMBLY **::***assembly_name*  
 Specifies the assembly on which the permission is being denied. The scope qualifier "::" is required.  
  
 *database_principal*  
 Specifies the principal to which the permission is being denied. One of the following:  
  
-   database user  
  
-   database role  
  
-   application role  
  
-   database user mapped to a Windows login  
  
-   database user mapped to a Windows group  
  
-   database user mapped to a certificate  
  
-   database user mapped to an asymmetric key  
  
-   database user not mapped to a server principal.  
  
 CASCADE  
 Indicates that the permission being denied is also denied to other principals to which it has been granted by this principal.  
  
 *denying_principal*  
 Specifies a principal from which the principal executing this query derives its right to deny the permission. One of the following:  
  
-   database user  
  
-   database role  
  
-   application role  
  
-   database user mapped to a Windows login  
  
-   database user mapped to a Windows group  
  
-   database user mapped to a certificate  
  
-   database user mapped to an asymmetric key  
  
-   database user not mapped to a server principal.  
  
## Remarks  
 An assembly is a database-level securable contained by the database that is its parent in the permissions hierarchy. The most specific and limited permissions that can be denied on an assembly are listed below, together with the more general permissions that include them by implication.  
  
|Assembly permission|Implied by assembly permission|Implied by database permission|  
|-------------------------|------------------------------------|------------------------------------|  
|CONTROL|CONTROL|CONTROL|  
|TAKE OWNERSHIP|CONTROL|CONTROL|  
|ALTER|CONTROL|ALTER ANY ASSEMBLY|  
|REFERENCES|CONTROL|REFERENCES|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## Permissions  
 Requires CONTROL permission on the assembly. If using the AS option, the specified principal must own the assembly.  
  
## See Also  
 [DENY &#40;Transact-SQL&#41;](../../t-sql/statements/deny-transact-sql.md)   
 [Permissions &#40;Database Engine&#41;](../../relational-databases/security/permissions-database-engine.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [CREATE CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/create-certificate-transact-sql.md)   
 [CREATE ASYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-asymmetric-key-transact-sql.md)   
 [CREATE APPLICATION ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-application-role-transact-sql.md)   
 [CREATE ASSEMBLY &#40;Transact-SQL&#41;](../../t-sql/statements/create-assembly-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)  
  
  