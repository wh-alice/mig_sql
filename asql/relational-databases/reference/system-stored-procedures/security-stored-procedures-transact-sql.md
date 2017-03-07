---
title: "Security Stored Procedures (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server (starting with 2008)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "system stored procedures [SQL Server], security"
  - "stored procedures [SQL Server], security"
  - "security [SQL Server], stored procedures"
ms.assetid: 62b72907-7e95-4c97-9891-0c45d5b678ce
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# Security Stored Procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] supports the following system stored procedures that are used to manage security. Some of these stored procedures are deprecated but continue to be available to support backward compatibility. The topics for deprecated procedures will list their replacement.  

|||  
|-|-|  
|[sp_addapprole](../../../relational-databases/reference/system-stored-procedures/sp-addapprole-transact-sql.md) (Deprecated)|[sp_addlinkedserver](../../../relational-databases/reference/system-stored-procedures/sp-addlinkedserver-transact-sql.md) |
|[sp_addlinkedsrvlogin](../../../relational-databases/reference/system-stored-procedures/sp-addlinkedsrvlogin-transact-sql.md)|[sp_addlogin](../../../relational-databases/reference/system-stored-procedures/sp-addlogin-transact-sql.md) (Deprecated) |
|[sp_addremotelogin](../../../relational-databases/reference/system-stored-procedures/sp-addremotelogin-transact-sql.md) (Deprecated)|[sp_addrole](../../../relational-databases/reference/system-stored-procedures/sp-addrole-transact-sql.md) (Deprecated) |
|[sp_addrolemember](../../../relational-databases/reference/system-stored-procedures/sp-addrolemember-transact-sql.md) (Deprecated)|[sp_addserver](../../../relational-databases/reference/system-stored-procedures/sp-addserver-transact-sql.md) (Deprecated) |
|[sp_addsrvrolemember](../../../relational-databases/reference/system-stored-procedures/sp-addsrvrolemember-transact-sql.md) (Deprecated)|[sp_adduser](../../../relational-databases/reference/system-stored-procedures/sp-adduser-transact-sql.md) (Deprecated) |
|[sp_approlepassword](../../../relational-databases/reference/system-stored-procedures/sp-approlepassword-transact-sql.md) (Deprecated)|[sp_audit_write](../../../relational-databases/reference/system-stored-procedures/sp-audit-write-transact-sql.md) |
|[sp_change_users_login](../../../relational-databases/reference/system-stored-procedures/sp-change-users-login-transact-sql.md)|[sp_changedbowner](../../../relational-databases/reference/system-stored-procedures/sp-changedbowner-transact-sql.md) |
|[sp_changeobjectowner](../../../relational-databases/reference/system-stored-procedures/sp-changeobjectowner-transact-sql.md) (Deprecated)|[sp_control_dbmasterkey_password](../../../relational-databases/reference/system-stored-procedures/sp-control-dbmasterkey-password-transact-sql.md) |
|[sp_dbfixedrolepermission](../../../relational-databases/reference/system-stored-procedures/sp-dbfixedrolepermission-transact-sql.md) (Deprecated)|[sp_defaultdb](../../../relational-databases/reference/system-stored-procedures/sp-defaultdb-transact-sql.md) (Deprecated) |
|[sp_defaultlanguage](../../../relational-databases/reference/system-stored-procedures/sp-defaultlanguage-transact-sql.md) (Deprecated)|[sp_denylogin](../../../relational-databases/reference/system-stored-procedures/sp-denylogin-transact-sql.md) (Deprecated) |
|[sp_describe_parameter_encryption](../../../relational-databases/reference/system-stored-procedures/sp-describe-parameter-encryption-transact-sql.md)|[sp_dropalias](../../../relational-databases/reference/system-stored-procedures/sp-dropalias-transact-sql.md) (Deprecated) |
|[sp_dropapprole](../../../relational-databases/reference/system-stored-procedures/sp-dropapprole-transact-sql.md) (Deprecated) |[sp_droplinkedsrvlogin](../../../relational-databases/reference/system-stored-procedures/sp-droplinkedsrvlogin-transact-sql.md) |
|[sp_droplogin](../../../relational-databases/reference/system-stored-procedures/sp-droplogin-transact-sql.md) (Deprecated) |[sp_dropremotelogin](../../../relational-databases/reference/system-stored-procedures/sp-dropremotelogin-transact-sql.md) (Deprecated) |
|[sp_droprole](../../../relational-databases/reference/system-stored-procedures/sp-droprole-transact-sql.md) (Deprecated) |[sp_droprolemember](../../../relational-databases/reference/system-stored-procedures/sp-droprolemember-transact-sql.md) (Deprecated) |
|[sp_dropserver](../../../relational-databases/reference/system-stored-procedures/sp-dropserver-transact-sql.md) |[sp_dropsrvrolemember](../../../relational-databases/reference/system-stored-procedures/sp-dropsrvrolemember-transact-sql.md) (Deprecated) |
|[sp_dropuser](../../../relational-databases/reference/system-stored-procedures/sp-dropuser-transact-sql.md) (Deprecated) |[sp_grantdbaccess](../../../relational-databases/reference/system-stored-procedures/sp-grantdbaccess-transact-sql.md) (Deprecated) |
|[sp_grantlogin](../../../relational-databases/reference/system-stored-procedures/sp-grantlogin-transact-sql.md) (Deprecated) |[sp_helpdbfixedrole](../../../relational-databases/reference/system-stored-procedures/sp-helpdbfixedrole-transact-sql.md) |
|[sp_helplinkedsrvlogin](../../../relational-databases/reference/system-stored-procedures/sp-helplinkedsrvlogin-transact-sql.md) |[sp_helplogins](../../../relational-databases/reference/system-stored-procedures/sp-helplogins-transact-sql.md) |
|[sp_helpntgroup](../../../relational-databases/reference/system-stored-procedures/sp-helpntgroup-transact-sql.md) |[sp_helpremotelogin](../../../relational-databases/reference/system-stored-procedures/sp-helpremotelogin-transact-sql.md) (Deprecated) |
|[sp_helprole](../../../relational-databases/reference/system-stored-procedures/sp-helprole-transact-sql.md) |[sp_helprolemember](../../../relational-databases/reference/system-stored-procedures/sp-helprolemember-transact-sql.md) |
|[sp_helprotect](../../../relational-databases/reference/system-stored-procedures/sp-helprotect-transact-sql.md) (Deprecated) |[sp_helpsrvrole](../../../relational-databases/reference/system-stored-procedures/sp-helpsrvrole-transact-sql.md) |
|[sp_helpsrvrolemember](../../../relational-databases/reference/system-stored-procedures/sp-helpsrvrolemember-transact-sql.md) |[sp_helpuser](../../../relational-databases/reference/system-stored-procedures/sp-helpuser-transact-sql.md) (Deprecated) |
|[sp_migrate_user_to_contained](../../../relational-databases/reference/system-stored-procedures/sp-migrate-user-to-contained-transact-sql.md)|[sp_MShasdbaccess](../../../relational-databases/reference/system-stored-procedures/sp-mshasdbaccess-transact-sql.md) |
|[sp_password](../../../relational-databases/reference/system-stored-procedures/sp-password-transact-sql.md) (Deprecated)|[sp_refresh_parameter_encryption](../../../relational-databases/reference/system-stored-procedures/sp-refresh-parameter-encryption-transact-sql.md) |
|[sp_remoteoption](../../../relational-databases/reference/system-stored-procedures/sp-remoteoption-transact-sql.md) (Deprecated)|[sp_revokedbaccess](../../../relational-databases/reference/system-stored-procedures/sp-revokedbaccess-transact-sql.md) (Deprecated) |
|[sp_revokelogin](../../../relational-databases/reference/system-stored-procedures/sp-revokelogin-transact-sql.md) (Deprecated)|[sp_setapprole](../../../relational-databases/reference/system-stored-procedures/sp-setapprole-transact-sql.md) |
|[sp_srvrolepermission](../../../relational-databases/reference/system-stored-procedures/sp-srvrolepermission-transact-sql.md) (Deprecated)|[sp_testlinkedserver](../../../relational-databases/reference/system-stored-procedures/sp-testlinkedserver-transact-sql.md) |
|[sp_unsetapprole](../../../relational-databases/reference/system-stored-procedures/sp-unsetapprole-transact-sql.md) |[sp_validatelogins](../../../relational-databases/reference/system-stored-procedures/sp-validatelogins-transact-sql.md) |
|[sp_xp_cmdshell_proxy_account](../../../relational-databases/reference/system-stored-procedures/sp-xp-cmdshell-proxy-account-transact-sql.md) | |

 
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Security Functions &#40;Transact-SQL&#41;](../../../t-sql/functions/security-functions-transact-sql.md)  
  
  