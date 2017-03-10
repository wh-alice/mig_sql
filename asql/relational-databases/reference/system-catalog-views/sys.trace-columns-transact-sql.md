---
title: "sys.trace_columns (Transact-SQL) | Microsoft Docs"
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
  - "sys.trace_columns"
  - "trace_columns"
  - "trace_columns_TSQL"
  - "sys.trace_columns_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.trace_columns catalog view"
ms.assetid: 5c48eb09-9e9b-45dd-b151-ca39b026ece5
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.trace_columns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **sys.trace_columns** catalog view contains a list of all trace event columns. These columns do not change for a given version of the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
 For a complete list of supported trace events, see [SQL Server Event Class Reference](../../../relational-databases/event-classes/sql-server-event-class-reference.md).  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use Extended Event catalog views instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**trace_column_id**|**smallint**|Unique ID of this column.|  
|**name**|**nvarchar(128)**|Unique name of this column. This parameter is not localized.|  
|**type_name**|**nvarchar(128)**|Data type name of this column.|  
|**max_size**|**int**|Maximum data size of this column in bytes.|  
|**is_filterable**|**bit**|Indicates whether the column can be used in filter specification.<br /><br /> 0 = false<br /><br /> 1 = true|  
|**is_repeatable**|**bit**|Indicates whether the column can be referenced in the "repeated column" data.<br /><br /> 0 = false<br /><br /> 1 = true|  
|**is_repeated_base**|**bit**|Indicates whether this column is used as a unique key for referencing repeated data.<br /><br /> 0 = false<br /><br /> 1 = true|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [sys.traces &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.traces-transact-sql.md)   
 [sys.trace_categories &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-categories-transact-sql.md)   
 [sys.trace_events &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-events-transact-sql.md)   
 [sys.trace_event_bindings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-event-bindings-transact-sql.md)   
 [sys.trace_subclass_values &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-subclass-values-transact-sql.md)  
  
  