---
title: "sys.external_data_sources (Transact-SQL) | Microsoft Docs"
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
ms.assetid: 1016db6e-9950-4ae2-a004-bd4171e27359
caps.latest.revision: 7
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.external_data_sources (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-all_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2016-all-md.md)]

  Contains a row for each external data source in the current database for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], [!INCLUDE[ssSDS](../../../analysis-services/multidimensional-models/includes/sssds-md.md)], and [!INCLUDE[ssSDW](../../../database-engine/configure/windows/includes/sssdw-md.md)].  
  
 Contains a row for each external data source on the server for [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)].  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|data_source_id|**int**|Object ID for the external data source.||  
|name|**sysname**|Name of the external data source.||  
|location|**nvarchar(4000)**|The connection string, which includes the protocol, IP address, and port for the external data source.||  
|type_desc|**nvarchar(255)**|Data source type displayed as a string.|HADOOP, RDBMS, SHARD_MAP_MANAGER, RemoteDataArchiveTypeExtDataSource|  
|type|**tinyint**|Data source type displayed as a number.|0 - HADOOP<br /><br /> 1 - RDBMS<br /><br /> 2 - SHARD_MAP_MANAGER<br /><br /> 3 - RemoteDataArchiveTypeExtDataSource|  
|resource_manager_location|**nvarchar(4000)**|For type HADOOP, the IP and port location of the Hadoop resource manager. This is used for submitting a job on a Hadoop data source.<br /><br /> NULL for other types of external data sources.||  
|credential_id|**int**|The object ID of the database scoped credential used to connect to the external data source.||  
|database_name|**sysname**|For type RDBMS, the name of the remote database. For type, SHARD_MAP_MANAGER, the name of the shard map manager database. NULL for other types of external data sources.||  
|shard_map_name|**sysname**|For type SHARD_MAP_MANAGER, the name of the shard map. NULL for other types of external data sources.||  
  
## Permissions  
 The visibility of the metadata in catalog views is limited to securables that a user either owns or on which the user has been granted some permission. For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [sys.external_file_formats &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.external-file-formats-transact-sql.md)   
 [sys.external_tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.external-tables-transact-sql.md)   
 [CREATE EXTERNAL DATA SOURCE &#40;Transact-SQL&#41;](../../../t-sql/statements/create-external-data-source-transact-sql.md)  
  
  