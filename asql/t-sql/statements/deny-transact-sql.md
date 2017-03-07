---
title: "DENY (Transact-SQL) | Microsoft Docs"
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
  - "DENY"
  - "DENY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "schema-level securables [SQL Server]"
  - "security [SQL Server], denying access"
  - "DENY statement"
  - "permissions [SQL Server], denying"
  - "server-level securables [SQL Server]"
  - "inherited security settings [SQL Server]"
  - "denying permissions [SQL Server], DENY statement"
  - "principal security [SQL Server]"
  - "database-level securables [SQL Server]"
  - "denying permissions [SQL Server]"
ms.assetid: c32d1e01-9ee9-4665-a516-fcfece58078e
caps.latest.revision: 48
ms.author: "rickbyh"
manager: "jhubbard"
---
# DENY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Denies a permission to a principal. Prevents that principal from inheriting the permission through its group or role memberships.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
-- Simplified syntax for DENY  
DENY { ALL [ PRIVILEGES ] }  
      | permission [ ( column [ ,...n ] ) ] [ ,...n ]  
      [ ON [ class :: ] securable ] TO principal [ ,...n ]   
      [ CASCADE] [ AS principal ]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
DENY   
    <permission> [ ,...n ]  
    [ ON [ <class_type> :: ] securable ]   
    TO principal [ ,...n ]  
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
 ALL  
 This option does not deny all possible permissions. Denying ALL is equivalent to denying the following permissions.  
  
-   If the securable is a database, ALL means BACKUP DATABASE, BACKUP LOG, CREATE DATABASE, CREATE DEFAULT, CREATE FUNCTION, CREATE PROCEDURE, CREATE RULE, CREATE TABLE, and CREATE VIEW.  
  
-   If the securable is a scalar function, ALL means EXECUTE and REFERENCES.  
  
-   If the securable is a table-valued function, ALL means DELETE, INSERT, REFERENCES, SELECT, and UPDATE.  
  
-   If the securable is a stored procedure, ALL means EXECUTE.  
  
-   If the securable is a table, ALL means DELETE, INSERT, REFERENCES, SELECT, and UPDATE.  
  
-   If the securable is a view, ALL means DELETE, INSERT, REFERENCES, SELECT, and UPDATE.  
  
