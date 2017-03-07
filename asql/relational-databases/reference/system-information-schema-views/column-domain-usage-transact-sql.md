---
title: "COLUMN_DOMAIN_USAGE (Transact-SQL) | Microsoft Docs"
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
  - "COLUMN_DOMAIN_USAGE_TSQL"
  - "COLUMN_DOMAIN_USAGE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "INFORMATION_SCHEMA.COLUMN_DOMAIN_USAGE view"
  - "COLUMN_DOMAIN_USAGE view"
ms.assetid: deb20037-6a51-47ae-9f49-7601698fafaf
caps.latest.revision: 37
ms.author: "rickbyh"
manager: "jhubbard"
---
# COLUMN_DOMAIN_USAGE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns one row for each column in the current database that has an alias data type. This information schema view returns information about the objects to which the current user has permissions.  
  
 To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA.***view_name*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**DOMAIN_CATALOG**|**nvarchar(**128**)**|Database in which the alias data type exists.|  
|**DOMAIN_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the alias data type.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of a data type. The only reliable way to find the schema of a type is to use the TYPEPROPERTY function.|  
|**DOMAIN_NAME**|**sysname**|Alias data type.|  
|**TABLE_CATALOG**|**nvarchar(**128**)**|Table qualifier.|  
|**TABLE_SCHEMA**|**nvarchar(**128**)**|Table owner.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of a object is to query the sys.objects catalog view.|  
|**TABLE_NAME**|**sysname**|Table in which the alias  data type is used.|  
|**COLUMN_NAME**|**sysname**|Column using the alias data type.|  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](../../../a9retired/system-views-transact-sql.md)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.types &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md)  
  
  