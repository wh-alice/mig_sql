---
title: "sys.pdw_nodes_indexes (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 261bcb7f-a906-4979-b274-bc5f1aa66426
caps.latest.revision: 7
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.pdw_nodes_indexes (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../a9retired/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Returns indexes for [!INCLUDE[ssSDW](../../../a9retired/includes/sssdw-md.md)].  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|object_id|**int**|id of the object to which this index belongs.||  
|name|**sysname**|Name of the index. Name is unique only within the object. NULL = Heap||  
|index_id|**int**|id of the index. index_id is unique only within the object.<br /><br /> 0 = Heap<br /><br /> 1 = Clustered index<br /><br /> > 1 = Non-clustered index||  
|type|**tinyint**|Type of index:<br /><br /> 0 = Heap<br /><br /> 1 = Clustered<br /><br /> 2 = Non-clustered<br /><br /> 5 = Clustered xVelocity memory optimized columnstore index|  
|type_desc|**nvarchar(60)**|Description of index type:<br /><br /> HEAP<br /><br /> CLUSTERED<br /><br /> NONCLUSTERED<br /><br /> CLUSTERED   COLUMNSTORE||  
|is_unique|**bit**|0 = Index is not unique.|Always 0.|  
|data_space_id|**int**|id of the data space for this index. Data space is either a filegroup or partition scheme.<br /><br /> 0 = object_id is a table-valued function.||  
|ignore_dup_key|**bit**|0 = IGNORE_DUP_KEY is OFF.|Always 0.|  
|is_primary_key|**bit**|1 = Index is part of a PRIMARY KEY constraint.|Always 0.|  
|is_unique_constraint|**bit**|1 = Index is part of a UNIQUE constraint.|Always 0.|  
|fill_factor|**tinyint**|> 0 = FILLFACTOR percentage used when the index was created or rebuilt.<br /><br /> 0 = Default value|Always 0.|  
|is_padded|**bit**|0 = PADINDEX is OFF.|Always 0.|  
|is_disabled|**bit**|1 = Index is disabled.<br /><br /> 0 = Index is not disabled.||  
|is_hypothetical|**bit**|0 = Index is not hypothetical.|Always 0.|  
|allow_row_locks|**bit**|1 = Index allows row locks.|Always 1.|  
|allow_page_locks|**bit**|1 = Index allows page locks.|Always 1.|  
|has_filter|**bit**|0 = Index does not have a filter.|Always 0.|  
|filter_definition|**nvarchar(max)**|Expression for the subset of rows included in the filtered index.|Always NULL.|  
|pdw_node_id|**int**|Unique identifier of a [!INCLUDE[ssSDW](../../../a9retired/includes/sssdw-md.md)] node.|NOT NULL|  
  
## Permissions  
 Requires CONTROL SERVER permission.  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Catalog Views](../../../relational-databases/reference/system-catalog-views/sql-data-warehouse-and-parallel-data-warehouse-catalog-views.md)  
  
  