---
title: "sys.server_principals (Transact-SQL) | Microsoft Docs"
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
  - "server_principals"
  - "sys.server_principals_TSQL"
  - "sys.server_principals"
  - "server_principals_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.server_principals catalog view"
ms.assetid: c5dbe0d8-a1c8-4dc4-b9b1-22af20effd37
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.server_principals (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-xxxx-pdw-md.md)]

  Contains a row for every server-level principal.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Name of the principal. Is unique within a server.|  
|**principal_id**|**int**|ID number of the Principal. Is unique within a server.|  
|**sid**|**varbinary(85)**|SID (Security-IDentifier) of the principal. If Windows principal, then it matches Windows SID.|  
|**type**|**char(1)**|Principal type:<br /><br /> S = SQL login<br /><br /> U = Windows login<br /><br /> G = Windows group<br /><br /> R = Server role<br /><br /> C = Login mapped to a certificate<br /><br /> K = Login mapped to an asymmetric key|  
|**type_desc**|**nvarchar(60)**|Description of the principal type:<br /><br /> SQL_LOGIN<br /><br /> WINDOWS_LOGIN<br /><br /> WINDOWS_GROUP<br /><br /> SERVER_ROLE<br /><br /> CERTIFICATE_MAPPED_LOGIN<br /><br /> ASYMMETRIC_KEY_MAPPED_LOGIN|  
|**is_disabled**|**int**|1 = Login is disabled.|  
|**create_date**|**datetime**|Time at which the principal was created.|  
|**modify_date**|**datetime**|Time at which the principal definition was last modified.|  
|**default_database_name**|**sysname**|Default database for this principal.|  
|**default_language_name**|**sysname**|Default language for this principal.|  
|**credential_id**|**int**|ID of a credential associated with this principal. If no credential is associated with this principal, credential_id will be NULL.|  
|**owning_principal_id**|**int**|The **principal_id** of the owner of a server role. NULL if the principal is not a server role.|  
|**is_fixed_role**|**bit**|Returns 1 if the principal is one of the fixed server roles. For more information, see [Server-Level Roles](../../../relational-databases/security/authentication-access/server-level-roles.md).|  
  
## Permissions  
 Any login can see their own login name, the system logins, and the fixed server roles. To see other logins, requires ALTER ANY LOGIN, or a permission on the login. To see user-defined server roles, requires ALTER ANY SERVER ROLE, or membership in the role.  
  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Examples  
 The following query lists the permissions explicitly granted or denied to server principals.  
  
> [!IMPORTANT]  
>  The permissions of fixed server roles do not appear in sys.server_permissions. Therefore, server principals may have additional permissions not listed here.  
  
```  
SELECT pr.principal_id, pr.name, pr.type_desc,   
    pe.state_desc, pe.permission_name   
FROM sys.server_principals AS pr   
JOIN sys.server_permissions AS pe   
    ON pe.grantee_principal_id = pr.principal_id;  
```  
  
## See Also  
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Principals &#40;Database Engine&#41;](../../../relational-databases/security/authentication-access/principals-database-engine.md)   
 [Permissions Hierarchy &#40;Database Engine&#41;](../../../relational-databases/security/permissions-hierarchy-database-engine.md)  
  
  