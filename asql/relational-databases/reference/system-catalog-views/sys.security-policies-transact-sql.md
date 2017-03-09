---
title: "sys.security_policies (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "SYS.SECURITY_POLICIES_TSQL"
  - "SECURITY_POLICIES_TSQL"
  - "SYS.SECURITY_POLICIES"
  - "SECURITY_POLICIES"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.security_policies catalog view"
  - "security_policies catalog view"
ms.assetid: 35362f5b-e601-4049-9e1d-c5307e823831
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.security_policies (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Returns a row for each security policy in the database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|name|**sysname**|Name of the security policy, unique within the database.|  
|object_id|**int**|ID of the security policy.|  
|principal_id|**int**|ID of the owner of the security policy, as registered to the database. NULL if the owner is determined via the schema.|  
|schema_id|**int**|ID of the schema where the object resides.|  
|parent_object_id|**int**|ID of the object to which the policy belongs. Must be 0.|  
|type|**vachar(2)**|Must be **SP**.|  
|type_desc|**nvarchar(60)**|**SECURITY_POLICY**.|  
|create_date|**datetime**|UTC date the security policy was created.|  
|modify_date|**datetime**|UTC date the security policy was last modified.|  
|is_ms_shipped|**bit**|Always false.|  
|is_enabled|**bit**|Security policy specification state:<br /><br /> 0 = disabled<br /><br /> 1 = enabled|  
|is_not_for_replication|**bit**|Policy was created with the NOT FOR REPLICATION option.|  
|uses_database_collation|**bit**|Uses the same collation as the database.|  
|is_schemabinding_enabled|**bit**|Schemabinding state for the security policy:<br /><br /> 0 or NULL = enabled<br /><br /> 1 = disabled|  
  
## Permissions  
 Principals with the **ALTER ANY SECURITY POLICY** permission have access to all objects in this catalog view as well as anyone with **VIEW DEFINITION** on the object.  
  
## See Also  
 [Row-Level Security](../../../relational-databases/security/row-level-security.md)   
 [sys.security_predicates &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.security-predicates-transact-sql.md)   
 [CREATE SECURITY POLICY &#40;Transact-SQL&#41;](../../../t-sql/statements/create-security-policy-transact-sql.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Principals &#40;Database Engine&#41;](../../../relational-databases/security/authentication-access/principals-database-engine.md)  
  
  