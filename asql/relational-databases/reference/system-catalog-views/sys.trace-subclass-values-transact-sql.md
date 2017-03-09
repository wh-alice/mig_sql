---
title: "sys.trace_subclass_values (Transact-SQL) | Microsoft Docs"
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
  - "sys.trace_subclass_values"
  - "trace_subclass_values_TSQL"
  - "sys.trace_subclass_values_TSQL"
  - "trace_subclass_values"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.trace_subclass_values catalog view"
ms.assetid: 542b19ca-61c8-41ca-aa2e-0aba8906cc24
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.trace_subclass_values (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **sys.trace_subclass_values** catalog view contains a list of named column values. These subclass values do not change for a given version of the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
 For a complete list of supported trace events, see [SQL Server Event Class Reference](../../../relational-databases/event-classes/sql-server-event-class-reference.md).  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use Extended Event catalog views instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**trace_event_id**|**smallint**|ID of the trace event. This parameter is also in the **sys.trace_events** catalog view.|  
|**trace_column_id**|**smallint**|ID of the trace column used for enumeration. This parameter is also in the **sys.trace_columns** catalog view.|  
|**subclass_name**|**nvarchar(128)**|Meaning of the column value.|  
|**subclass_value**|**smallint**|Column value.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [sys.traces &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.traces-transact-sql.md)   
 [sys.trace_categories &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-categories-transact-sql.md)   
 [sys.trace_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-columns-transact-sql.md)   
 [sys.trace_events &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-events-transact-sql.md)   
 [sys.trace_event_bindings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-event-bindings-transact-sql.md)  
  
  