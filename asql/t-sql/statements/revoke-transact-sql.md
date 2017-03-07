---
title: "REVOKE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "REVOKE_TSQL"
  - "REVOKE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "schema-level securables [SQL Server]"
  - "REVOKE statement, Transact-SQL syntax"
  - "removing permissions"
  - "server-level securables [SQL Server]"
  - "deleting permissions"
  - "revoking permissions [SQL Server]"
  - "REVOKE statement"
  - "denying permissions [SQL Server], removing"
  - "database-level securables [SQL Server]"
  - "granting permissions [SQL Server], removing"
  - "permissions [SQL Server], revoking"
  - "dropping permissions"
ms.assetid: 9d31d3e7-0883-45cd-bf0e-f0361bbb0956
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# REVOKE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Removes a previously granted or denied permission.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
-- Simplified syntax for REVOKE  
REVOKE [ GRANT OPTION FOR ]  
      {   
        [ ALL [ PRIVILEGES ] ]  
        |  
                permission [ ( column [ ,...n ] ) ] [ ,...n ]  
      }  
      [ ON [ class :: ] securable ]   
      { TO | FROM } principal [ ,...n ]   
      [ CASCADE] [ AS principal ]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
REVOKE   
    <permission> [ ,...n ]  
    [ ON [ <class_type> :: ] securable ]   
    [ FROM | TO ] principal [ ,...n ]  
    [ CASCADE ]  
[;]  
  
<permission> ::=  
{ see the tables below }  
  
