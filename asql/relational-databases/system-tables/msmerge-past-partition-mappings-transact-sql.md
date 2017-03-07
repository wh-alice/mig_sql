---
title: "MSmerge_past_partition_mappings (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "MSmerge_past_partition_mappings"
  - "MSmerge_past_partition_mappings_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSmerge_past_partition_mappings system table"
ms.assetid: 06d54ff5-4d29-4eeb-b8be-64d032e53134
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSmerge_past_partition_mappings (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSmerge_past_partition_mappings** table stores one row for each partition id a given changed row used to belong to, but no longer belongs to. This table is stored in the publication database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publication_number**|**smallint**|The publication number, which is stored in **sysmergepublications**.|  
|**tablenick**|**int**|The nickname of the published table.|  
|**rowguid**|**uniqueidentifier**|The row identifier for the given row.|  
|**partition_id**|**int**|The ID of the partition the row belongs to. The value is –1 if the row change is relevant to all Subscribers.|  
|**generation**|**bigint**|The value of the generation in which the partition change occurred.|  
|**reason**|**tinyint**|Internal-use only.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  