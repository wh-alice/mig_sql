---
title: "COLUMN_PRIVILEGES (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "COLUMN_PRIVILEGES"
  - "COLUMN_PRIVILEGES_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "COLUMN_PRIVILEGES view"
  - "INFORMATION_SCHEMA.COLUMN_PRIVILEGES view"
ms.assetid: 8ae29a85-2b77-48db-a2b9-a1720287b271
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# COLUMN_PRIVILEGES (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns one row for each column that has a privilege that is either granted to or granted by the current user in the current database.  
  
 To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA.***view_name*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**GRANTOR**|**nvarchar(**128**)**|Privilege grantor.|  
|**GRANTEE**|**nvarchar(**128**)**|Privilege grantee.|  
|**TABLE_CATALOG**|**nvarchar(**128**)**|Table qualifier.|  
|**TABLE_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the table.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of a object is to query the sys.objects catalog view.|  
|**TABLE_NAME**|**sysname**|Table name.|  
|**COLUMN_NAME**|**sysname**|Column name.|  
|**PRIVILEGE_TYPE**|**varchar(**10**)**|Type of privilege.|  
|**IS_GRANTABLE**|**varchar(**3**)**|Specifies whether the grantee can grant permissions to others.|  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](../Topic/System%20Views%20\(Transact-SQL\).md)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.sql_modules &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.database_permissions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.database-permissions-transact-sql.md)   
 [sys.server_permissions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.server-permissions-transact-sql.md)  
  
  