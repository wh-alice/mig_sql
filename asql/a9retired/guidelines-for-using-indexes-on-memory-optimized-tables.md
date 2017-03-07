---
title: "Guidelines for Using Indexes on Memory-Optimized Tables | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "hash indexes"
ms.assetid: 16ef63a4-367a-46ac-917d-9eebc81ab29b
caps.latest.revision: 54
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Guidelines for Using Indexes on Memory-Optimized Tables
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  Indexes are used for efficiently accessing data in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] tables. Specifying the right indexes can dramatically improve query performance. Consider, for example, the query:  
  
```tsql  
SELECT  c1, c2, c3  FROM  MyTable  WHERE  c1 = 1;  
```  
  
 If there is no index on column c1, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] will need to scan the entire table MyTable, and then filter on the rows that satisfy the condition c1=1. However, if MyTable has an index on column c1, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] can seek directly on the value 1 and retrieve the rows. When searching for records that have a specific value, or range of values, for one or more columns in the table, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] can use an index on those columns to quickly locate the corresponding records.  
  
 There are three types of indexes on memory-optimized tables:  
  
-   Nonclustered indexes, which are optimized for range scans (inequality seek operations) and ordered scans. When unsure which index to pick, use a nonclustered index.  
  
-   Hash indexes, which are optimized for equality seeks, and do not support range or ordered scans.  For more information about hash indexes, see [Hash Indexes](../a9retired/hash-indexes.md).  
  
     For more information about hash indexes, see [Hash Indexes](../a9retired/hash-indexes.md).  
  
-   Columnstore indexes are optimized for analytics queries that scan and/or aggregate over large sections of data. For more detail see [Get started with Columnstore for real time operational analytics](../relational-databases/indexes/get-started-with-columnstore-for-real-time-operational-analytics.md). The remainder of this topic deals with nonclustered and hash indexes.  
  
 **Hash:** With a hash index, data is accessed through an in-memory hash table. Hash indexes do not have pages and are always of a fixed size. The values returned from a query using a hash index are not sorted. Hash indexes are optimized for index seeks on equality predicates and also support full index scans.  
  
 A hash index is not helpful unless the SELECT...WHERE clause has equality tests for every column in the key of the hash index.  For example, if a hash index key was the two columns c1,c2 in the above SQL SELECT, the query plan would have to scan the whole table, because the WHERE clause has no c2=\<value> equality test.  
  
 **Nonclustered indexes:** Nonclustered indexes (not hash indexes) support everything that hash indexes supports plus seek operations on inequality predicates such as greater than or less than, as well as sort order. Rows can be retrieved according to the order specified with index creation. If the sort order of the index matches the sort order required for a particular query, for example if the index key matches the ORDER BY clause, there is no need to sort the rows as part of query execution. Memory-optimized nonclustered indexes are unidirectional; they do not support retrieving rows in a sort order that is the reverse of the sort order of the index. For example, for an index specified as (c1 ASC), it is not possible to scan the index in reverse order, as (c1 DESC).  
  
 Each index consumes memory. Hash indexes consume a fixed amount of memory, which is a function of the bucket count. For nonclustered indexes, memory consumption is a function of the row count and the size of the index key columns, with some additional overhead depending on the workload. Memory for memory-optimized indexes is in addition to and separate from the memory used to store rows in memory-optimized tables.  
  
## Determining Which Indexes to Use for a Memory-Optimized Table  
 Each memory-optimized table must have at least one index. Note that each PRIMARY KEY constraint implicitly creates an index. Therefore, if a table has a primary key, it has an index. A primary key is a requirement for a durable memory-optimized table.  
  
 When converting a table from disk-based to memory-optimized, best practice is to start with nonclustered indexes that mirror the index keys of the clustered and nonclustered indexes on the disk-based table. If it then turns out that a given index is only used for primary/unique key enforcement or point lookups, consider converting that index to hash, to optimize point lookup and insert operations.  
  
 Note that hash indexes do not support point lookup operations based on leading index key columns; queries must include equality predicates for all index key columns to benefit from the point lookup performance of hash indexes.  
  
 The following table lists all operations supported by the different index types.  
  
### Operations on memory-optimized and disk-based indexes.  
  
|Operation|Memory-optimized hash, index|Memory-optimized nonclustered index|Disk-based (non)clustered index|  
|---------------|-----------------------------------|------------------------------------------|----------------------------------------|  
|Index Scan, retrieve all table rows.|Yes|Yes|Yes|  
|Index seek on equality predicate(s) (=).|Yes<br /><br /> (Full key required.)|Yes*|Yes|  
|Index seek on inequality predicates (>, <, \<=, >=, BETWEEN).|No (results in an index scan)|Yes*|Yes|  
|Retrieve rows in a sort-order matching the index definition.|No|Yes|Yes|  
|Retrieve rows in a sort-order matching the reverse of the index definition.|No|No|Yes|  
  
 In the table, **Yes** means that the index can adequately service the request and **No** means that the index cannot be used successfully to satisfy the request.  
  
 *For a nonclustered memory-optimized index, the full key is not required to perform an index seek. Although, given the column order of the index key, a scan will occur if a value for a column comes after a missing column.  
  
