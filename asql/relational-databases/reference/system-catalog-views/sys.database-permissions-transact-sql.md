---
title: "sys.database_permissions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "database_permissions"
  - "sys.database_permissions_TSQL"
  - "database_permissions_TSQL"
  - "sys.database_permissions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.database_permissions catalog view"
ms.assetid: c1e261f8-6cb0-4759-b5f1-5ec233602655
caps.latest.revision: 49
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.database_permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a row for every permission or column-exception permission in the database. For columns, there is a row for every permission that is different from the corresponding object-level permission. If the column permission is the same as the corresponding object permission, there will be no row for it and the actual permission used will be that of the object.  
  
> [!IMPORTANT]  
>  Column-level permissions override object-level permissions on the same entity.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**class**|**tinyint**|Identifies class on which permission exists.<br /><br /> 0 = Database<br />1 = Object or Column<br />3 = Schema<br />4 = Database Principal<br />5 = Assembly - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />6 = Type<br />10 = XML Schema Collection - <br />                      **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />15 = Message Type - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />16 = Service Contract - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />17 = Service - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />18 = Remote Service Binding - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />19 = Route - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />23 =Full-Text Catalog - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />24 = Symmetric Key - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />25 = Certificate - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br />26 = Asymmetric Key - **Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].|  
|**class_desc**|**nvarchar(60)**|Description of class on which permission exists.<br /><br /> DATABASE<br /><br /> OBJECT_OR_COLUMN<br /><br /> SCHEMA<br /><br /> DATABASE_PRINCIPAL<br /><br /> ASSEMBLY<br /><br /> TYPE<br /><br /> XML_SCHEMA_COLLECTION<br /><br /> MESSAGE_TYPE<br /><br /> SERVICE_CONTRACT<br /><br /> SERVICE<br /><br /> REMOTE_SERVICE_BINDING<br /><br /> ROUTE<br /><br /> FULLTEXT_CATALOG<br /><br /> SYMMETRIC_KEYS<br /><br /> CERTIFICATE<br /><br /> ASYMMETRIC_KEY|  
|**major_id**|**int**|ID of thing on which permission exists, interpreted according to class. For most, this is simply the kind of ID that applies to what the class represents. Interpretation for nonstandard is as follows:<br /><br /> 0 = Always 0<br /><br /> 1 = Object-ID<br /><br /> Negative IDs are assigned to system objects.|  
|**minor_id**|**int**|Secondary-ID of thing on which permission exists, interpreted according to class. For most, this is zero. Otherwise, it is the following:<br /><br /> 1 = Column-ID if a column. Otherwise, it is 0 if an object.|  
|**grantee_principal_id**|**int**|Database principal ID to which the permissions are granted.|  
|**grantor_principal_id**|**int**|Database principal ID of the grantor of these permissions.|  
|**type**|**char(4)**|Database permission type. For a list of permission types, see the next table.|  
|**permission_name**|**nvarchar(128)**|Permission name.|  
|**state**|**char(1)**|Permission state:<br /><br /> D = Deny<br /><br /> R = Revoke<br /><br /> G = Grant<br /><br /> W = Grant With Grant Option|  
|**state_desc**|**nvarchar(60)**|Description of permission state:<br /><br /> DENY<br /><br /> REVOKE<br /><br /> GRANT<br /><br /> GRANT_WITH_GRANT_OPTION|  
  
