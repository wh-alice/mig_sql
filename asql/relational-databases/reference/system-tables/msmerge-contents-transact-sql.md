---
title: "MSmerge_contents (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "MSmerge_contents"
  - "MSmerge_contents_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSmerge_contents system table"
ms.assetid: 8d68a61a-683f-4b20-92f9-c0a8d9ba0ad1
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSmerge_contents (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSmerge_contents** table contains one row for each row modified in the current database since it was published. This table is used by the merge process to determine the rows that have changed. This table is stored in the publication and subscription databases.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**tablenick**|**int**|The nickname of the published table.|  
|**rowguid**|**uniqueidentifier**|The row identifier for the given row.|  
|**generation**|**bigint**|The generation of the row identified by the **tablenick** and **rowguid**.|  
|**partchangegen**|**bigint**|The generation associated with the last data change that could have changed whether the row belongs in a filtered publication.|  
|**lineage**|**varbinary(501)**|The subscriber nickname, version number pairs that are used to maintain a history of changes to this row.|  
|**colvl**|**varbinary(7489)**|The column version information.|  
|**marker**|**uniqueidentifier**|[!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**logical_record_parent_rowguid**|**uniqueidentifier**|Identifies the top-level parent row in **MSmerge_contents** (by **rowguid**) for each corresponding child row in a logical record.|  
|**logical_record_lineage**|**varbinary(501)**|Subscriber nickname, version number pairs that are used to maintain a history of changes to the top-level parent row in a logical record. For all child rows in a logical record, this value is NULL.|  
|**logical_relation_change_gen**|**bigint**|The generation value associated with the last change that caused realignment in the logical record, where an existing row moved into or out of a logical record.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)  
  
  