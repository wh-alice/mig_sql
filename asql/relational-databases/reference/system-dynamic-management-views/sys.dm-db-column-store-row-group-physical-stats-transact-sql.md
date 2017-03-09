---
title: "sys.dm_db_column_store_row_group_physical_stats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-27"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.dm_db_column_store_row_group_physical_stats_TSQL"
  - "sys.dm_db_column_store_row_group_physical_stats"
  - "dm_db_column_store_row_group_physical_stats"
  - "dm_db_column_store_row_group_physical_stats_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "dm_db_column_store_row_group_physical_stats"
  - "sys.dm_db_column_store_row_group_physical_stats dynamic management view"
ms.assetid: f4c81104-7fe4-408f-9779-8808172dfdd2
caps.latest.revision: 15
ms.author: "barbkess"
manager: "jhubbard"
---
# sys.dm_db_column_store_row_group_physical_stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Provides current rowgroup-level information about all of the columnstore indexes in the current database.  
  
 This extends the catalog view [sys.column_store_row_groups &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.column-store-row-groups-transact-sql.md).  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the underlying table.|  
|**index_id**|**int**|ID of this columnstore index on *object_id* table.|  
|**partition_number**|**int**|ID of the table partition that holds *row_group_id*. You can use partition_number to join this DMV to sys.partitions.|  
|**row_group_id**|**int**|ID of this row group. For partitioned tables, this is unique within the partition.<br /><br /> -1 for an in-memory tail.|  
|**delta_store_hobt_id**|**bigint**|The hobt_id for a row group in the delta store.<br /><br /> NULL if row group is not in the delta store.<br /><br /> NULL for tail of an in-memory table.|  
|**state**|**tinyint**|ID number associated *state_description*.<br /><br /> 0 = INVISIBLE<br /><br /> 1 = OPEN<br /><br /> 2 = CLOSED<br /><br /> 3 = COMPRESSED<br /><br /> 4 = TOMBSTONE<br /><br /> COMPRESSED is the only state that applies to in-memory tables.|  
|**state_desc**|**nvarchar(60)**|Description of the row group state:<br /><br /> INVISIBLE –A row group that is being built. For example: <br />A row group in the columnstore is INVISIBLE while the data is being compressed. When the compression is finished a metadata switch changes the state of the columnstore row group from INVISIBLE to COMPRESSED, and the state of the deltastore row group from CLOSED to TOMBSTONE.<br /><br /> OPEN – A deltastore row group that is accepting new rows. An open row group is still in rowstore format and has not been compressed to columnstore format.<br /><br /> CLOSED – A row group in the delta store that contains the maximum number of rows, and is waiting for the tuple mover process to compress it into the columnstore.<br /><br /> COMPRESSED – A row group that is compressed with columnstore compression and stored in the columnstore.<br /><br /> TOMBSTONE – A row group that was formerly in the deltastore and is no longer used.|  
|**total_rows**|**bigint**|Number of rows physical stored in the row group. For compressed row groups, this includes the rows that are marked deleted.|  
|**deleted_rows**|**bigint**|Number of rows physically stored in a compressed row group that are marked for deletion.<br /><br /> 0 for row groups that are in the delta store.|  
|**size_in_bytes**|**bigint**|Combined size, in bytes, of all the pages in this row group. This size does not include the size required to store metadata or shared dictionaries.|  
|**transition_to_compressed_state**|tinyint|Shows how this rowgroup got moved from the deltastore to a compressed state in the columnstore.<br /><br /> 1- NOT_APPLICABLE<br /><br /> 2 – INDEX_BUILD<br /><br /> 3 – TUPLE_MOVER<br /><br /> 4 – REORG_NORMAL<br /><br /> 5 – REORG_FORCED<br /><br /> 6 - BULKLOAD<br /><br /> 7 - MERGE|  
|**transition_to_compressed_state_desc**|nvarchar(60)|NOT_APPLICABLE – the operation does not apply to the deltastore. Or, the rowgroup was compressed prior to upgrading to [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)] in which case the history is not preserved.<br /><br /> INDEX_BUILD – An index create or index rebuild compressed the rowgroup.<br /><br /> TUPLE_MOVER – The tuple mover running in the background compressed the rowgroup. This happens after the rowgroup changes state from OPEN to CLOSED.<br /><br /> REORG_NORMAL – The reorganization operation, ALTER INDEX … REORG, moved the CLOSED rowgroup from the deltastore to the columnstore. This occurred before the tuple-mover had time to move the rowgroup.<br /><br /> REORG_FORCED – This rowgroup was open in the deltastore and was forced into the columnstore before it had a full number of rows.<br /><br /> BULKLOAD – A bulk load operation compressed the rowgroup directly without using the deltastore.<br /><br /> MERGE – A merge operation consolidated one or more rowgroups into this rowgroup and then performed the columnstore compression.|  
|**trim_reason**|**ing**|Reason that triggered the COMPRESSED row group to have less than the maximum number of rows.<br /><br /> 0 – UNKNOWN_UPGRADED_FROM_PREVIOUS_VERSION<br /><br /> 1 - NO_TRIM<br /><br /> 2 - BULKLOAD<br /><br /> 3 – REORG<br /><br /> 4 – DICTIONARY_SIZE<br /><br /> 5 – MEMORY_LIMITATION<br /><br /> 6 – RESIDUAL_ROW_GROUP<br /><br /> 7  -  STATS_MISMATCH<br /><br /> 8 - SPILLOVER|  
|**trim_reason_desc**|**nvarchar(60)**|Description of *trim_reason*.<br /><br /> 0 – UNKNOWN_UPGRADED_FROM_PREVIOUS_VERSION: Occurred when upgrading from the previous version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].<br /><br /> 1 - NO_TRIM: The row group was not trimmed. The row group was compressed with the maximum of 1,048,476 rows.  The number of rows could be less if a subsset of rows was deleted after delta rowgroup was closed<br /><br /> 2 – BULKLOAD: The bulk load batch size limited the number of rows.<br /><br /> 3 – REORG:  Forced compression as part of REORG command.<br /><br /> 4 – DICTIONARY_SIZE: Dictionary size grew too big to compress all of the rows together.<br /><br /> 5 – MEMORY_LIMITATION: Not enough available memory to compress all the rows together.<br /><br /> 6 – RESIDUAL_ROW_GROUP:  Closed as part of last row group with rows < 1 million during index build operation<br /><br /> STATS_MISMATCH: Only for columnstore on in-memory table. If stats incorrectly indicated >= 1 million qualified rows in the tail but we found fewer, the compressed rowgroup will have < 1 million rows<br /><br /> SPILLOVER: Only for columnstore on in-memory table. If tail has > 1 million qualified rows, the last batch remaining rows are compressed if the count is between 100k and 1 million|  
|**has_vertipaq_optimization**|bit|Vertipaq optimization improves columnstore compression by rearranging the order of the rows in the rowgroup to achieve higher compression. This optimization occurs automatically in most cases. There are two cases Vertipaq optimization is not used:<br/>  a. when a delta rowgroup moves into the columnstore and there are one or more nonclustered indexes on the columnstore index - in this case Vertipaq optimization is skipped to minimizes changes to the mapping index;<br/> b. for columnstore indexes on memory-optimized tables. <br /><br /> 0 = No<br /><br /> 1 = Yes|  
|**creation_time**|datetime2|Clock time for when this rowgroup was created.<br /><br /> NULL – for a columnstore index on an in-memory table.|  
  