> [!NOTE]  
>  The DENY ALL syntax is deprecated. [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Deny specific permissions instead.  
  
 PRIVILEGES  
 Included for ISO compliance. Does not change the behavior of ALL.  
  
 *permission*  
 Is the name of a permission. The valid mappings of permissions to securables are described in the sub-topics listed below.  
  
 *column*  
 Specifies the name of a column in a table on which permissions are being denied. The parentheses () are required.  
  
 *class*  
 Specifies the class of the securable on which the permission is being denied. The scope qualifier **::** is required.  
  
 *securable*  
 Specifies the securable on which the permission is being denied.  
  
 TO *principal*  
 Is the name of a principal. The principals to which permissions on a securable can be denied vary, depending on the securable. See the securable-specific topics listed below for valid combinations.  
  
 CASCADE  
 Indicates that the permission is denied to the specified principal and to all other principals to which the principal granted the permission. Required when the principal has the permission with GRANT OPTION.  
  
 AS *principal*  
  Use the AS principal clause to indicate that the principal recorded as the denier of the permission should be a principal other than the person executing the statement. For example, presume that user Mary is principal_id 12 and user Raul is principal 15. Mary executes `DENY SELECT ON OBJECT::X TO Steven WITH GRANT OPTION AS Raul;` Now the sys.database_permissions table will indicate that the grantor_prinicpal_id of the deny statement was 15 (Raul) even though the statement was actually executed by user 13 (Mary).
  
The use of AS in this statement does not imply the ability to impersonate another user.  
  
## Remarks  
 The full syntax of the DENY statement is complex. The syntax diagram above was simplified to draw attention to its structure. Complete syntax for denying permissions on specific securables is described in the topics listed below.  
  
 DENY will fail if CASCADE is not specified when denying a permission to a principal that was granted that permission with GRANT OPTION specified.  
  
 The sp_helprotect system stored procedure reports permissions on a database-level securable.  
  
> [!CAUTION]  
>  A table-level DENY does not take precedence over a column-level GRANT. This inconsistency in the permissions hierarchy has been preserved for the sake of backward compatibility. It will be removed in a future release.  
  
> [!CAUTION]  
>  Denying CONTROL permission on a database implicitly denies CONNECT permission on the database. A principal that is denied CONTROL permission on a database will not be able to connect to that database.  
  
> [!CAUTION]  
>  Denying CONTROL SERVER permission implicitly denies CONNECT SQL permission on the server. A principal that is denied CONTROL SERVER permission on a server will not be able to connect to that server.  
  
## Permissions  
 The caller (or the principal specified with the AS option) must have either CONTROL permission on the securable, or a higher permission that implies CONTROL permission on the securable. If using the AS option, the specified principal must own the securable on which a permission is being denied.  
  
 Grantees of CONTROL SERVER permission, such as members of the sysadmin fixed server role, can deny any permission on any securable in the server. Grantees of CONTROL permission on the database, such as members of the db_owner fixed database role, can deny any permission on any securable in the database. Grantees of CONTROL permission on a schema can deny any permission on any object in the schema. If the AS clause is used, the specified principal must own the securable on which permissions are being denied.  
  
## Examples  
 The following table lists the securables and the topics that describe the securable-specific syntax.  
  
|||  
|-|-|  
|Application Role|[DENY Database Principal Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Database%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|Assembly|[DENY Assembly Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Assembly%20Permissions%20\(Transact-SQL\).md)|  
|Asymmetric Key|[DENY Asymmetric Key Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Asymmetric%20Key%20Permissions%20\(Transact-SQL\).md)|  
|Availability Group|[DENY Availability Group Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Availability%20Group%20Permissions%20\(Transact-SQL\).md)|  
|Certificate|[DENY Certificate Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Certificate%20Permissions%20\(Transact-SQL\).md)|  
|Contract|[DENY Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Database|[DENY Database Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Database%20Permissions%20\(Transact-SQL\).md)|  
|Database Scoped Credential|[DENY Database Scoped Credential (Transact-SQL)](DENY%20Database%20Scoped%20Credential%20\(Transact-SQL\).md)|  
|Endpoint|[DENY Endpoint Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Endpoint%20Permissions%20\(Transact-SQL\).md)|  
|Full-Text Catalog|[DENY Full-Text Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Full-Text%20Permissions%20\(Transact-SQL\).md)|  
|Full-Text Stoplist|[DENY Full-Text Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Full-Text%20Permissions%20\(Transact-SQL\).md)|  
|Function|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Login|[DENY Server Principal Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Server%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|Message Type|[DENY Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Object|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Queue|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Remote Service Binding|[DENY Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Role|[DENY Database Principal Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Database%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|Route|[DENY Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Schema|[DENY Schema Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Schema%20Permissions%20\(Transact-SQL\).md)|  
|Search Property List|[DENY Search Property List Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Search%20Property%20List%20Permissions%20\(Transact-SQL\).md)|  
|Server|[DENY Server Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Server%20Permissions%20\(Transact-SQL\).md)|  
|Service|[DENY Service Broker Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Service%20Broker%20Permissions%20\(Transact-SQL\).md)|  
|Stored Procedure|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Symmetric Key|[DENY Symmetric Key Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Symmetric%20Key%20Permissions%20\(Transact-SQL\).md)|  
|Synonym|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|System Objects|[DENY System Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20System%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Table|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|Type|[DENY Type Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Type%20Permissions%20\(Transact-SQL\).md)|  
|User|[DENY Database Principal Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Database%20Principal%20Permissions%20\(Transact-SQL\).md)|  
|View|[DENY Object Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20Object%20Permissions%20\(Transact-SQL\).md)|  
|XML Schema Collection|[DENY XML Schema Collection Permissions &#40;Transact-SQL&#41;](../Topic/DENY%20XML%20Schema%20Collection%20Permissions%20\(Transact-SQL\).md)|  
  
## See Also  
 [REVOKE &#40;Transact-SQL&#41;](../../t-sql/statements/revoke-transact-sql.md)   
 [sp_addlogin &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addlogin-transact-sql.md)   
 [sp_adduser &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-adduser-transact-sql.md)   
 [sp_changedbowner &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-changedbowner-transact-sql.md)   
 [sp_dropuser &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dropuser-transact-sql.md)   
 [sp_helprotect &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helprotect-transact-sql.md)   
 [sp_helpuser &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpuser-transact-sql.md)  
  
  