---
title: "DENY Full-Text Permissions (Transact-SQL) | Microsoft Docs"
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
  - "full-text search [SQL Server], permissions"
  - "denying permissions [SQL Server], fulll-text"
  - "full-text catalogs [SQL Server], permissions"
  - "full-text stoplist [SQL Server], permissions"
  - "DENY statement, full-text permissions"
ms.assetid: d86e9a1d-0938-4ec2-a169-2d0564f3642e
caps.latest.revision: 26
ms.author: "douglasl"
manager: "jhubbard"
---
# DENY Full-Text Permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Denies permissions on a full-text catalog and full-text stoplists.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
DENY permission [ ,...n ] ON  
    FULLTEXT   
        {  
           CATALOG :: full-text_catalog_name  
           |  
           STOPLIST :: full-text_stoplist_name  
        }  
    TO database_principal [ ,...n ] [ CASCADE ]  
        [ AS denying_principal ]  
```  
  
## Arguments  
 *permission*  
 Is the name of a permission. The valid mappings of permissions to securables are described in the "Remarks" section, later in this topic.  
  
 ON FULLTEXT CATALOG **::***full-text_catalog_name*  
 Specifies the full-text catalog on which the permission is being denied. The scope qualifier **::** is required.  
  
 ON FULLTEXT STOPLIST **::***full-text_stoplist_name*  
 Specifies the full-text stoplist on which the permission is being denied. The scope qualifier **::** is required.  
  
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
  
## FULLTEXT CATALOG Permissions  
 A full-text catalog is a database-level securable contained by the database that is its parent in the permissions hierarchy. The most specific and limited permissions that can be denied on a full-text catalog are listed in the following table, together with the more general permissions that include them by implication.  
  
|Full-text catalog permission|Implied by full-text catalog permission|Implied by database permission|  
|-----------------------------------|----------------------------------------------|------------------------------------|  
|CONTROL|CONTROL|CONTROL|  
|TAKE OWNERSHIP|CONTROL|CONTROL|  
|ALTER|CONTROL|ALTER ANY FULLTEXT CATALOG|  
|REFERENCES|CONTROL|REFERENCES|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## FULLTEXT STOPLIST Permissions  
 A full-text stoplist is a database-level securable contained by the database that is its parent in the permissions hierarchy. The most specific and limited permissions that can be denied on a full-text stoplist are listed in the following table, together with the more general permissions that include them by implication.  
  
|Full-text stoplist permission|Implied by full-text stoplist permission|Implied by database permission|  
|------------------------------------|-----------------------------------------------|------------------------------------|  
|ALTER|CONTROL|ALTER ANY FULLTEXT CATALOG|  
|CONTROL|CONTROL|CONTROL|  
|REFERENCES|CONTROL|REFERENCES|  
|TAKE OWNERSHIP|CONTROL|CONTROL|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## Permissions  
 Requires CONTROL permission on the full-text catalog. If using the AS option, the specified principal must own the full-text catalog.  
  
## See Also  
 [CREATE APPLICATION ROLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-application-role-transact-sql.md)   
 [CREATE ASYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-asymmetric-key-transact-sql.md)   
 [CREATE CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/create-certificate-transact-sql.md)   
 [CREATE FULLTEXT CATALOG &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-catalog-transact-sql.md)   
 [CREATE FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-stoplist-transact-sql.md)   
 [DENY &#40;Transact-SQL&#41;](../../t-sql/statements/deny-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)   
 [sys.fn_my_permissions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/sys.fn-my-permissions-transact-sql.md)   
 [GRANT Full-Text Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/grant-full-text-permissions-transact-sql.md)   
 [HAS_PERMS_BY_NAME &#40;Transact-SQL&#41;](../../t-sql/functions/has-perms-by-name-transact-sql.md)   
 [Permissions &#40;Database Engine&#41;](../../relational-databases/security/permissions-database-engine.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [sys.fn_builtin_permissions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/sys.fn-builtin-permissions-transact-sql.md)   
 [sys.fulltext_catalogs &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-catalogs-transact-sql.md)   
 [sys.fulltext_stoplists &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-stoplists-transact-sql.md)  
  
  