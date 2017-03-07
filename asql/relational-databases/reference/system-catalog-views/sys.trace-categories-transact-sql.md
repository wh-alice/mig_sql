---
title: "sys.trace_categories (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "trace_categories"
  - "trace_categories_TSQL"
  - "sys.trace_categories"
  - "sys.trace_categories_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.trace_categories catalog view"
ms.assetid: f6a86766-e2a9-4d9f-a073-1b59e888ba7d
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.trace_categories (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Similar event classes are grouped by a category. Each row in the **sys.trace_categories** catalog view identifies a category that is unique across the server. These categories do not change for a given version of the [!INCLUDE[ssDEnoversion](../../../a9notintoc/includes/ssdenoversion-md.md)].  
  
 For a complete list of supported trace events, see [SQL Server Event Class Reference](../../../relational-databases/event-classes/sql-server-event-class-reference.md).  
  
> **IMPORTANT!** [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use Extended Event catalog views instead.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**category_id**|**smallint**|Unique ID of this category. This column is also in the **sys.trace_events** catalog view.|  
|**name**|**nvarchar(128)**|Unique name of this category. This parameter is not localized.|  
|**type**|**tinyint**|Category type:<br /><br /> 0 = Normal<br /><br /> 1 = Connection<br /><br /> 2 = Error|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [sys.traces &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.traces-transact-sql.md)   
 [sys.trace_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-columns-transact-sql.md)   
 [sys.trace_events &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-events-transact-sql.md)   
 [sys.trace_event_bindings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-event-bindings-transact-sql.md)   
 [sys.trace_subclass_values &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-subclass-values-transact-sql.md)  
  
  