## Results  
 Returns one row for each rowgroup in the current database.  
  
## Permissions  
 Requires these permissions:  
  
-   CONTROL permission on the table.  
  
-   VIEW DATABASE STATE permission on the database.  
  
## Examples  
  
### A. Calculate fragmentaton to decide when to reorganize or rebuild a columnstore index.  
 For columnstore indexes, the percent of deleted rows  is a good measure for the fragmentation in a rowgroup. When the fragmentation is 20% or more we recommend removing the deleted rows.  For examples, see [Columnstore Indexes Defragmentation](../Topic/Columnstore%20Indexes%20Defragmentation.md).  
  
 This example joins **sys.dm_db_column_store_row_group_physical_stats** with other system tables and then calculates the `Fragmentation` column as an estimate of the efficiency of each row group in the current database.     To find information on a single table remove the comment hyphens in front of the **WHERE** clause and provide a table name.  
  
```  
SELECT i.object_id,   
    object_name(i.object_id) AS TableName,   
    i.name AS IndexName,   
    i.index_id,   
    i.type_desc,   
    CSRowGroups.*,  
    100*(ISNULL(deleted_rows,0))/total_rows AS 'Fragmentation'  
FROM sys.indexes AS i  
JOIN sys.dm_db_column_store_row_group_physical_stats AS CSRowGroups  
    ON i.object_id = CSRowGroups.object_id AND i.index_id = CSRowGroups.index_id   
-- WHERE object_name(i.object_id) = 'table_name'   
ORDER BY object_name(i.object_id), i.name, row_group_id;  
```  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)   
 [sys.columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.columns-transact-sql.md)   
 [sys.all_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.all-columns-transact-sql.md)   
 [sys.computed_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.computed-columns-transact-sql.md)   
 [Columnstore Indexes Guide](../Topic/Columnstore%20Indexes%20Guide.md)   
 [sys.column_store_dictionaries &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.column-store-dictionaries-transact-sql.md)   
 [sys.column_store_segments &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.column-store-segments-transact-sql.md)  
  
  