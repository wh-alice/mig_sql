---
title: "sys.system_views (Transact-SQL) | Microsoft Docs"
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
  - "sys.system_views_TSQL"
  - "system_views"
  - "system_views_TSQL"
  - "sys.system_views"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.system_views catalog view"
ms.assetid: a526c410-e7b5-4075-8103-e1f3c6837c3c
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.system_views (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each system view that is shipped with [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. All system views are contained in the schemas named **sys** or **INFORMATION_SCHEMA**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|\<inherited columns>||For a list of columns that this view inherits, see [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md).|  
|**is_replicated**|**bit**|1 = View is replicated.|  
|**has_replication_filter**|**bit**|1 = View has a replication filter.|  
|**has_opaque_metadata**|**bit**|1 = VIEW_METADATA option specified for view. For more information, see [CREATE VIEW &#40;Transact-SQL&#41;](../../../t-sql/statements/create-view-transact-sql.md).|  
|**has_unchecked_assembly_data**|**bit**|1 = Table contains persisted data that depends on an assembly whose definition changed during the last ALTER ASSEMBLY. Will be reset to 0 after the next successful DBCC CHECKDB or DBCC CHECKTABLE.|  
|**with_check_option**|**bit**|1 = WITH CHECK OPTION was specified in the view definition.|  
|**is_date_correlation_view**|**bit**|1 = View was created automatically by the system to store correlation information between **datetime** columns. Creation of this view was enabled by setting DATE_CORRELATION_OPTIMIZATION to ON.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [DBCC CHECKDB &#40;Transact-SQL&#41;](../../../t-sql/database-console-commands/dbcc-checkdb-transact-sql.md)   
 [DBCC CHECKTABLE &#40;Transact-SQL&#41;](../../../t-sql/database-console-commands/dbcc-checktable-transact-sql.md)   
 [ALTER ASSEMBLY &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-assembly-transact-sql.md)  
  
  