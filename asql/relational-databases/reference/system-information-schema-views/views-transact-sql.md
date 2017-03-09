---
title: "VIEWS (Transact-SQL) | Microsoft Docs"
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
  - "VIEWS_TSQL"
  - "VIEWS"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "VIEWS view"
  - "INFORMATION_SCHEMA.VIEWS view"
ms.assetid: 6119bc94-0b22-45d4-a34b-967afd810a9d
caps.latest.revision: 39
ms.author: "rickbyh"
manager: "jhubbard"
---
# VIEWS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns one row for views that can be accessed by the current user in the current database.  
  
 To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA.***view_name*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_CATALOG**|**nvarchar(**128**)**|View qualifier.|  
|**TABLE_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the view.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of a object is to query the sys.objects catalog view.|  
|**TABLE_NAME**|**nvarchar(**128**)**|View name.|  
|**VIEW_DEFINITION**|**nvarchar(**4000**)**|If the length of definition is larger than **nvarchar(**4000**)**, this column is NULL. Otherwise, this column is the view definition text.|  
|**CHECK_OPTION**|**varchar(**7**)**|Type of WITH CHECK OPTION. Is CASCADE if the original view was created by using the WITH CHECK OPTION. Otherwise, NONE is returned.|  
|**IS_UPDATABLE**|**varchar(**2**)**|Specifies whether the view is updatable. Always returns NO.|  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](../Topic/System%20Views%20\(Transact-SQL\).md)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.sql_modules &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)   
 [sys.views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.views-transact-sql.md)  
  
  