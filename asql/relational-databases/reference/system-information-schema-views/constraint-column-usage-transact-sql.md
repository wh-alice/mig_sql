---
title: "CONSTRAINT_COLUMN_USAGE (Transact-SQL) | Microsoft Docs"
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
  - "CONSTRAINT_COLUMN_USAGE_TSQL"
  - "CONSTRAINT_COLUMN_USAGE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE view"
  - "CONSTRAINT_COLUMN_USAGE view"
ms.assetid: 0f3ae521-6b19-43ad-b2c4-3822adb19591
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# CONSTRAINT_COLUMN_USAGE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns one row for each column in the current database that has a constraint defined on the column. This information schema view returns information about the objects to which the current user has permissions.  
  
 To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA.***view_name*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_CATALOG**|**nvarchar(**128**)**|Table qualifier.|  
|**TABLE_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the table owner.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of a object is to query the sys.objects catalog view.|  
|**TABLE_NAME**|**nvarchar(**128**)**|Table name.|  
|**COLUMN_NAME**|**nvarchar(**128**)**|Column name.|  
|**CONSTRAINT_CATALOG**|**nvarchar(**128**)**|Constraint qualifier.|  
|**CONSTRAINT_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the constraint.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of a object is to query the sys.objects catalog view.|  
|**CONSTRAINT_NAME**|**nvarchar(**128**)**|Constraint name.|  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](../../../a9retired/system-views-transact-sql.md)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.columns-transact-sql.md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.types &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md)   
 [sys.check_constraints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.check-constraints-transact-sql.md)   
 [sys.key_constraints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.key-constraints-transact-sql.md)   
 [sys.foreign_keys &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.foreign-keys-transact-sql.md)  
  
  