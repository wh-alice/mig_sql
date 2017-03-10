---
title: "IHpublisherindexes (Transact-SQL) | Microsoft Docs"
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
  - "IHpublisherindexes"
  - "IHpublisherindexes_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IHpublisherindexes system table"
ms.assetid: 6008ef89-eeb9-46dc-93a2-f7623298cf0f
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# IHpublisherindexes (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **IHpublisherindexes** system table contains one row for each index replicated from non-SQL Server Publishers using the current Distributor. This table is stored in the distribution database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publisherindex_id**|**int**|Identifies a published index.|  
|**table_id**|**int**|Identifies the table from [IHpublishertables](../../../relational-databases/reference/system-tables/ihpublishertables-transact-sql.md) to which the index belongs.|  
|**publisher_id**|**smallint**|Identifies the non-SQL Server Publisher from which the index is being published.|  
|**name**|**sysname**|The name of the published index.|  
|**type**|**nvarchar(255)**|A supported index type from the [IHindextypes](../../../relational-databases/reference/system-tables/ihindextypes-transact-sql.md) system table.|  
  
## See Also  
 [Heterogeneous Database Replication](../../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)   
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  