---
title: "IHpublishercolumns (Transact-SQL) | Microsoft Docs"
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
  - "IHpublishercolumns"
  - "IHpublishercolumns_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IHpublishercolumns system table"
ms.assetid: a5347750-224c-40d9-ae12-57e7213b7db9
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# IHpublishercolumns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **IHpublishercolumns** system table represents metadata stored at the publisher. This table contains one row for each column replicated from non-SQL Server Publishers using the current Distributor. Data type information in **IHpublishercolumns** is specific to the non-SQL Server database management system (DBMS) from which the data is published. This table is stored in the distribution database.  
  
## Definition  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**publishercolumn_id**|**int**|Identifies a published column.|  
|**table_id**|**int**|Identifies the source table from [IHpublishertables](../../relational-databases/system-tables/ihpublishertables-transact-sql.md) to which the column belongs.|  
|**publisher_id**|**smallint**|Identifies the non-SQL Server Publisher from which the column is being published.|  
|**name**|**sysname**|The name of the published column.|  
|**column_ordinal**|**int**|Identifies the column by order.|  
|**type**|**varchar(255)**|The column data type of the source column at Publisher.|  
|**length**|**bigint**|The length of the source column at Publisher.|  
|**prec**|**int**|The precision of the source column at Publisher.|  
|**scale**|**int**|The scale of the source column at Publisher.|  
|**isnullable**|**bit**|Indicates whether the column accepts NULL values, where **1** means that NULL values are accepted.|  
|**iscaptured**|**bit**|Indicates whether a trigger exists on the column, which may exist even if the column in not published in an article. A value of **1** means that the trigger exists on the column.|  
  
## See Also  
 [Heterogeneous Database Replication](../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)   
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)   
 [sysarticlecolumns &#40;System View&#41; &#40;Transact-SQL&#41;](../../relational-databases/system-views/sysarticlecolumns-system-view-transact-sql.md)   
 [sysarticlecolumns &#40;Transact-SQL&#41;](../../relational-databases/system-tables/sysarticlecolumns-transact-sql.md)  
  
  