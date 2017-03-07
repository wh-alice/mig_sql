---
title: "cdc.index_columns (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "cdc.index_columns_TSQL"
  - "cdc.index_columns"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "cdc.index_columns"
ms.assetid: 256ec8a5-3031-40a8-9fdb-99db42ea453d
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# cdc.index_columns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns one row for each index column associated with a change table. The index columns are used by change data capture to uniquely identify rows in the source table. By default, the columns of the primary key of the source table are included. However, if a unique index on the source table is specified when change data capture is enabled on the source table, columns in that index are used instead. A primary key or unique index is required on the source table if net change tracking is enabled. For more information, see [sys.sp_cdc_enable_table &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-enable-table-transact-sql.md).  
  
 We recommend that you do not query the system tables directly. Instead, execute the [sys.sp_cdc_help_change_data_capture](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-help-change-data-capture-transact-sql.md) stored procedure.  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the change table.|  
|**column_name**|**sysname**|Name of the index column.|  
|**index_ordinal**|**tinyint**|Ordinal (1-based) of the column within the index.|  
|**column_id**|**int**|ID of the column in the source table.|  
  
## See Also  
 [cdc.change_tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/cdc.change-tables-transact-sql.md)  
  
  