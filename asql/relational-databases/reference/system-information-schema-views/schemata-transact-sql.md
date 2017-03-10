---
title: "SCHEMATA (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/09/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "SCHEMATA_TSQL"
  - "SCHEMATA"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "INFORMATION_SCHEMA.SCHEMATA view"
  - "SCHEMATA view"
ms.assetid: 69617642-0f54-4b25-b62f-5f39c8909601
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# SCHEMATA (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns one row for each schema in the current database. To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA.***view_name*. To retrieve information about all databases in an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], query the [sys.databases &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md) catalog view.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**CATALOG_NAME**|**sysname**|Name of current database|  
|**SCHEMA_NAME**|**nvarchar(**128**)**|Returns the name of the schema.|  
|**SCHEMA_OWNER**|**nvarchar(**128**)**|Schema owner name.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of an object is to query the sys.objects catalog view.|  
|**DEFAULT_CHARACTER_SET_CATALOG**|**varchar(**6**)**|Always returns NULL.|  
|**DEFAULT_CHARACTER_SET_SCHEMA**|**varchar(**3**)**|Always returns NULL.|  
|**DEFAULT_CHARACTER_SET_NAME**|**sysname**|Returns the name of the default character set.|  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](http://msdn.microsoft.com/en-US/library/ms177862(SQL.130).aspx)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.databases &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md)   
 [sys.schemas &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/schemas-catalog-views-sys.schemas.md)   
 [sys.syscharsets &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-compatibility-views/sys.syscharsets-transact-sql.md)  
  
  