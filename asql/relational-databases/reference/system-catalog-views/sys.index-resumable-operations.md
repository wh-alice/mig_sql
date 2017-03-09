---
title: "sys.index_resumable_operations | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-02"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3ec29275-5917-4386-b93d-5c9b0c7c6385
caps.latest.revision: 5
ms.author: "carlrab"
---
# sys.index_resumable_operations
[!INCLUDE[tsql-appliesto-ssvNxt-xxxx-xxxx-xxx](../../../analysis-services/includes/tsql-appliesto-ssvnxt-xxxx-xxxx-xxx.md)]

  **sys.index_resumable_operations** is a system view that monitors and checks the current execution status for resumable Index rebuild.  
  **Applies to**: SQL Server vNext (feature is in public preview)
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the object to which this index belongs (not nullable).|  
|**index_id**|**int**|ID of the index (not nullable). **index_id** is unique only within the object.|
|**name**|**sysname**|Name of the index. **name** is unique only within the object.|  
|**sql_text**|**nvarchar(max)**|DDL T-SQL statement text|
|**last_max_dop**|**smallint**|Last MAX_DOP used (default = 0)|
|**partition_number**|**int**|Partition number within the owning index or heap. For non-partitioned tables and indexes or in case all partitions are being rebuild the value of this column is NULL.|
|**state**|**tinyint**|Operational state for resumable index:<br /><br />0=Running<br /><br />1=Pause|
|**state_desc**|**nvarchar(60)**|Description of the operational state for resumable index (running or Paused)|  
|**start_time**|**datetime**|Index operation start time (not nullable)|
|**last_pause_time**|**datatime**| Index operation last pause time (nullable). NULL if operation is running and never paused.|
|**total_execution_time**|**int**|Total execution time from start time in minutes (not nullable)|
|**percent_complete**|**real**|Index operation progress completion in % ( not nullable).|
|**page_count**|**bigint**|Total number of index pages allocated by the index build operation for the new and mapping indexes ( not nullable ). 


## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Example  
 List all resumable indexe rebuild operationas that are in the PAUSE state. 
  
```  
SELECT * FROM  sys.index_resumable_operations WHERE STATE = 1;  
```  
  
## See Also 
 [ALTER INDEX &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-index-transact-sql.md)    
 [Catalog views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)
 [Object catalog views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)
 [sys.indexes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.indexes-transact-sql.md) 
 [sys.index_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.index-columns-transact-sql.md)   
 [sys.xml_indexes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.xml-indexes-transact-sql.md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.key_constraints &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.key-constraints-transact-sql.md)   
 [sys.filegroups &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.filegroups-transact-sql.md)   
 [sys.partition_schemes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.partition-schemes-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)   
  
  