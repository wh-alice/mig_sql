---
title: "sys.traces (Transact-SQL) | Microsoft Docs"
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
  - "traces"
  - "sys.traces_TSQL"
  - "sys.traces"
  - "traces_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.traces catalog view"
ms.assetid: 4a03be22-b7da-4e2a-97ff-94bed890a620
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.traces (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **sys.traces** catalog view contains the current running traces on the system. This view is intended as a replacement for the **fn_trace_getinfo** function.  
  
 For a complete list of supported trace events, see [SQL Server Event Class Reference](../../relational-databases/event-classes/sql-server-event-class-reference.md).  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use Extended Event catalog views instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**id**|**int**|Trace ID.|  
|**status**|**int**|Trace status:<br /><br /> 0 = stopped<br /><br /> 1 = running|  
|**path**|**nvarchar(260)**|Path of the trace file. This value is null when the trace is a rowset trace.|  
|**max_size**|**bigint**|Maximum trace file size limit in megabytes (MB). This value is null when the trace is a rowset trace.|  
|**stop_time**|**datetime**|Time to stop the running trace.|  
|**max_files**|**int**|Maximum number of rollover files. This value is null if the Max number is not set.|  
|**is_rowset**|**bit**|1 = rowset trace.|  
|**is_rollover**|**bit**|1 = rollover option is enabled.|  
|**is_shutdown**|**bit**|1 = shutdown option is enabled.|  
|**is_default**|**bit**|1 = default trace.|  
|**buffer_count**|**int**|Number of in-memory buffers used by the trace.|  
|**buffer_size**|**int**|Size of each buffer (KB).|  
|**file_position**|**bigint**|Last trace file position. This value is null when the trace is a rowset trace.|  
|**reader_spid**|**int**|Rowset trace reader session ID. This value is null when the trace is a file trace.|  
|**start_time**|**datetime**|Trace start time.|  
|**last_event_time**|**datetime**|Time the last event fired.|  
|**event_count**|**bigint**|Total number of events that occurred.|  
|**dropped_event_count**|**int**|Total number of events dropped.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [sys.trace_categories &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.trace-categories-transact-sql.md)   
 [sys.trace_columns &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.trace-columns-transact-sql.md)   
 [sys.trace_events &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.trace-events-transact-sql.md)   
 [sys.trace_event_bindings &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.trace-event-bindings-transact-sql.md)   
 [sys.trace_subclass_values &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.trace-subclass-values-transact-sql.md)  
  
  