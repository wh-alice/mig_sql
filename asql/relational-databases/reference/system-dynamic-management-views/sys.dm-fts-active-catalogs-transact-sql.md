---
title: "sys.dm_fts_active_catalogs (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_fts_active_catalogs_TSQL"
  - "dm_fts_active_catalogs"
  - "dm_fts_active_catalogs_TSQL"
  - "sys.dm_fts_active_catalogs"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_fts_active_catalogs dynamic management view"
ms.assetid: 40ab5453-040c-4d2e-bb49-e340cf90c3ee
caps.latest.revision: 38
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.dm_fts_active_catalogs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information on the full-text catalogs that have some population activity in progress on the server.  
  
> [!NOTE]  
>  The following columns will be removed in a future version of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]: is_paused, previous_status, previous_status_description, row_count_in_thousands, status, status_description, and worker_count. Avoid using these columns in new development work, and plan to modify applications that currently use any of them.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**int**|ID of the database that contains the active full-text catalog.|  
|**catalog_id**|**int**|ID of the active full-text catalog.|  
|**memory_address**|**varbinary(8)**|Address of memory buffers allocated for the population activity related to this full-text catalog.|  
|**name**|**nvarchar(128)**|Name of the active full-text catalog.|  
|**is_paused**|**bit**|Indicates whether the population of the active full-text catalog has been paused.|  
|**status**|**int**|Current state of the full-text catalog. One of the following:<br /><br /> 0 = Initializing<br /><br /> 1 = Ready<br /><br /> 2 = Paused<br /><br /> 3 = Temporary error<br /><br /> 4 = Remount needed<br /><br /> 5 = Shutdown<br /><br /> 6 = Quiesced for backup<br /><br /> 7 = Backup is done through catalog<br /><br /> 8 = Catalog is corrupt|  
|**status_description**|**nvarchar(120)**|Description of current state of the active full-text catalog.|  
|**previous_status**|**int**|Previous state of the full-text catalog. One of the following:<br /><br /> 0 = Initializing<br /><br /> 1 = Ready<br /><br /> 2 = Paused<br /><br /> 3 = Temporary error<br /><br /> 4 = Remount needed<br /><br /> 5 = Shutdown<br /><br /> 6 = Quiesced for backup<br /><br /> 7 = Backup is done through catalog<br /><br /> 8 = Catalog is corrupt|  
|**previous_status_description**|**nvarchar(120)**|Description of previous state of the active full-text catalog.|  
|**worker_count**|**int**|Number of threads currently working on this full-text catalog.|  
|**active_fts_index_count**|**int**|Number of full-text indexes that are being populated.|  
|**auto_population_count**|**int**|Number of tables with an auto population in progress for this full-text catalog.|  
|**manual_population_count**|**int**|Number of tables with manual population in progress for this full-text catalog.|  
|**full_incremental_population_count**|**int**|Number of tables with a full or incremental population in progress for this full-text catalog.|  
|**row_count_in_thousands**|**int**|Estimated number of rows (in thousands) in all full-text indexes in this full-text catalog.|  
|**is_importing**|**bit**|Indicates whether the full-text catalog is being imported:<br /><br /> 1 = The catalog is being imported.<br /><br /> 2 = The catalog is not being imported.|  
  
## Remarks  
 The is_importing column was new in [!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)].  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Physical Joins  
 ![Significant joins of this dynamic management view](../../../relational-databases/reference/system-dynamic-management-views/media/join-dm-fts-active-catalogs-1.gif "Significant joins of this dynamic management view")  
  
## Relationship Cardinalities  
  
|From|To|Relationship|  
|----------|--------|------------------|  
|dm_fts_active_catalogs.database_id|dm_fts_index_population.database_id|One-to-one|  
|dm_fts_active_catalogs.catalog_id|dm_fts_index_population.catalog_id|One-to-one|  
  
## Examples  
 The following example returns information about the active full-text catalogs on the current database.  
  
```  
SELECT catalog.name, catalog.is_importing, catalog.auto_population_count, OBJECT_NAME(population.table_id) AS table_name, population.population_type_description, population.is_clustered_index_scan, population.status_description, population.completion_type_description, population.queued_population_type_description, population.start_time, population.range_count   
FROM sys.dm_fts_active_catalogs catalog   
CROSS JOIN sys.dm_fts_index_population population   
WHERE catalog.database_id = population.database_id   
AND catalog.catalog_id = population.catalog_id   
AND catalog.database_id = (SELECT dbid FROM sys.sysdatabases WHERE name = DB_NAME());  
GO  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Full-Text Search and Semantic Search Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/full-text-and-semantic-search-dynamic-management-views-functions.md)  
  
  