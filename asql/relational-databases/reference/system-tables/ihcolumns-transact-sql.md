---
title: "IHcolumns (Transact-SQL) | Microsoft Docs"
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
  - "IHcolumns_TSQL"
  - "IHcolumns"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IHcolumns system table"
ms.assetid: 5bb027e5-5279-487b-9c33-5f402987253c
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# IHcolumns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **IHcolumns** system table contains one row for each published column. This table is used to define how column data types from the non-SQL Server Publisher will be represented when published, which essentially maps data types between a non-SQL Server database management systems (DBMS) and SQL Server. This table is stored in the distribution database.  
  
## Definition  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**column_id**|**int**|Identifies a published column.|  
|**publishercolumn_id**|**int**|Associates a published column with column metadata stored in the [IHpublishercolumns](../../../relational-databases/reference/system-tables/ihpublishercolumns-transact-sql.md) system table.|  
|**name**|**sysname**|Specifies the column name.|  
|**article_id**|**int**|Identifies the article to which the column belongs.|  
|**column_ordinal**|**int**|Identifies the column by order.|  
|**mapped_type**|**tinyint**|The column data type of the destination column at Subscriber.|  
|**mapped_length**|**bigint**|The length of the column at Subscriber.|  
|**mapped_prec**|**int**|The precision of the column at Subscriber.|  
|**mapped_scale**|**int**|The scale of the column at Subscriber.|  
|**mapped_nullable**|**bit**|Indicates whether the column at the Subscriber accepts NULL values, where **1** means that NULL values are accepted.|  
  
## See Also  
 [Heterogeneous Database Replication](../../../relational-databases/replication/non-sql/heterogeneous-database-replication.md)   
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)   
 [sp_articlecolumn &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md)   
 [sysarticlecolumns &#40;System View&#41; &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/sysarticlecolumns-system-view-transact-sql.md)   
 [sysarticlecolumns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/sysarticlecolumns-transact-sql.md)  
  
  