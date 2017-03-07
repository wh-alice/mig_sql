---
title: "sys.internal_partitions (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server 2016 Preview"
dev_langs: 
  - "TSQL"
ms.assetid: 0262df2b-5ba7-4715-b17b-3d9ce470a38e
caps.latest.revision: 13
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.internal_partitions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Returns one row for each rowset that tracks internal data for columnstore indexes on disk-based tables. These rowsets are internal to columnstore indexes and track deleted rows, rowgroup mappings, and delta store rowgroups. They track data for each for each table partition; every table has at least one partition. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] re-creates the rowsets each time it rebuilds the columnstore index.   
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|partition_id|**bigint**|Partition ID for this partition. This is unique within a database.|  
|object_id|**int**|Object ID for the table that contains the partition.|  
|index_id|**int**|Index ID for the columnstore index defined on the table.<br /><br /> 1 = clustered columnstore index<br /><br /> 2 = nonclustered columnstore index|  
|partition_number|**int**|The partition number.<br /><br /> 1 = first partition of a partitioned table, or the single partition of a nonpartitioned table.<br /><br /> 2 = second partition, and so on.|  
|internal_object_type|**tinyint**|Rowset objects that track internal data for the columnstore index.<br /><br /> 2 = COLUMN_STORE_DELETE_BITMAP<br /><br /> 3 = COLUMN_STORE_DELTA_STORE<br /><br /> 4 = COLUMN_STORE_DELETE_BUFFER<br /><br /> 5 = COLUMN_STORE_MAPPING_INDEX|  
|internal_object_type_desc|**nvarchar(60)**|COLUMN_STORE_DELETE_BITMAP – This bitmap index tracks rows that are marked as deleted from the columnstore. The bitmap is for every rowgroup since partitions can have rows in multiple rowgroups. The rows are that are still physically present and taking up space in the columnstore.<br /><br /> COLUMN_STORE_DELTA_STORE – Stores groups of rows, called rowgroups, that have not been compressed into columnar storage. Each table partition can have zero or more deltastore rowgroups.<br /><br /> COLUMN_STORE_DELETE_BUFFER – For maintaining deletes to updateable nonclustered columnstore indexes. When a query deletes a row from the underlying rowstore table, the delete buffer tracks the deletion from the columnstore. When the number of deleted rows exceed 1048576, they are merged back into the delete bitmap by background Tuple Mover thread or by an explicit Reorganize command.  At any given point in time, the union of the delete bitmap and the delete buffer represents all deleted rows.<br /><br /> COLUMN_STORE_MAPPING_INDEX – Used only when the clustered columnstore index has a secondary nonclustered index. This maps nonclustered index keys to the correct rowgroup and row ID in the columnstore. It only stores keys for rows that move to a different rowgroup; this occurs when a delta rowgroup is compressed into the columnstore, and when a merge operation merges rows from two different rowgroups.|  
|Row_group_id|**int**|ID for the deltastore rowgroup. Each table partition can have zero or more deltastore rowgroups.|  
|hobt_id|**bigint**|ID of the internal rowset object. This is a good key for joining with other DMVs to get more information about the physical characteristics of the internal rowset.|  
|rows|**bigint**|Approximate number of rows in this partition.|  
|data_compression|**tinyint**|The state of compression for the rowset:<br /><br /> 0 = NONE<br /><br /> 1 = ROW<br /><br /> 2 = PAGE|  
|data_compression_desc|**nvarchar(60)**|The state of compression for each partition. Possible values for rowstore tables are NONE, ROW, and PAGE. Possible values for columnstore tables are COLUMNSTORE and COLUMNSTORE_ARCHIVE.|  
  
## Permissions  
 Requires membership in the **public** role. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## General Remarks  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] re-creates new columnstore internal indexes each time it creates or rebuilds a columnstore index.  
  
## Examples  
  
### A. View all of the internal rowsets for a table  
 This example returns all of the internal columnstore rowsets for a table. You can also use the hobt_id to find more information about the specific rowset.  
  
```  
SELECT i.object_id, i.index_id, i.name, p.hobt_id, p.internal_object_type_id, p.internal_object_type_desc  
FROM sys.internal_partitions AS p  
JOIN sys.indexes AS i  
on i.object_id = p.object_id  
WHERE p.object_id = OBJECT_ID ( '<table name' ) ;  
```  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Querying the SQL Server System Catalog FAQ](../../relational-databases/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  