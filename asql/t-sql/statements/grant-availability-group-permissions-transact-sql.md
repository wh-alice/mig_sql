---
title: "GRANT Availability Group Permissions (Transact-SQL) | Microsoft Docs"
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
  - "Availability Groups [SQL Server], permissions"
  - "GRANT statement, availability groups"
  - "granting permissions, [SQL Server], availability groups"
  - "permissions [SQL Server], availability group"
ms.assetid: 060eb839-666a-4046-9e1d-5edc9ea75a11
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# GRANT Availability Group Permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Grants permissions on an Always On availability group.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
GRANT permission  [ ,...n ] ON AVAILABILITY GROUP :: availability_group_name  
        TO < server_principal >  [ ,...n ]  
    [ WITH GRANT OPTION ]  
    [ AS SQL_Server_login ]   
  
<server_principal> ::=   
        SQL_Server_login  
    | SQL_Server_login_from_Windows_login   
    | SQL_Server_login_from_certificate   
    | SQL_Server_login_from_AsymKey  
```  
  
## Arguments  
 *permission*  
 Specifies a permission that can be granted on an availability group. For a list of the permissions, see the Remarks section later in this topic.  
  
 ON AVAILABILITY GROUP **::***availability_group_name*  
 Specifies the availability group on which the permission is being granted. The scope qualifier (**::**) is required.  
  
 TO <server_principal>  
 Specifies the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login to which the permission is being granted.  
  
 *SQL_Server_login*  
 Specifies the name of a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login.  
  
 *SQL_Server_login_from_Windows_login*  
 Specifies the name of a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login created from a Windows login.  
  
 *SQL_Server_login_from_certificate*  
 Specifies the name of a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login mapped to a certificate.  
  
 *SQL_Server_login_from_AsymKey*  
 Specifies the name of a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login mapped to an asymmetric key.  
  
 WITH GRANT OPTION  
 Indicates that the principal will also be given the ability to grant the specified permission to other principals.  
  
 AS *SQL_Server_login*  
 Specifies the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login from which the principal executing this query derives its right to grant the permission.  
  
## Remarks  
 Permissions at the server scope can be granted only when the current database is **master**.  
  
 Information about availability groups is visible in the [sys.availability_groups &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.availability-groups-transact-sql.md) catalog view. Information about server permissions is visible in the [sys.server_permissions](../../relational-databases/reference/system-catalog-views/sys.server-permissions-transact-sql.md) catalog view, and information about server principals is visible in the [sys.server_principals](../../relational-databases/reference/system-catalog-views/sys.server-principals-transact-sql.md) catalog view.  
  
 An availability group is a server-level securable. The most specific and limited permissions that can be granted on an availability group are listed in the following table, together with the more general permissions that include them by implication.  
  
|Availability group permission|Implied by availability group permission|Implied by server permission|  
|-----------------------------------|----------------------------------------------|----------------------------------|  
|ALTER|CONTROL|ALTER ANY AVAILABILITY GROUP|  
|CONNECT|CONTROL|CONTROL SERVER|  
|CONTROL|CONTROL|CONTROL SERVER|  
|TAKE OWNERSHIP|CONTROL|CONTROL SERVER|  
|VIEW DEFINITION|CONTROL|VIEW ANY DEFINITION|  
  
 For a chart of all [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] permissions, see [Database Engine Permission Poster](http://go.microsoft.com/fwlink/?LinkId=229142).  
  
## Permissions  
 Requires CONTROL permission on the availability group or ALTER ANY AVAILABILTIY GROUP permission on the server.  
  
## Examples  
  
### A. Granting VIEW DEFINITION permission on an availability group  
 The following example grants `VIEW DEFINITION` permission on availability group `MyAg` to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login `ZArifin`.  
  
```  
USE master;  
GRANT VIEW DEFINITION ON AVAILABILITY GROUP::MyAg TO ZArifin;  
GO  
```  
  
### B. Granting TAKE OWNERSHIP permission with the GRANT OPTION  
 The following example grants `TAKE OWNERSHIP` permission on availability group `MyAg` to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] user `PKomosinski` with the `GRANT OPTION`.  
  
```  
USE master;  
GRANT TAKE OWNERSHIP ON AVAILABILITY GROUP::MyAg TO PKomosinski   
    WITH GRANT OPTION;  
GO  
```  
  
### C. Granting CONTROL permission on an availability group  
 The following example grants `CONTROL` permission on availability group `MyAg` to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] user `PKomosinski`. CONTROL allows the login complete control of the availability group, even though they are not the owner of the availability group. To change the ownership, see [ALTER AUTHORIZATION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-authorization-transact-sql.md).  
  
```  
USE master;  
GRANT CONTROL ON AVAILABILITY GROUP::MyAg TO PKomosinski;  
GO  
```  
  
## See Also  
 [REVOKE Availability Group Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/revoke-availability-group-permissions-transact-sql.md)   
 [DENY Availability Group Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/deny-availability-group-permissions-transact-sql.md)   
 [CREATE AVAILABILITY GROUP &#40;Transact-SQL&#41;](../../t-sql/statements/create-availability-group-transact-sql.md)   
 [sys.availability_groups &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.availability-groups-transact-sql.md)   
 [AlwaysOn Availability Groups Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/always-on-availability-groups-catalog-views-transact-sql.md)
 [Permissions &#40;Database Engine&#41;](../../relational-databases/security/permissions-database-engine.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)  
  
  