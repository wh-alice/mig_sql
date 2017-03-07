---
title: "Indexes | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-indexes"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "index types [SQL Server]"
ms.assetid: 00863b10-e77c-44c5-8ac2-bb4ac454eec6
caps.latest.revision: 45
ms.author: "rickbyh"
manager: "jhubbard"
---
# Indexes
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  The following table lists the types of indexes available in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and provides links to additional information.  
  
|Index type|Description|Additional information|  
|----------------|-----------------|----------------------------|  
|Hash|With a hash index, data is accessed through an in-memory hash table. Hash indexes consume a fixed amount of memory, which is a function of the bucket count.|[Guidelines for Using Indexes on Memory-Optimized Tables](../Topic/Guidelines%20for%20Using%20Indexes%20on%20Memory-Optimized%20Tables.md)|  
|memory-optimized nonclustered indexes|For memory-optimized nonclustered indexes, memory consumption is a function of the row count and the size of the index key columns|[Guidelines for Using Indexes on Memory-Optimized Tables](../Topic/Guidelines%20for%20Using%20Indexes%20on%20Memory-Optimized%20Tables.md)|  
|Clustered|A clustered index sorts and stores the data rows of the table or view in order based on the clustered index key. The clustered index is implemented as a B-tree index structure that supports fast retrieval of the rows, based on their clustered index key values.|[Clustered and Nonclustered Indexes Described](../../relational-databases/indexes/clustered-and-nonclustered-indexes-described.md)<br /><br /> [Create Clustered Indexes](../../relational-databases/indexes/create-clustered-indexes.md)|  
|Nonclustered|A nonclustered index can be defined on a table or view with a clustered index or on a heap. Each index row in the nonclustered index contains the nonclustered key value and a row locator. This locator points to the data row in the clustered index or heap having the key value. The rows in the index are stored in the order of the index key values, but the data rows are not guaranteed to be in any particular order unless a clustered index is created on the table.|[Clustered and Nonclustered Indexes Described](../../relational-databases/indexes/clustered-and-nonclustered-indexes-described.md)<br /><br /> [Create Nonclustered Indexes](../../relational-databases/indexes/create-nonclustered-indexes.md)|  
|Unique|A unique index ensures that the index key contains no duplicate values and therefore every row in the table or view is in some way unique.<br /><br /> Uniqueness can be a property of both clustered and nonclustered indexes.|[Create Unique Indexes](../../relational-databases/indexes/create-unique-indexes.md)|  
|Columnstore|An in-memory columnstore index stores and manages data by using column-based data storage and column-based query processing.<br /><br /> Columnstore indexes work well for data warehousing workloads that primarily perform bulk loads and read-only queries. Use the columnstore index to achieve up to **10x query performance** gains over traditional row-oriented storage, and up to **7x data compression** over the uncompressed data size.|[Columnstore Indexes Guide](../../relational-databases/indexes/columnstore-indexes-overview.md)<br /><br /> [Using Nonclustered Columnstore Indexes](https://msdn.microsoft.com/library/dn589806.aspx)|  
|Index with included columns|A nonclustered index that is extended to include nonkey columns in addition to the key columns.|[Create Indexes with Included Columns](../../relational-databases/indexes/create-indexes-with-included-columns.md)|  
|Index on computed columns|An index on a column that is derived from the value of one or more other columns, or certain deterministic inputs.|[Indexes on Computed Columns](../../relational-databases/indexes/indexes-on-computed-columns.md)|  
|Filtered|An optimized nonclustered index, especially suited to cover queries that select from a well-defined subset of data. It uses a filter predicate to index a portion of rows in the table. A well-designed filtered index can improve query performance, reduce index maintenance costs, and reduce index storage costs compared with full-table indexes.|[Create Filtered Indexes](../../relational-databases/indexes/create-filtered-indexes.md)|  
|Spatial|A spatial index provides the ability to perform certain operations more efficiently on spatial objects (*spatial data*) in a column of the **geometry** data type. The spatial index reduces the number of objects on which relatively costly spatial operations need to be applied.|[Spatial Indexes Overview](../../relational-databases/spatial/spatial-indexes-overview.md)|  
|XML|A shredded, and persisted, representation of the XML binary large objects (BLOBs) in the **xml** data type column.|[XML Indexes &#40;SQL Server&#41;](../../relational-databases/xml/xml-indexes-sql-server.md)|  
|Full-text|A special type of token-based functional index that is built and maintained by the Microsoft Full-Text Engine for [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. It provides efficient support for sophisticated word searches in character string data.|[Populate Full-Text Indexes](../../relational-databases/search/populate-full-text-indexes.md)|  
  
## Related Tasks  
  
## Related Content  
 [SORT_IN_TEMPDB Option For Indexes](../../relational-databases/indexes/sort-in-tempdb-option-for-indexes.md)  
  
 [Disable Indexes and Constraints](../../relational-databases/indexes/disable-indexes-and-constraints.md)  
  
 [Enable Indexes and Constraints](../../relational-databases/indexes/enable-indexes-and-constraints.md)  
  
 [Rename Indexes](../../relational-databases/indexes/rename-indexes.md)  
  
 [Set Index Options](../../relational-databases/indexes/set-index-options.md)  
  
 [Disk Space Requirements for Index DDL Operations](../../relational-databases/indexes/disk-space-requirements-for-index-ddl-operations.md)  
  
 [Reorganize and Rebuild Indexes](../../relational-databases/indexes/reorganize-and-rebuild-indexes.md)  
  
 [Specify Fill Factor for an Index](../../relational-databases/indexes/specify-fill-factor-for-an-index.md)  

[Pages and Extents Architecture Guide](../../guides/pages-and-extents-architecture-guide.md)
  
## See Also  
 [Clustered and Nonclustered Indexes Described](../../relational-databases/indexes/clustered-and-nonclustered-indexes-described.md)  
  
  