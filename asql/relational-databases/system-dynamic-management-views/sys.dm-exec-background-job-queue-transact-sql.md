---
title: "sys.dm_exec_background_job_queue (Transact-SQL) | Microsoft Docs"
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
  - "dm_exec_background_job_queue"
  - "sys.dm_exec_background_job_queue_TSQL"
  - "dm_exec_background_job_queue_TSQL"
  - "sys.dm_exec_background_job_queue"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_exec_background_job_queue dynamic management function"
ms.assetid: 05d9884f-b74c-4e3c-a23b-c90c1ea5ef02
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.dm_exec_background_job_queue (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns a row for each query processor job that is scheduled for asynchronous (background) execution.  
  
> **NOTE!!** To call this from **[!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)]** or **[!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]**, use the name **sys.dm_pdw_nodes_exec_background_job_queue**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**time_queued**|**datetime**|Time when the job was added to the queue.|  
|**job_id**|**int**|Job identifier.|  
|**database_id**|**int**|Database on which the job is to execute.|  
|**object_id1**|**int**|Value depends on the job type. For more information, see the Remarks section.|  
|**object_id2**|**int**|Value depends on the job type. For more information, see the Remarks section.|  
|**object_id3**|**int**|Value depends on the job type. For more information, see the Remarks section.|  
|**object_id4**|**int**|Value depends on the job type. For more information, see the Remarks section.|  
|**error_code**|**int**|Error code if the job reinserted due to failure. NULL if suspended, not picked up, or completed.|  
|**request_type**|**smallint**|Type of the job request.|  
|**retry_count**|**smallint**|Number of times the job was picked from the queue and reinserted because of lack of resources or other reasons.|  
|**in_progress**|**smallint**|Indicates whether the job has started execution.<br /><br /> 1 = Started<br /><br /> 0 = Still waiting|  
|**session_id**|**smallint**|Session identifier.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
  
## Permissions  
 On [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] requires VIEW SERVER STATE permission on the server.  
  
 On [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] Premium Tiers requires the VIEW DATABASE STATE permission in the database. On [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] Standard and Basic Tiers requires the [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] admin account.  
  
## Remarks  
 This view returns information only for asynchronous update statistics jobs. For more information about asynchronous update statistics, see [Statistics](../../relational-databases/statistics/statistics.md).  
  
 The values of **object_id1** through **object_id4** depend on the type of the job request. The following table summarizes the meaning of these columns for the different job types.  
  
|Request type|object_id1|object_id2|object_id3|object_id4|  
|------------------|-----------------|-----------------|-----------------|-----------------|  
|Asynchronous update statistics|Table or view ID|Statistics ID|Not used|Not used|  
  
## Examples  
 The following example returns the number of active asynchronous jobs in the background queue for each database in the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
```  
SELECT DB_NAME(database_id) AS [Database], COUNT(*) AS [Active Async Jobs]  
FROM sys.dm_exec_background_job_queue  
WHERE in_progress = 1  
GROUP BY database_id;  
GO  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Execution Related Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/execution-related-dynamic-management-views-and-functions-transact-sql.md)   
 [Statistics](../../relational-databases/statistics/statistics.md)   
 [KILL STATS JOB &#40;Transact-SQL&#41;](../../t-sql/language-elements/kill-stats-job-transact-sql.md)  
  
  

