---
title: "MSmerge_partition_groups (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSmerge_partition_groups_TSQL"
  - "MSmerge_partition_groups"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSmerge_partition_groups system table"
ms.assetid: 5d56d780-ee40-4afc-9c2a-d1723d86e430
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSmerge_partition_groups (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSmerge_partition_groups** table stores one row for each precomputed partition in a given database. In addition to the columns listed, one column is added to this table for each function used in a parameterized row filter. For example, a column named **HOST_NAME_FN** is added to the table if a filter uses the [HOST_NAME](../../../t-sql/functions/host-name-transact-sql.md) function. One row is stored for each unique set of function values that have synchronized with this Publisher. Two or more Subscribers synchronizing with exactly the same value for all of these functions will share the same row in this table and will therefore all share the same partition id. This table is stored in the publication database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**partition_id**|**int**|Identity column that provides a unique ID number for the precomputed partition.|  
|**publication_number**|**smallint**|The publication number, which is stored in **sysmergepublications**.|  
|**maxgen_whenadded**|**bigint**|The highest generation known at the Publisher at the time the row is inserted in this table.|  
|**using_partition_groups**|**bit**|Indicates whether the partition belongs to a publication that uses precomputed partitions, and can be one of these values:<br /><br /> **0** = publication does not use precomputed partitions.<br /><br /> **1** = publication uses precomputed partitions<br /><br /> For more information, see [Optimize Parameterized Filter Performance with Precomputed Partitions](../../../relational-databases/replication/merge/parameterized-filters-optimize-for-precomputed-partitions.md).|  
|**HOST_NAME_FN**|**nvarchar(128)**|The value supplied when using parameterized row filters to generate partitions. For more information, see [Parameterized Row Filters](../../../relational-databases/replication/merge/parameterized-filters-parameterized-row-filters.md).|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  