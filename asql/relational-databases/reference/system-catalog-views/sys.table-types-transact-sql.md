---
title: "sys.table_types (Transact-SQL) | Microsoft Docs"
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
  - "table_types_TSQL"
  - "sys.table_types"
  - "sys.table_types_TSQL"
  - "table_types"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "table types [SQL Server]"
  - "table-valued parameters, sys.table_types"
  - "sys.table_types"
  - "UDTT"
ms.assetid: c05fd873-aff2-4a89-9936-a54c2ea09996
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.table_types (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Displays properties of user-defined table types in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. A table type is a type from which table variables or table-valued parameters could be declared. Each table type has a **type_table_object_id** that is a foreign key into the [sys.objects](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md) catalog view. You can use this ID column to query various catalog views, in a way that is similar to an **object_id** column of a regular table, to discover the structure of the table type such as its columns and constraints.    
 
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|*\<inherited columns>*||For a list of columns that this view inherits, see [sys.types &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md).|  
|**type_table_object_id**|**int**|Object identification number. This number is unique within a database.|  
|**is_memory_optimized**|**bit**|**Applies to**: [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> The following are the possible values:<br /><br /> 0 = is not memory optimized<br /><br /> 1 = is memory optimized<br /><br /> A value of 0 is the default value.<br /><br /> Table types are always created with DURABILITY = SCHEMA_ONLY. Only the schema is persisted on disk.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Use Table-Valued Parameters &#40;Database Engine&#41;](../../../relational-databases/tables/use-table-valued-parameters-database-engine.md)   
 [In-Memory OLTP &#40;In-Memory Optimization&#41;](../../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md)  
  
  