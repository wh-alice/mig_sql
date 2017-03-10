---
title: "DENY XML Schema Collection Permissions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-11-25"
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
  - "denying permissions [SQL Server], XML schema collections"
  - "XML schema collections [SQL Server], permissions"
  - "DENY statement, XML schema collections"
  - "schema collections [SQL Server], permissions"
ms.assetid: 159969a7-8313-41bc-bb19-c55af76597e6
caps.latest.revision: 22
ms.author: "douglasl"
manager: "jhubbard"
---
# DENY XML Schema Collection Permissions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Denies permissions on an XML schema collection.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
DENY permission  [ ,...n ] ON   
    XML SCHEMA COLLECTION :: [ schema_name . ]  
    XML_schema_collection_name  
    TO <database_principal> [ ,...n ]  
        [ CASCADE ]  
    [ AS <database_principal> ]   
  
<database_principal> ::=   
        Database_user   
    | Database_role   
    | Application_role   
    | Database_user_mapped_to_Windows_User   
    | Database_user_mapped_to_Windows_Group   
    | Database_user_mapped_to_certificate   
    | Database_user_mapped_to_asymmetric_key   
    | Database_user_with_no_login  
```  
  
## Arguments  
 *permission*  
 Specifies a permission that can be denied on an XML schema collection. For a list of the permissions, see the Remarks section later in this topic.  
  
 ON XML SCHEMA COLLECTION :: [ *schema_name***.** ] *XML_schema_collection_name*  
 Specifies the XML schema collection on which the permission is being denied. The scope qualifier (::) is required. If *schema_name* is not specified, the default schema will be used. If *schema_name* is specified, the schema scope qualifier (.) is required.  
  
 TO <database_principal>  
 Specifies the principal to which the permission is being denied.  
  
 CASCADE  
 Indicates that the permission being denied is also denied to other principals to which it has been granted by this principal.  
  
 AS <database_principal>  
 Specifies a principal from which the principal executing this query derives its right to deny the permission.  
  
 *Database_user*  
 Specifies a database user.  
  
 *Database_role*  
 Specifies a database role.  
  
 *Application_role*  
 Specifies an application role.  
  
 *Database_user_mapped_to_Windows_User*  
 Specifies a database user mapped to a Windows user.  
  
 *Database_user_mapped_to_Windows_Group*  
 Specifies a database user mapped to a Windows group.  
  
 *Database_user_mapped_to_certificate*  
 Specifies a database user mapped to a certificate.  
  
 *Database_user_mapped_to_asymmetric_key*  
 Specifies a database user mapped to an asymmetric key.  
  
 *Database_user_with_no_login*  
 Specifies a database user with no corresponding server-level principal.  
  
## Remarks  
 Information about XML schema collections is visible in the [sys.xml_schema_collections](../../relational-databases/reference/system-catalog-views/sys.xml-schema-collections-transact-sql.md) catalog view.  
  
 An XML schema collection is a schema-level securable contained by the schema that is its parent in the permissions hierarchy. The most specific and limited permissions that can be denied on an XML schema collection are listed in the following table, together with the more general permissions that include them by implication.  
  
|XML schema collection permission|Implied by XML schema collection permission|Implied by schema permission|  
|--------------------------------------|-------------------------------------------------|----------------------------------|  
|ALTER|CONTROL|ALTER|  
|CONTROL|CONTROL|CONTROL|  
|EXECUTE|CONTROL|EXECUTE|  
|REFERENCES|CONTROL|REFERENCES|  
|TAKE OWNERSHIP|CONTROL|CONTROL|  
|VIEW DEFINITION|CONTROL|VIEW DEFINITION|  
  
## Permissions  
 Requires CONTROL on the XML schema collection. If you use the AS option, the specified principal must own the XML schema collection.  
  
## Examples  
 The following example denies `EXECUTE` permission on the XML schema collection `Invoices4` to the user `Wanida`. The XML schema collection `Invoices4` is located inside the `Sales` schema of the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
DENY EXECUTE ON XML SCHEMA COLLECTION::Sales.Invoices4 TO Wanida;  
GO  
```  
  
## See Also  
 [GRANT XML Schema Collection Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/grant-xml-schema-collection-permissions-transact-sql.md)   
 [REVOKE XML Schema Collection Permissions &#40;Transact-SQL&#41;](../../t-sql/statements/revoke-xml-schema-collection-permissions-transact-sql.md)   
 [sys.xml_schema_collections &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.xml-schema-collections-transact-sql.md)   
 [CREATE XML SCHEMA COLLECTION &#40;Transact-SQL&#41;](../../t-sql/statements/create-xml-schema-collection-transact-sql.md)   
 [Permissions &#40;Database Engine&#41;](../../relational-databases/security/permissions-database-engine.md)   
 [Principals &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/principals-database-engine.md)  
  
  