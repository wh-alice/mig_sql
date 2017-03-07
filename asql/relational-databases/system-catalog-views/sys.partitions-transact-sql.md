---
title: "sys.partitions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "partitions"
  - "partitions_TSQL"
  - "sys.partitions_TSQL"
  - "sys.partitions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.partitions catalog view"
ms.assetid: 1c19e1b1-c925-4dad-a652-581692f4ab5e
caps.latest.revision: 60
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.partitions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-asdw-pdw-_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-asdb-asdw-pdw-md.md)]

  Contains a row for each partition of all the tables and most types of indexes in the database. Special index types such as Full-Text, Spatial, and XML are not included in this view. All tables and indexes in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] contain at least one partition, whether or not they are explicitly partitioned.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|partition_id|**bigint**|Indicates the partition ID. Is unique within a database.|  
|object_id|**int**|Indicates the ID of the object to which this partition belongs. Every table or view is composed of at least one partition.|  
|index_id|**int**|Indicates the ID of the index within the object to which this partition belongs.<br /><br /> 0 = heap<br />1 = clustered index<br />2 or greater = nonclustered index|  
|partition_number|**int**|Is a 1-based partition number within the owning index or heap. For non-partitioned tables and indexes, the value of this column is 1.|  
|hobt_id|**bigint**|Indicates the ID of the data heap or B-tree that contains the rows for this partition.|  
|rows|**bigint**|Indicates the approximate number of rows in this partition.|  
|filestream_filegroup_id|**smallint**|**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Indicates the ID of the FILESTREAM filegroup stored on this partition.|  
|data_compression|**tinyint**|Indicates the state of compression for each partition:<br /><br /> 0 = NONE <br />1 = ROW <br />2 = PAGE <br />3 = COLUMNSTORE : **Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]<br />4 = COLUMNSTORE_ARCHIVE : **Applies to**: [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]<br /><br /> **Note:** Full text indexes will be compressed in any edition of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|data_compression_desc|**nvarchar(60)**|Indicates the state of compression for each partition. Possible values for rowstore tables are NONE, ROW, and PAGE. Possible values for columnstore tables are COLUMNSTORE and COLUMNSTORE_ARCHIVE.|  
  
## Permissions  
 Requires membership in the **public** role. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Querying the SQL Server System Catalog FAQ](../../relational-databases/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  