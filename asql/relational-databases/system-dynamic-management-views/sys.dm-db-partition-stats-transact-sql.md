---
title: "sys.dm_db_partition_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "dm_db_partition_stats"
  - "dm_db_partition_stats_TSQL"
  - "sys.dm_db_partition_stats_TSQL"
  - "sys.dm_db_partition_stats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_db_partition_stats dynamic management view"
ms.assetid: 9db9d184-b3a2-421e-a804-b18ebcb099b7
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.dm_db_partition_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns page and row-count information for every partition in the current database.  
  
> [!NOTE]  
>  To call this from [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)], use the name **sys.dm_pdw_nodes_db_partition_stats**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**partition_id**|**bigint**|ID of the partition. This is unique within a database. This is the same value as the **partition_id** in the **sys.partitions** catalog view|  
|**object_id**|**int**|Object ID of the table or indexed view that the partition is part of.|  
|**index_id**|**int**|ID of the heap or index the partition is part of.<br /><br /> 0 = Heap<br /><br /> 1 = Clustered index.<br /><br /> > 1 = Nonclustered index|  
|**partition_number**|**int**|1-based partition number within the index or heap.|  
|**in_row_data_page_count**|**bigint**|Number of pages in use for storing in-row data in this partition. If the partition is part of a heap, the value is the number of data pages in the heap. If the partition is part of an index, the value is the number of pages in the leaf level. (Nonleaf pages in the B-tree are not included in the count.) IAM (Index Allocation Map) pages are not included in either case. Always 0 for an xVelocity memory optimized columnstore index.|  
|**in_row_used_page_count**|**bigint**|Total number of pages in use to store and manage the in-row data in this partition. This count includes nonleaf B-tree pages, IAM pages, and all pages included in the **in_row_data_page_count** column. Always 0 for a columnstore index.|  
|**in_row_reserved_page_count**|**bigint**|Total number of pages reserved for storing and managing in-row data in this partition, regardless of whether the pages are in use or not. Always 0 for a columnstore index.|  
|**lob_used_page_count**|**bigint**|Number of pages in use for storing and managing out-of-row **text**, **ntext**, **image**, **varchar(max)**, **nvarchar(max)**, **varbinary(max)**, and **xml** columns within the partition. IAM pages are included.<br /><br /> Total number of LOBs used to store and manage columnstore index in the partition.|  
|**lob_reserved_page_count**|**bigint**|Total number of pages reserved for storing and managing out-of-row **text**, **ntext**, **image**, **varchar(max)**, **nvarchar(max)**, **varbinary(max)**, and **xml** columns within the partition, regardless of whether the pages are in use or not. IAM pages are included.<br /><br /> Total number of LOBs reserved for storing and managing a columnstore index in the partition.|  
|**row_overflow_used_page_count**|**bigint**|Number of pages in use for storing and managing row-overflow **varchar**, **nvarchar**, **varbinary**, and **sql_variant** columns within the partition. IAM pages are included.<br /><br /> Always 0 for a columnstore index.|  
|**row_overflow_reserved_page_count**|**bigint**|Total number of pages reserved for storing and managing row-overflow **varchar**, **nvarchar**, **varbinary**, and **sql_variant** columns within the partition, regardless of whether the pages are in use or not. IAM pages are included.<br /><br /> Always 0 for a columnstore index.|  
|**used_page_count**|**bigint**|Total number of pages used for the partition. Computed as **in_row_used_page_count** + **lob_used_page_count** + **row_overflow_used_page_count**.|  
|**reserved_page_count**|**bigint**|Total number of pages reserved for the partition. Computed as **in_row_reserved_page_count** + **lob_reserved_page_count** + **row_overflow_reserved_page_count**.|  
|**row_count**|**bigint**|The approximate number of rows in the partition.|  
|**pdw_node_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The identifier for the node that this distribution is on.|  
|**distribution_id**|**int**|**Applies to**: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)], [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]<br /><br /> The unique numeric id associated with the distribution.|  
  
## Remarks  
 **sys.dm_db_partition_stats** displays information about the space used to store and manage in-row data LOB data, and row-overflow data for all partitions in a database. One row is displayed per partition.  
  
 The counts on which the output is based are cached in memory or stored on disk in various system tables.  
  
 In-row data, LOB data, and row-overflow data represent the three allocation units that make up a partition. The [sys.allocation_units](../../relational-databases/system-catalog-views/sys.allocation-units-transact-sql.md) catalog view can be queried for metadata about each allocation unit in the database.  
  
 If a heap or index is not partitioned, it is made up of one partition (with partition number = 1); therefore, only one row is returned for that heap or index. The [sys.partitions](../../relational-databases/system-catalog-views/sys.partitions-transact-sql.md) catalog view can be queried for metadata about each partition of all the tables and indexes in a database.  
  
 The total count for an individual table or an index can be obtained by adding the counts for all relevant partitions.  
  
## Permissions  
 Requires VIEW DATABASE STATE permission to query the **sys.dm_db_partition_stats** dynamic management view. For more information about permissions on dynamic management views, see [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md).  
  
## Examples  
  
### A. Returning all counts for all partitions of all indexes and heaps in a database  
 The following example shows all counts for all partitions of all indexes and heaps in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT * FROM sys.dm_db_partition_stats;  
GO  
```  
  
### B. Returning all counts for all partitions of a table and its indexes  
 The following example shows all counts for all partitions of the `HumanResources.Employee` table and its indexes.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT * FROM sys.dm_db_partition_stats   
WHERE object_id = OBJECT_ID('HumanResources.Employee');  
GO  
```  
  
### C. Returning total used pages and total number of rows for a heap or clustered index  
 The following example returns total used pages and total number of rows for the heap or clustered index of the `HumanResources.Employee` table. Because the `Employee` table is not partitioned by default, note the sum includes only one partition.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT SUM(used_page_count) AS total_number_of_used_pages,   
    SUM (row_count) AS total_number_of_rows   
FROM sys.dm_db_partition_stats  
WHERE object_id=OBJECT_ID('HumanResources.Employee')    AND (index_id=0 or index_id=1);  
GO  
```  
  
## See Also  
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  
  
  

