---
title: "sys.fulltext_index_fragments (Transact-SQL) | Microsoft Docs"
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
  - "fulltext_index_fragments"
  - "sys.fulltext_index_fragments_TSQL"
  - "fulltext_index_fragments_TSQL"
  - "sys.fulltext_index_fragments"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "full-text indexes [SQL Server], fragments"
  - "full-text indexes [SQL Server], metadata"
  - "troubleshooting [SQL Server], full-text search"
  - "sys.fulltext_index_fragments catalog view"
ms.assetid: a82e5018-5d88-45c0-9a47-c251e17a6cdb
caps.latest.revision: 18
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.fulltext_index_fragments (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  A fulltext index uses internal tables called *full-text index fragments* to store the inverted index data. This view can be used to query the metadata about these fragments. This view contains a row for each full-text index fragment in every table that contains a full-text index.  
 
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|table_id|**int**|Object ID of the table that contains the full-text index fragment.|  
|fragment_object_id|**int**|Object ID of the internal table associated with the fragment.|  
|fragment_id|**int**|Logical ID of the full-text index fragment. This is unique across all fragments for this table.|  
|timestamp|**timestamp**|Timestamp associated with the fragment creation. The timestamps of more recent fragments are larger than the timestamps of older fragments.|  
|data_size|**int**|Logical size of the fragment in bytes.|  
|row_count|**int**|Number of individual rows in the fragment.|  
|status|**int**|Status of the fragment, one of:<br /><br /> 0 = Newly created and not yet used<br /><br /> 1 = Being used for insert during fulltext index population or merge<br /><br /> 4 = Closed. Ready for query<br /><br /> 6 = Being used for merge input and ready for query<br /><br /> 8 = Marked for deletion. Will not be used for query and merge source.<br /><br /> A status of 4 or 6 means that the fragment is part of the logical full-text index and can be queried; that is, it is a *queryable* fragment.|  
  
## Remarks  
 The sys.fulltext_index_fragments catalog view can be used to query the number of fragments comprising a full-text index. If you are experiencing slow full-text query performance, you can use sys.fulltext_index_fragments to query for the number of queryable fragments (status = 4 or 6)  in the full-text index, as follows:  
  
```  
SELECT table_id, status FROM sys.fulltext_index_fragments  
   WHERE status=4 OR status=6;  
```  
  
 If many queryable fragments exist, Microsoft recommends that you reorganize the full-text catalog that contains the full-text index to merge the fragments together. To reorganize a of full-text catalog use [ALTER FULLTEXT CATALOG](../../../t-sql/statements/alter-fulltext-catalog-transact-sql.md)*catalog_name* REORGANIZE. For example, to reorganize a full-text catalog named `ftCatalog` in the `AdventureWorks2012` database, enter:  
  
```  
USE AdventureWorks2012;  
GO  
ALTER FULLTEXT CATALOG ftCatalog REORGANIZE;  
GO  
```  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Populate Full-Text Indexes](../../../relational-databases/search/populate-full-text-indexes.md)  
  
  