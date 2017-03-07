---
title: "sys.fulltext_indexes (Transact-SQL) | Microsoft Docs"
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
  - "fulltext_indexes"
  - "fulltext_indexes_TSQL"
  - "sys.fulltext_indexes_TSQL"
  - "sys.fulltext_indexes"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.fulltext_indexes catalog view"
  - "full-text indexes [SQL Server], properties"
ms.assetid: 7fc10fdc-370f-4927-bba0-b76108a7508e
caps.latest.revision: 40
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_indexes (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Contains a row per full-text index of a tabular object.  

|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the object to which this full-text index belongs.|  
|**unique_index_id**|**int**|ID of the corresponding unique, non-full-text index that is used to relate the full-text index to the rows.|  
|**fulltext_catalog_id**|**int**|ID of the full-text catalog in which the full-text index resides.|  
|**is_enabled**|**bit**|1 = Full-text index is currently enabled.|  
|**change_tracking_state**|**char(1)**|State of change-tracking.<br /><br /> M = Manual<br /><br /> A = Auto<br /><br /> O = Off|  
|**change_tracking_state_desc**|**nvarchar(60)**|Description of the state of change-tracking.<br /><br /> MANUAL<br /><br /> AUTO<br /><br /> OFF|  
|**has_crawl_completed**|**bit**|Last crawl (population) that the full-text index has completed.|  
|**crawl_type**|**char(1)**|Type of the current or last crawl.<br /><br /> F = Full crawl<br /><br /> I = Incremental, timestamp-based crawl<br /><br /> U = Update crawl, based on notifications<br /><br /> P = Full crawl is paused.|  
|**crawl_type_desc**|**nvarchar(60)**|Description of the current or last crawl type.<br /><br /> FULL_CRAWL<br /><br /> INCREMENTAL_CRAWL<br /><br /> UPDATE_CRAWL<br /><br /> PAUSED_FULL_CRAWL|  
|**crawl_start_date**|**datetime**|Start of the current or last crawl.<br /><br /> NULL = None.|  
|**crawl_end_date**|**datetime**|End of the current or last crawl.<br /><br /> NULL = None.|  
|**incremental_timestamp**|**binary(8)**|Timestamp value to use for the next incremental crawl.<br /><br /> NULL = None.|  
|**stoplist_id**|**int**|ID of the [stoplist](../../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md) that is associated with this full-text index.|  
|**data_space_id**|**int**|Filegroup where this full-text index resides.|  
|**property_list_id**|**int**|ID of the search property list that is associated with this full-text index. NULL indicates that no search property list is associated with the full-text index. To obtain more information about this search property list, use the [sys.registered_search_property_lists &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.registered-search-property-lists-transact-sql.md) catalog view.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## Examples  
 The following example uses a full-text index on the `HumanResources.JobCandidate` table of the `AdventureWorks2012` sample database. The example returns the object ID of the table, the search property list ID, and the stoplist ID of the stoplist used by the full-text index.  
  
> [!NOTE]  
>  For the code example that creates this full-text index, see the "Examples" section of [CREATE FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-index-transact-sql.md).  
  
```  
USE AdventureWorks2012;  
GO  
SELECT object_id, property_list_id, stoplist_id FROM sys.fulltext_indexes  
    where object_id = object_id('HumanResources.JobCandidate');   
GO  
```  
  
## See Also  
 [sys.fulltext_index_fragments &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.fulltext-index-fragments-transact-sql.md)   
 [sys.fulltext_index_columns &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.fulltext-index-columns-transact-sql.md)   
 [sys.fulltext_index_catalog_usages &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.fulltext-index-catalog-usages-transact-sql.md)   
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Create and Manage Full-Text Indexes](../../relational-databases/search/create-and-manage-full-text-indexes.md)   
 [DROP FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/drop-fulltext-index-transact-sql.md)   
 [CREATE FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-index-transact-sql.md)   
 [ALTER FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/alter-fulltext-index-transact-sql.md)  
  
  