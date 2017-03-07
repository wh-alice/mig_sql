---
title: "TABLES (Transact-SQL) | Microsoft Docs"
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
  - "TABLES_TSQL"
  - "TABLES"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "TABLES view"
  - "INFORMATION_SCHEMA.TABLES view"
ms.assetid: 723a9e63-8f6e-4d6e-b570-468cfaf03201
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# TABLES (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns one row for each table in the current database for which the current user has permissions.  
  
 To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA.***view_name*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_CATALOG**|**nvarchar(**128**)**|Table qualifier.|  
|**TABLE_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the table.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of an object is to query the sys.objects catalog view. INFORMATION_SCHEMA views could be incomplete since they are not updated for all new features.|  
|**TABLE_NAME**|**sysname**|Table name.|  
|**TABLE_TYPE**|**varchar(**10**)**|Type of table. Can be VIEW or BASE TABLE.|  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](../../../a9retired/system-views-transact-sql.md)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.tables-transact-sql.md)  
  
  