## Duplicate index key values  
 Duplicate index key values can impact the performance of operations on memory-optimized tables. Large numbers of duplicates (e.g., 100+) make the job of maintaining an index inefficient because duplicate chains must be traversed for most index operations. The impact can be seen in INSERT, UPDATE, and DELETE operations on memory-optimized tables. This problem is more visible in the case of hash indices, due both to the lower cost per operation for hash indices and the interference of large duplicate chains with the hash collision chain. To reduce duplication in an index, use a nonclustered index and add additional columns (for example from the primary key) to the end of the index key to reduce the number of duplicates.  
  
 Consider, as an example, a Customers table with a primary key on CustomerId and an index on column Country. There will typically be many customers for a given country, and thus many duplicate values for a given key in the index on Country. In this scenario, best practice is to use a nonclustered index on (Country, CustomerId). This index can be used for queries  that use a predicate involving Country, and does not contain duplication, and thus does not cause inefficiency in index maintenance.  
  
## Differences with Disk-based Indexes  
 Both disk-based and memory-optimized tables use indexes to optimize data access. There are, however, certain differences between index structures for memory-optimized tables and those for disk-based tables:  
  
-   Memory-optimized indexes should be created with [CREATE TABLE &#40;Transact-SQL&#41;](../t-sql/statements/create-table-transact-sql.md) as far as possible, since adding indexes afterwards is a more expensive operation. For details about adding indexes see [Altering Memory-Optimized Tables](../relational-databases/in-memory-oltp/altering-memory-optimized-tables.md).  
  
-   Memory-optimized indexes exist only in memory. Index structures are not persisted to disk and index operations are not logged in the transaction log. The index structure is created when the memory-optimized index is created in memory, during CREATE TABLE, ALTER TABLE, and database startup.  
  
-   Memory-optimized indexes are inherently covering. Covering means that all columns are virtually included in the index and bookmark lookups are not needed for memory-optimized tables. Rather than a reference to the primary key, memory-optimized indexes simply contain a memory pointer to the actual row in the table data structure.  
  
-   Fragmentation and fillfactor do not apply to memory-optimized indexes. In disk-based indexes, fragmentation refers to pages in the B-tree being written to disk out-of-order. Memory-optimized indexes are not written to or read from disk. Fillfactor in disk-based B-tree indexes refers to the degree to which the physical page structures are filled with actual data. The memory-optimized index structures do not have fixed-size pages.  
  
## Index Count  
 A memory-optimized table can have up to 8 indexes, including the index created with the primary key.  
  
 Do not create an index that you rarely use: Garbage collection works best if all indexes on the table are frequently used. Rarely-used indexes may cause the garbage collection system to not perform optimally for old row versions.  
  
## Creating a Memory-Optimized Index: Code Samples  
 Column level hash index:  
  
```tsql  
CREATE TABLE t1   
   (c1 INT NOT NULL INDEX idx HASH WITH (BUCKET_COUNT = 100))   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_ONLY)  
```  
  
 Table level hash index:  
  
```tsql  
CREATE TABLE t1_1   
   (c1 INT NOT NULL,   
   INDEX IDX HASH (c1) WITH (BUCKET_COUNT = 100))   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_ONLY)  
```  
  
 Column level primary key hash index:  
  
```tsql  
CREATE TABLE t2   
   (c1 INT NOT NULL PRIMARY KEY NONCLUSTERED HASH WITH (BUCKET_COUNT = 100))   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA)  
```  
  
 Table level primary key hash index:  
  
```tsql  
CREATE TABLE t2_2   
   (c1 INT NOT NULL,   
   PRIMARY KEY NONCLUSTERED HASH (c1) WITH (BUCKET_COUNT = 100))   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA)  
```  
  
 Column level nonclustered index:  
  
```tsql  
CREATE TABLE t3   
   (c1 INT NOT NULL INDEX ID)   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_ONLY)  
```  
  
 Table level nonclustered  index:  
  
```tsql  
CREATE TABLE t3_3   
   (c1 INT NOT NULL,   
   INDEX IDX NONCLUSTERED (c1))   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_ONLY)  
```  
  
 Column level primary key nonclustered  index:  
  
```tsql  
CREATE TABLE t4   
   (c1 INT NOT NULL PRIMARY KEY NONCLUSTERED)   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA)  
```  
  
 Table level primary key nonclustered index:  
  
```tsql  
CREATE TABLE t4_4   
   (c1 INT NOT NULL,   
   PRIMARY KEY NONCLUSTERED (c1))   
   WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA)  
```  
  
 Multicolumn index defined after columns are defined:  
  
```tsql  
create table t (  
       a int not null constraint ta primary key nonclustered,  
       b int not null,  
       c int not null,  
       d int not null,  
       index idx_t_b_c_d nonclustered (b, c asc, d desc)  
) with (memory_optimized = on, durability = SCHEMA_AND_DATA)  
go  
```  
  
## See Also  
 [Indexes on Memory-Optimized Tables](../a9retired/indexes-on-memory-optimized-tables.md)   
 [Determining the Correct Bucket Count for Hash Indexes](../a9retired/determining-the-correct-bucket-count-for-hash-indexes.md)   
 [Hash Indexes](../a9retired/hash-indexes.md)  
  
  