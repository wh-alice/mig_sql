---
title: "sys.fulltext_catalogs (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.fulltext_catalogs_TSQL"
  - "sys.fulltext_catalogs"
  - "fulltext_catalogs"
  - "fulltext_catalogs_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.fulltext_catalogs catalog view"
ms.assetid: cf1489ff-4819-41fa-a62a-4ed797a16207
caps.latest.revision: 39
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_catalogs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each full-text catalog.  
  
> [!NOTE]  
>  The following columns will be removed in a future release of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: **data_space_id**, **file_id**, and **path**. Do not use these columns in new development work, and modify applications that currently use any of these columns as soon as possible.  
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|fulltext_catalog_id|**int**|ID of the full-text catalog. Is unique across the full-text catalogs in the database.|  
|name|**sysname**|Name of the catalog. Is unique within the database.|  
|path|**nvarchar(260)**|Name of the catalog directory in the file system.|  
|is_default|**bit**|The default full-text catalog.<br /><br /> True = Is default.<br /><br /> False = Is not default.|  
|is_accent_sensitivity_on|**bit**|Accent-sensitivity setting of the catalog.<br /><br /> True = Is accent-sensitive.<br /><br /> False = Is not accent-sensitive.|  
|data_space_id|**int**|Filegroup where this catalog was created.|  
|file_id|**int**|File ID of the full-text file associated with the catalog.|  
|principal_id|**int**|ID of the database principal that owns the full-text catalog.|  
|is_importing|**bit**|Indicates whether the full-text catalog is being imported:<br /><br /> 1 = The catalog is being imported.<br /><br /> 2 = The catalog is not being imported.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [CREATE FULLTEXT CATALOG &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-catalog-transact-sql.md)   
 [ALTER FULLTEXT CATALOG &#40;Transact-SQL&#41;](../../t-sql/statements/alter-fulltext-catalog-transact-sql.md)   
 [DROP FULLTEXT CATALOG &#40;Transact-SQL&#41;](../../t-sql/statements/drop-fulltext-catalog-transact-sql.md)  
  
  