---
title: "syscollector_execution_log (Transact-SQL) | Microsoft Docs"
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
  - "syscollector_execution_log_TSQL"
  - "syscollector_execution_log"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "data collector view"
  - "syscollector_execution_log view"
ms.assetid: 11554d64-0426-42ce-b7ce-5591f67864d2
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# syscollector_execution_log (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Provides information from the execution log for a collection set or package.   
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|log_id|**bigint**|Identifies each collection set execution. Used to join this view with other detailed logs. Is not nullable.|  
|parent_log_id|**bigint**|Identifies the parent package or collection set. Is not nullable. The IDs are chained in the parent-child relationship, which enables you to determine which package was started by which collection set. This view groups the log entries by their parent-child linkage and indents the names of the packages, so that the call chain is clearly visible.|  
|collection_set_id|**int**|Identifies the collection set or package that this log entry represents. Is not nullable.|  
|collection_item_id|**int**|Identifies a collection item. Is nullable.|  
|start_time|**datetime**|The time that the collection set or package started. Is not nullable.|  
|last_iteration_time|**datetime**|For continuously running packages, the last time that the package captured a snapshot. Is nullable.|  
|finish_time|**datetime**|The time the run completed for finished packages and collection sets. Is nullable.|  
|runtime_execution_mode|**smallint**|Indicates whether the collection set activity was collecting data or uploading data. Is nullable.<br /><br /> Values are:<br /><br /> 0 = Collection<br /><br /> 1 = Upload|  
|status|**smallint**|Indicates the current status of the collection set or package. Is not nullable.<br /><br /> Values are:<br /><br /> 0 = running<br /><br /> 1 = finished<br /><br /> 2 = failed|  
|operator|**nvarchar(128)**|Identifies who started the collection set or package. Is not nullable.|  
|package_id|**uniqueidentifier**|Identifies the collection set or package that generated this log. Is nullable.|  
|package_name|**nvarchar(4000)**|The name of the package that generated this log. Is nullable.|  
|package_execution_id|**uniqueidentifier**|Provides a link to the [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] log table. Is nullable.|  
|failure_message|**nvarchar(2048)**|If the collection set or package failed, the most recent error message for that component. Is nullable. To obtain more detailed error information, use the [fn_syscollector_get_execution_details &#40;Transact-SQL&#41;](../../relational-databases/system-functions/fn-syscollector-get-execution-details-transact-sql.md) function.|  
  
## Permissions  
 Requires SELECT for dc_operator.  
  
## See Also  
 [Data Collector Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/data-collector-stored-procedures-transact-sql.md)   
 [Data Collector Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/data-collector-views-transact-sql.md)   
 [Data Collection](../../relational-databases/data-collection/data-collection.md)  
  
  