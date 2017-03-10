---
title: "sys.external_tables (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: fac4720c-b679-4ab2-864b-ff7810a9b559
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.external_tables (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  Contains a row for each external table in the current database.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|\<inherited columns>||For a list of columns that this view inherits, see [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md).||  
|max_column_id_used|**int**|Maximum column ID ever used for this table.||  
|uses_ansi_nulls|**bit**|Table was created with the SET ANSI_NULLS database option ON.||  
|data_source_id|**int**|Object ID for the external data source.||  
|file_format_id|**int**|For external tables over a HADOOP external data source, this is the Object ID for the external file format.||  
|location|**nvarchar(4000)**|For external tables over a HADOOP external data source, this is the path of the external data in HDFS.||  
|reject_type|**tinyint**|For external tables over a HADOOP external data source, this is the way rejected rows are counted when querying external data.|VALUE – the number of rejected rows.<br /><br /> PERCENTAGE – the percentage of rejected rows.|  
|reject_value|**float**|For external tables over a HADOOP external data source:<br /><br /> For *reject_type =* value, this is the number of row rejections to allow before failing the query.<br /><br /> For *reject_type* = percentage, this is the percentage of row rejections to allow before failing the query.||  
|reject_sample_value|**int**|For *reject_type* = percentage, this is the number of rows to load, either successfully or unsuccessfully, before calculating the percentage of rejected rows.|NULL if reject_type = VALUE.|  
|distribution_type|**int**|For external tables over a SHARD_MAP_MANAGER external data source, this is the data distribution of the rows across the underlying base tables.|0 – Sharded<br /><br /> 1 – Replicated<br /><br /> 2 – Round robin|  
|distribution_desc|**nvarchar(120)**|For external tables over a SHARD_MAP_MANAGER external data source, this is the distribution type displayed as a string.||  
|sharding_column_id|**int**|For external tables over a SHARD_MAP_MANAGER external data source and a sharded distribution, this is the column ID of the column that contains the sharding key values.||  
|remote_schema_name|**sysname**|For external tables over a SHARD_MAP_MANAGER external data source, this is the schema where the base table is located on the remote databases (if different from the schema where the external table is defined).||  
|remote_object_name|**sysname**|For external tables over a SHARD_MAP_MANAGER external data source, this is the name of the base table on the remote databases (if different from the name of the external table).||  
  
## Permissions  
 The visibility of the metadata in catalog views is limited to securables that a user either owns or on which the user has been granted some permission. For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [sys.external_file_formats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.external-file-formats-transact-sql.md)   
 [sys.external_data_sources &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.external-data-sources-transact-sql.md)   
 [CREATE EXTERNAL TABLE &#40;Transact-SQL&#41;](../../../t-sql/statements/create-external-table-transact-sql.md)  
  
  