---
title: "sys.dm_fts_index_population (Transact-SQL) | Microsoft Docs"
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
  - "sys.dm_fts_index_population"
  - "dm_fts_index_population"
  - "sys.dm_fts_index_population_TSQL"
  - "dm_fts_index_population_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_fts_index_population dynamic management view"
ms.assetid: 82d1c102-efcc-4b60-9a5e-3eee299bcb2b
caps.latest.revision: 38
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.dm_fts_index_population (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about the full-text index and semantic key phrase populations currently in progress in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**int**|ID of the database that contains the full-text index being populated.|  
|**catalog_id**|**int**|ID of the full-text catalog that contains this full-text index.|  
|**table_id**|**int**|ID of the table for which the full-text index is being populated.|  
|**memory_address**|**varbinary(8)**|Memory address of the internal data structure that is used to represent an active population.|  
|**population_type**|**int**|Type of population. One of the following:<br /><br /> 1 = Full population<br /><br /> 2 = Incremental timestamp-based population<br /><br /> 3 = Manual update of tracked changes<br /><br /> 4 = Background update of tracked changes.|  
|**population_type_description**|**nvarchar(120)**|Description for type of population.|  
|**is_clustered_index_scan**|**bit**|Indicates whether the population involves a scan on the clustered index.|  
|**range_count**|**int**|Number of sub-ranges into which this population has been parallelized.|  
|**completed_range_count**|**int**|Number of ranges for which processing is complete.|  
|**outstanding_batch_count**|**int**|Current number of outstanding batches for this population. For more information, see [sys.dm_fts_outstanding_batches &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/sys.dm-fts-outstanding-batches-transact-sql.md).|  
|**status**|**int**|**Applies to**: [!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Status of this Population. Note: some of the states are transient. One of the following:<br /><br /> 3 = Starting<br /><br /> 5 = Processing normally<br /><br /> 7 = Has stopped processing<br /><br /> For example, this status occurs when an auto merge is in progress.<br /><br /> 11 = Population aborted<br /><br /> 12 = Processing a semantic similarity extraction|  
|**status_description**|**nvarchar(120)**|Description of status of the population.|  
|**completion_type**|**int**|Status of how this population completed.|  
|**completion_type_description**|**nvarchar(120)**|Description of the completion type.|  
|**worker_count**|**int**|This value is always 0.|  
|**queued_population_type**|**int**|Type of the population, based on tracked changes, which will follow the current population, if any.|  
|**queued_population_type_description**|**nvarchar(120)**|Description of the population to follow, if any. For example, when CHANGE TRACKING = AUTO and the initial full population is in progress, this column would show "Auto population."|  
|**start_time**|**datetime**|Time that the population started.|  
|**incremental_timestamp**|**timestamp**|Represents the starting timestamp for a full population. For all other population types this value is the last committed checkpoint representing the progress of the populations.|  
  
## Remarks  
 When statistical semantic indexing is enabled in addition to full-text indexing, the semantic extraction and population of key phrases, and the extraction of document similarity data, occur simultaneously with full-text indexing. The population of the document similarity index occurs later in a second phase. For more information, see [Manage and Monitor Semantic Search](../../../relational-databases/search/manage-and-monitor-semantic-search.md).  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Physical Joins  
 ![Significant joins of this dynamic management view](../../../relational-databases/reference/system-dynamic-management-views/media/join-dm-fts-index-population-1.gif "Significant joins of this dynamic management view")  
  
## Relationship Cardinalities  
  
|From|To|Relationship|  
|----------|--------|------------------|  
|dm_fts_active_catalogs.database_id|dm_fts_index_population.database_id|One-to-one|  
|dm_fts_active_catalogs.catalog_id|dm_fts_index_population.catalog_id|One-to-one|  
|dm_fts_population_ranges.parent_memory_address|dm_fts_index_population.memory_address|Many-to-one|  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Full-Text Search and Semantic Search Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/199dbd5a-29f6-4ef0-8e65-86e32c0aaa3a.md)  
  
  