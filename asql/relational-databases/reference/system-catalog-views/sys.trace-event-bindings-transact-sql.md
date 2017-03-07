---
title: "sys.trace_event_bindings (Transact-SQL) | Microsoft Docs"
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
  - "sys.trace_event_bindings_TSQL"
  - "trace_event_bindings"
  - "sys.trace_event_bindings"
  - "trace_event_bindings_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.trace_event_bindings catalog view"
ms.assetid: 22f534e1-4ed6-4b3e-9ead-1d1001a1b0f5
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.trace_event_bindings (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **sys.trace_event_bindings** catalog view contains a list of all possible usage combinations of events and columns. For each event listed in the **trace_event_id** column, all available columns are listed in the **trace_column_id** column. Not all available columns are populated each time a given event occurs. These values do not change for a given version of the [!INCLUDE[ssDEnoversion](../../../a9notintoc/includes/ssdenoversion-md.md)].  
  
 For a complete list of supported trace events, see [SQL Server Event Class Reference](../../../relational-databases/event-classes/sql-server-event-class-reference.md).  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use Extended Event catalog views instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**trace_event_id**|**smallint**|ID of the trace event. This column is also in the **sys.trace_events** catalog view.|  
|**trace_column_id**|**smallint**|ID of the trace column. This column is also in the **sys.trace_columns** catalog view.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [sys.traces &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.traces-transact-sql.md)   
 [sys.trace_categories &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-categories-transact-sql.md)   
 [sys.trace_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-columns-transact-sql.md)   
 [sys.trace_events &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-events-transact-sql.md)   
 [sys.trace_subclass_values &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.trace-subclass-values-transact-sql.md)  
  
  