|Permission type|Permission name|Applies to securable|  
|---------------------|---------------------|--------------------------|  
|AL|ALTER|APPLICATION ROLE, ASSEMBLY, ASYMMETRIC KEY, CERTIFICATE, CONTRACT, DATABASE, FULLTEXT CATALOG, MESSAGE TYPE, OBJECT, REMOTE SERVICE BINDING, ROLE, ROUTE, SCHEMA, SERVICE, SYMMETRIC KEY, USER, XML SCHEMA COLLECTION|  
|ALAK|ALTER ANY ASYMMETRIC KEY|DATABASE|  
|ALAR|ALTER ANY APPLICATION ROLE|DATABASE|  
|ALAS|ALTER ANY ASSEMBLY|DATABASE|  
|ALCF|ALTER ANY CERTIFICATE|DATABASE|  
|ALDS|ALTER ANY DATASPACE|DATABASE|  
|ALED|ALTER ANY DATABASE EVENT NOTIFICATION|DATABASE|  
|ALFT|ALTER ANY FULLTEXT CATALOG|DATABASE|  
|ALMT|ALTER ANY MESSAGE TYPE|DATABASE|  
|ALRL|ALTER ANY ROLE|DATABASE|  
|ALRT|ALTER ANY ROUTE|DATABASE|  
|ALSB|ALTER ANY REMOTE SERVICE BINDING|DATABASE|  
|ALSC|ALTER ANY CONTRACT|DATABASE|  
|ALSK|ALTER ANY SYMMETRIC KEY|DATABASE|  
|ALSM|ALTER ANY SCHEMA|DATABASE|  
|ALSV|ALTER ANY SERVICE|DATABASE|  
|ALTG|ALTER ANY DATABASE DDL TRIGGER|DATABASE|  
|ALUS|ALTER ANY USER|DATABASE|  
|AUTH|AUTHENTICATE|DATABASE|  
|BADB|BACKUP DATABASE|DATABASE|  
|BALO|BACKUP LOG|DATABASE|  
|CL|CONTROL|APPLICATION ROLE, ASSEMBLY, ASYMMETRIC KEY, CERTIFICATE, CONTRACT, DATABASE, FULLTEXT CATALOG, MESSAGE TYPE, OBJECT, REMOTE SERVICE BINDING, ROLE, ROUTE, SCHEMA, SERVICE, SYMMETRIC KEY, TYPE, USER, XML SCHEMA COLLECTION|  
|CO|CONNECT|DATABASE|  
|CORP|CONNECT REPLICATION|DATABASE|  
|CP|CHECKPOINT|DATABASE|  
|CRAG|CREATE AGGREGATE|DATABASE|  
|CRAK|CREATE ASYMMETRIC KEY|DATABASE|  
|CRAS|CREATE ASSEMBLY|DATABASE|  
|CRCF|CREATE CERTIFICATE|DATABASE|  
|CRDB|CREATE DATABASE|DATABASE|  
|CRDF|CREATE DEFAULT|DATABASE|  
|CRED|CREATE DATABASE DDL EVENT NOTIFICATION|DATABASE|  
|CRFN|CREATE FUNCTION|DATABASE|  
|CRFT|CREATE FULLTEXT CATALOG|DATABASE|  
|CRMT|CREATE MESSAGE TYPE|DATABASE|  
|CRPR|CREATE PROCEDURE|DATABASE|  
|CRQU|CREATE QUEUE|DATABASE|  
|CRRL|CREATE ROLE|DATABASE|  
|CRRT|CREATE ROUTE|DATABASE|  
|CRRU|CREATE RULE|DATABASE|  
|CRSB|CREATE REMOTE SERVICE BINDING|DATABASE|  
|CRSC|CREATE CONTRACT|DATABASE|  
|CRSK|CREATE SYMMETRIC KEY|DATABASE|  
|CRSM|CREATE SCHEMA|DATABASE|  
|CRSN|CREATE SYNONYM|DATABASE|  
|CRSO|**Applies to**: [!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> CREATE SEQUENCE|DATABASE|  
|CRSV|CREATE SERVICE|DATABASE|  
|CRTB|CREATE TABLE|DATABASE|  
|CRTY|CREATE TYPE|DATABASE|  
|CRVW|CREATE VIEW|DATABASE|  
|CRXS|**Applies to**: [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> CREATE XML SCHEMA COLLECTION|DATABASE|  
|DL|DELETE|DATABASE, OBJECT, SCHEMA|  
|EX|EXECUTE|ASSEMBLY, DATABASE, OBJECT, SCHEMA, TYPE, XML SCHEMA COLLECTION|  
|IM|IMPERSONATE|USER|  
|IN|INSERT|DATABASE, OBJECT, SCHEMA|  
|RC|RECEIVE|OBJECT|  
|RF|REFERENCES|ASSEMBLY, ASYMMETRIC KEY, CERTIFICATE, CONTRACT, DATABASE, FULLTEXT CATALOG, MESSAGE TYPE, OBJECT, SCHEMA, SYMMETRIC KEY, TYPE, XML SCHEMA COLLECTION|  
|SL|SELECT|DATABASE, OBJECT, SCHEMA|  
|SN|SEND|SERVICE|  
|SPLN|SHOWPLAN|DATABASE|  
|SUQN|SUBSCRIBE QUERY NOTIFICATIONS|DATABASE|  
|TO|TAKE OWNERSHIP|ASSEMBLY, ASYMMETRIC KEY, CERTIFICATE, CONTRACT, DATABASE, FULLTEXT CATALOG, MESSAGE TYPE, OBJECT, REMOTE SERVICE BINDING, ROLE, ROUTE, SCHEMA, SERVICE, SYMMETRIC KEY, TYPE, XML SCHEMA COLLECTION|  
|UP|UPDATE|DATABASE, OBJECT, SCHEMA|  
|VW|VIEW DEFINITION|APPLICATION ROLE, ASSEMBLY, ASYMMETRIC KEY, CERTIFICATE, CONTRACT, DATABASE, FULLTEXT CATALOG, MESSAGE TYPE, OBJECT, REMOTE SERVICE BINDING, ROLE, ROUTE, SCHEMA, SERVICE, SYMMETRIC KEY, TYPE, USER, XML SCHEMA COLLECTION|  
|VWCT|VIEW CHANGE TRACKING|TABLE, SCHEMA|  
|VWDS|VIEW DATABASE STATE|DATABASE|  
  
## Permissions  
 Any user can see their own permissions. To see permissions for other users, requires VIEW DEFINITION, ALTER ANY USER, or any permission on a user. To see user-defined roles, requires ALTER ANY ROLE, or membership in the role (such as public).  
  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Examples  
  
### A: Listing all the permissions of database principals  
 The following query lists the permissions explicitly granted or denied to database principals.  
  
> [!IMPORTANT]  
>  The permissions of fixed database roles do not appear in sys.database_permissions. Therefore, database principals may have additional permissions not listed here.  
  
```  
SELECT pr.principal_id, pr.name, pr.type_desc,   
    pr.authentication_type_desc, pe.state_desc, pe.permission_name  
FROM sys.database_principals AS pr  
JOIN sys.database_permissions AS pe  
    ON pe.grantee_principal_id = pr.principal_id;  
```  
  
### B: Listing permissions on schema objects within a database  
 The following query joins sys.database_principals and sys.database_permissions to sys.objects and sys.schemas to list permissions granted or denied to specific schema objects.  
  
```  
SELECT pr.principal_id, pr.name, pr.type_desc,   
    pr.authentication_type_desc, pe.state_desc,   
    pe.permission_name, s.name + '.' + o.name AS ObjectName  
FROM sys.database_principals AS pr  
JOIN sys.database_permissions AS pe  
    ON pe.grantee_principal_id = pr.principal_id  
JOIN sys.objects AS o  
    ON pe.major_id = o.object_id  
JOIN sys.schemas AS s  
    ON o.schema_id = s.schema_id;  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../../a9notintoc/includes/sspdw-md.md)]  
  
### C: Listing all the permissions of database principals  
 The following query lists the permissions explicitly granted or denied to database principals.  
  
> [!IMPORTANT]  
>  The permissions of fixed database roles do not appear in sys.database_permissions. Therefore, database principals may have additional permissions not listed here.  
  
```  
SELECT pr.principal_id, pr.name, pr.type_desc,   
    pr.authentication_type_desc, pe.state_desc, pe.permission_name  
FROM sys.database_principals AS pr  
JOIN sys.database_permissions AS pe  
    ON pe.grantee_principal_id = pr.principal_id;  
```  
  
### D: Listing permissions on schema objects within a database  
 The following query joins sys.database_principals and sys.database_permissions to sys.objects and sys.schemas to list permissions granted or denied to specific schema objects.  
  
```  
SELECT pr.principal_id, pr.name, pr.type_desc,   
    pr.authentication_type_desc, pe.state_desc,   
    pe.permission_name, s.name + '.' + o.name AS ObjectName  
FROM sys.database_principals AS pr  
JOIN sys.database_permissions AS pe  
    ON pe.grantee_principal_id = pr.principal_id  
JOIN sys.objects AS o  
    ON pe.major_id = o.object_id  
JOIN sys.schemas AS s  
    ON o.schema_id = s.schema_id;  
```  
  
## See Also  
 [Securables](../../../relational-databases/security/securables.md)   
 [Permissions Hierarchy &#40;Database Engine&#41;](../../../relational-databases/security/permissions-hierarchy-database-engine.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)  
  
  

