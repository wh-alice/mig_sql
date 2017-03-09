---
title: "sys.pdw_database_mappings (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 4ae2c71e-dd56-41ea-a16b-64936175b459
caps.latest.revision: 9
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.pdw_database_mappings (Transact-SQL)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Maps the **database_id**s of databases to the physical name used on Compute nodes, and provides the **principal id** of the database owner on the system. Join **sys.pdw_database_mappings** to **sys.databases** and **sys.pdw_nodes_pdw_physical_databases**.  
  
|Column Name|Data Type|Description|Range|  
|-----------------|---------------|-----------------|-----------|  
|physical_name|**nvarchar(36)**|The physical name for the database on the Compute nodes.<br /><br /> **physical_name** and **database_id** form the key for this view.||  
|database_id|**int**|The object ID for the database. See [sys.databases &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md).<br /><br /> **physical_name** and **database_id** form the key for this view.||  
  
## Examples: [!INCLUDE[ssSDWfull](../../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example joins sys.pdw_database_mappings to other system tables to show how databases are mapped.  
  
```  
SELECT DB.database_id, DB.name, Map.*, Phys.*   
FROM sys.databases AS DB  
JOIN sys.pdw_database_mappings AS Map  
    ON DB.database_id = Map.database_id  
JOIN sys.pdw_nodes_pdw_physical_databases AS Phys  
    ON Map.physical_name = Phys.physical_name  
ORDER BY DB.database_id, Phys.pdw_node_id;  
```  
  
## See Also  
 [SQL Data Warehouse and Parallel Data Warehouse Catalog Views](../../../relational-databases/reference/system-catalog-views/sql-data-warehouse-and-parallel-data-warehouse-catalog-views.md)   
 [sys.pdw_index_mappings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-index-mappings-transact-sql.md)   
 [sys.pdw_table_mappings &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-table-mappings-transact-sql.md)   
 [sys.pdw_nodes_pdw_physical_databases &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.pdw-nodes-pdw-physical-databases-transact-sql.md)  
  
  