<class_type> ::=  
{  
      LOGIN  
    | DATABASE  
    | OBJECT  
    | ROLE  
    | SCHEMA  
    | USER  
}  
```  
  
## Arguments  
 GRANT OPTION FOR  
 Indicates that the ability to grant the specified permission will be revoked. This is required when you are using the CASCADE argument.  
  
> [!IMPORTANT]  
>  If the principal has the specified permission without the GRANT option, the permission itself will be revoked.  
  
 ALL  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 This option does not revoke all possible permissions. Revoking ALL is equivalent to revoking the following permissions.  
  
-   If the securable is a database, ALL means BACKUP DATABASE, BACKUP LOG, CREATE DATABASE, CREATE DEFAULT, CREATE FUNCTION, CREATE PROCEDURE, CREATE RULE, CREATE TABLE, and CREATE VIEW.  
  
-   If the securable is a scalar function, ALL means EXECUTE and REFERENCES.  
  
-   If the securable is a table-valued function, ALL means DELETE, INSERT, REFERENCES, SELECT, and UPDATE.  
  
-   If the securable is a stored procedure, ALL means EXECUTE.  
  
-   If the securable is a table, ALL means DELETE, INSERT, REFERENCES, SELECT, and UPDATE.  
  
-   If the securable is a view, ALL means DELETE, INSERT, REFERENCES, SELECT, and UPDATE.  
  
> [!NOTE]  
>  The REVOKE ALL syntax is deprecated. [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Revoke specific permissions instead.  
  
 PRIVILEGES  
 Included for ISO compliance. Does not change the behavior of ALL.  
  
 *permission*  
 Is the name of a permission. The valid mappings of permissions to securables are described in the topics listed in [Securable-specific Syntax](#securable) later in this topic.  
  
 *column*  
 Specifies the name of a column in a table on which permissions are being revoked. The parentheses are required.  
  
 *class*  
 Specifies the class of the securable on which the permission is being revoked. The scope qualifier **::** is required.  
  
 *securable*  
 Specifies the securable on which the permission is being revoked.  
  
 TO | FROM *principal*  
 Is the name of a principal. The principals from which permissions on a securable can be revoked vary, depending on the securable. For more information about valid combinations, see the topics listed in [Securable-specific Syntax](#securable) later in this topic.  
  
 CASCADE  
 Indicates that the permission that is being revoked is also revoked from other principals to which it has been granted by this principal. When you are using the CASCADE argument, you must also include the GRANT OPTION FOR argument.  
  
> [!CAUTION]  
>  A cascaded revocation of a permission granted WITH GRANT OPTION will revoke both GRANT and DENY of that permission.  
  
 AS *principal*  
 Use the AS principal clause to indicate that you are revoking a permission that was granted by a principal other than you. For example, presume that user Mary is principal_id 12 and user Raul is principal 15. Both Mary and Raul grant a user named Steven the same permission. The sys.database_permissions table will indicate the permissions twice but they will each have a different grantor_prinicpal_id value. Mary could revoke the permission using the `AS RAUL` clause to remove Raul's grant of the permission.
 
The use of AS in this statement does not imply the ability to impersonate another user.  
  
## Remarks  
 The full syntax of the REVOKE statement is complex. The syntax diagram above was simplified to draw attention to its structure. Complete syntax for revoking permissions on specific securables is described in the topics listed in [Securable-specific Syntax](#securable) later in this topic.  
  
 The REVOKE statement can be used to remove granted permissions, and the DENY statement can be used to prevent a principal from gaining a specific permission through a GRANT.  
  
 Granting a permission removes DENY or REVOKE of that permission on the specified securable. If the same permission is denied at a higher scope that contains the securable, the DENY takes precedence. However, revoking the granted permission at a higher scope does not take precedence.  
  
> [!CAUTION]  
>  A table-level DENY does not take precedence over a column-level GRANT. This inconsistency in the permissions hierarchy has been preserved for backward compatibility. It will be removed in a future release.  
  
 The sp_helprotect system stored procedure reports permissions on a database-level securable  
  
 The REVOKE statement will fail if CASCADE is not specified when you are revoking a permission from a principal that was granted that permission with GRANT OPTION specified.  
  
## Permissions  
 Principals with CONTROL permission on a securable can revoke permission on that securable. Object owners can revoke permissions on the objects they own.  
  
 Grantees of CONTROL SERVER permission, such as members of the sysadmin fixed server role, can revoke any permission on any securable in the server. Grantees of CONTROL permission on a database, such as members of the db_owner fixed database role, can revoke any permission on any securable in the database. Grantees of CONTROL permission on a schema can revoke any permission on any object within the schema.  
  
##  <a name="securable"></a> Securable-specific Syntax  
 The following table lists the securables and the topics that describe the securable-specific syntax.  
  
|Securable|Topic|  
|---------------|-----------|  
|Application Role|[REVOKE Database Principal Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Database%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|Assembly|[REVOKE Assembly Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Assembly%20Permissions%20\(Transact-SQL\).md)|  
|Asymmetric Key|[REVOKE Asymmetric Key Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Asymmetric%20Key%20Permissions%20\(Transact-SQL\).md)|  
|Availability Group|[REVOKE Availability Group Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Availability%20Group%20Permissions%20\(Transact-SQL\).md)|  
|Certificate|[REVOKE Certificate Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Certificate%20Permissions%20\(Transact-SQL\).md)|  
|Contract|[REVOKE Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Database|[REVOKE Database Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Database%20Permissions%20\(Transact-SQL\).md)|  
|Endpoint|[REVOKE Endpoint Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Endpoint%20Permissions%20\(Transact-SQL\).md)|  
|Database Scoped Credential|[REVOKE Database Scoped Credential (Transact-SQL)](REVOKE%20Database%20Scoped%20Credential%20\(Transact-SQL\).md)|  
|Full-text Catalog|[REVOKE Full-Text Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Full-Text%20Permissions%20\(Transact-SQL\).md)|  
|Full-Text Stoplist|[REVOKE Full-Text Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Full-Text%20Permissions%20\(Transact-SQL\).md)|  
|Function|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Login|[REVOKE Server Principal Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Server%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|Message Type|[REVOKE Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Object|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Queue|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Remote Service Binding|[REVOKE Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Role|[REVOKE Database Principal Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Database%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|Route|[REVOKE Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Schema|[REVOKE Schema Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Schema%20Permissions%20\(Transact-SQL\).md)|  
|Search Property List|[REVOKE Search Property List Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Search%20Property%20List%20Permissions%20\(Transact-SQL\).md)|  
|Server|[REVOKE Server Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Server%20Permissions%20\(Transact-SQL\).md)|  
|Service|[REVOKE Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Stored Procedure|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Symmetric Key|[REVOKE Symmetric Key Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Symmetric%20Key%20Permissions%20\(Transact-SQL\).md)|  
|Synonym|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|System Objects|[REVOKE System Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20System%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Table|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Type|[REVOKE Type Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Type%20Permissions%20\(Transact-SQL\).md)|  
|User|[REVOKE Database Principal Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Database%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|View|[REVOKE Object Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20Object%20Permissions%20\(Transact-SQL\).md)|  
|XML Schema Collection|[REVOKE XML Schema Collection Permissions &#40;Transact-SQL&#41;](../Topic/REVOKE%20XML%20Schema%20Collection%20Permissions%20\(Transact-SQL\).md)|  
  
## See Also  
 [Permissions Hierarchy &#40;Database Engine&#41;](../../relational-databases/security/permissions-hierarchy-database-engine.md)   
 [DENY &#40;Transact-SQL&#41;](../../t-sql/statements/deny-transact-sql.md)   
 [GRANT &#40;Transact-SQL&#41;](../../t-sql/statements/grant-transact-sql.md)   
 [sp_addlogin &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addlogin-transact-sql.md)   
 [sp_adduser &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-adduser-transact-sql.md)   
 [sp_changedbowner &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-changedbowner-transact-sql.md)   
 [sp_dropuser &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dropuser-transact-sql.md)   
 [sp_helprotect &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helprotect-transact-sql.md)   
 [sp_helpuser &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpuser-transact-sql.md)  
  
  