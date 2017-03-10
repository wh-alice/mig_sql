---
title: "Quick Start 1: In-Memory OLTP Technologies for Faster Transact-SQL Performance | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 1c25a164-547d-43c4-8484-6b5ee3cbaf3a
caps.latest.revision: 30
ms.author: "genemi"
manager: "jhubbard"
---
# Survey of Initial Areas in In-Memory OLTP
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../relational-databases/extended-events/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

  
This article is for the developer who is in a hurry to learn the basics of the In-Memory OLTP performance features of Microsoft SQL Server and Azure SQL Database.  
  
For In-Memory OLTP, this article provides the following:  
  
- Quick explanations of the features.  
- Core code samples that implement the features.  
  
  
SQL Server and SQL Database have only minor variations in their support of In-Memory technologies.  
  
  
In the wild some bloggers refer to the In-Memory OLTP as *Hekaton*.  
  
  
<a name="benefits-of-in-memory-features-21a"></a>  
  
## Benefits of In-Memory Features  
  
SQL Server provides In-Memory features that can greatly improve the performance of many application systems. The most straight forward considerations are described in this section.  
  
  
### Features for OLTP (Online Transactional Processing)  
  
  
Systems which must processes large numbers of SQL INSERTs concurrently are excellent candidates for the OLTP features.  
  
- Our benchmarks show that speed improvements from 5 times to 20 times faster are achievable by adoption of the In-Memory features.  
  
  
Systems which process heavy calculations in Transact-SQL are excellent candidates.  
  
- A stored procedure that is dedicated to heavy calculations can run up to 99 times faster.  
  
  
Later you might visit the following articles which offer demonstrations of performance gains from In-Memory OLTP:  
  
- [Demonstration: Performance Improvement of In-Memory OLTP](../../relational-databases/in-memory-oltp/demonstration-performance-improvement-of-in-memory-oltp.md) offers a small-scale demonstration of the larger potential performance gains.  
- [Sample Database for In-Memory OLTP](../../relational-databases/in-memory-oltp/sample-database-for-in-memory-oltp.md) offers a larger scale demonstration.  
  
  
  
### Features for Operational Analytics  
  
In-Memory Analytics refers to SQL SELECTs which aggregate transactional data, typically by inclusion of a GROUP BY clause. The index type called *columnstore* is central to operational analytics.  
  
There are two major scenarios:  
  
- *Batch Operational Analytics* refers to aggregation processes that run either after business hours or on secondary hardware which has copies of the transactional data.  
  - [Azure SQL Data Warehouse](https://azure.microsoft.com/documentation/articles/sql-data-warehouse-overview-what-is/) also relates to batch operational analytics.  
- *Real-time Operational Analytics* refers to aggregration processes that run during business hours and on the primary hardware which is used for transactional workloads.  
  
  
The present article focuses on OLTP, and not on Analytics. For information on how columnstore indexes bring Analytics to SQL, see:  
  
- [Get started with Columnstore for real time operational analytics](../../relational-databases/indexes/get-started-with-columnstore-for-real-time-operational-analytics.md)  
- [Columnstore Indexes Guide](Columnstore%20Indexes%20Guide.xml)  
  
  
> [AZURE.NOTE] A two minute video about the In-Memory features is available at [Azure SQL Database - In-Memory Technologies](http://channel9.msdn.com/Blogs/Windows-Azure/Azure-SQL-Database-In-Memory-Technologies). The video is dated December 2015.  


### Columnstore

A sequence of excellent blog posts elegantly explains columnstore indexes from several perspectives. The majority of the posts describe further the concept of real-time operational analytics, which columnstore supports.  These posts were authored by Sunil Agarwal, a Program Manager at Microsoft, in March 2016.

#### Real-time Operational Analytics

1. [Real-Time Operational Analytics Using In-Memory Technology](https://blogs.technet.microsoft.com/dataplatforminsider/2015/12/09/real-time-operational-analytics-using-in-memory-technology/)
2. [Real-Time Operational Analytics – Overview nonclustered columnstore index (NCCI)](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/02/29/real-time-operational-analytics-using-nonclustered-columnstore-index/)
3. [Real-Time Operational Analytics: Simple example using nonclustered clustered columnstore index (NCCI) in SQL Server 2016](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/02/29/real-time-operational-analytics-simple-example-using-nonclustered-clustered-columnstore-index-ncci/)
4. [Real-Time Operational Analytics: DML operations and nonclustered columnstore index (NCCI) in SQL Server 2016](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/04/real-time-operational-analytics-dml-operations-and-nonclustered-columnstore-index-ncci-in-sql-server-2016/)
5. [Real-Time Operational Analytics: Filtered nonclustered columnstore index (NCCI)](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/06/real-time-operational-analytics-filtered-nonclustered-columnstore-index-ncci/)
6. [Real-Time Operational Analytics: Compression Delay Option for Nonclustered Columnstore Index (NCCI)](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/06/real-time-operational-analytics-compression-delay-option-for-nonclustered-columnstore-index-ncci/)
7. [Real-Time Operational Analytics: Compression Delay option with NCCI and the performance](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/06/real-time-operational-analytics-compression-delay-option-with-ncci-and-the-performance/)
8. [Real-Time Operational Analytics: Memory-Optimized Tables and Columnstore Index](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/07/real-time-operational-analytics-memory-optimized-table-and-columnstore-index/)

#### Defragment a columnstore index

1. [Columnstore Index Defragmentation using REORGANIZE Command](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/07/columnstore-index-defragmentation-using-reorganize-command/)
2. [Columnstore Index Merge Policy for REORGANIZE](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/08/columnstore-index-merge-policy-for-reorganize/)

#### Bulk importation of data

1. [Clustered Column Store: Bulk Load](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2014/07/27/clustered-column-store-index-bulk-loading-the-data/)
2. [Clustered Columnstore Index: Data Load Optimizations – Minimal Logging](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/01/10/clustered-columnstore-index-data-load-optimizations-minimal-logging/)
3. [Clustered columnstore Index: Data Load Optimization – Parallel Bulk Import](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/02/28/clustered-columnstore-index-parallel-bulk-import/)





<a name="features-on-in-memory-oltp-13b"></a>  
  
## Features of In-Memory OLTP  
  
Let's look at the main features of In-Memory OLTP.  
  
  
#### Memory-optimized tables  
  
The T-SQL keyword MEMORY_OPTIMIZED, on the CREATE TABLE statement, is how a table is created to exist in active memory, instead of on disk.  
  
  
A [Memory-optimized tables](../../relational-databases/in-memory-oltp/memory-optimized-tables.md) has one representation of itself in active memory, and secondary copy on the disk.  
  
- The disk copy is for routine recovery after a shutdown-then-restart of the server or database. This memory-plus-disk duality is completely hidden from you and your code.  
  
  
#### Natively compiled modules  
  
The T-SQL keyword NATIVE_COMPILATION, on the CREATE PROCEDURE statement, is how a native proc is created. The T-SQL statements are compiled to machine code on first use of the native proc each time the database is cycled online. The T-SQL instructions no longer endure slow interpretation of every instruction.  
  
- We have seen native compilation result in durations that are 1/100th of the interpreted duration.  
  
  
A native module can reference memory-optimized tables only, and it cannot reference disk-based tables.  
  
There are three types of natively compiled modules:  
  
- [Natively compiled stored procedures](../../relational-databases/in-memory-oltp/natively-compiled-stored-procedures.md).  
- Natively compiled user-defined functions (UDFs), which are scalar.  
- Natively compiled triggers.  
  
  
#### Availability in Azure SQL Database  
  
In-Memory OLTP and Columnstore are available in Azure SQL Database. For details see [Optimize Performance using In-Memory Technologies in SQL Database](https://docs.microsoft.com/azure/sql-database/sql-database-in-memory).
  
  
<a name="ensure-compatibility-level-gteq-130-99c"></a>  
  
## 1. Ensure compatibility level >= 130  
  
  
This section begins a sequence of numbered sections that together demonstrate the Transact-SQL syntax you can use to implement In-Memory OLTP features.  
  
  
First, it is important that your database be set to a compatibility level of at least 130. Next is the T-SQL code to view the current compatibility level that your current database is set to.  
  
  
  
  
  
    SELECT d.compatibility_level  
        FROM sys.databases as d  
        WHERE d.name = Db_Name();  
  
  
  
  
Next is the T-SQL code to update the level, if necessary.  
  
  
  
  
    ALTER DATABASE CURRENT  
        SET COMPATIBILITY_LEVEL = 130;  
  
  
  
  
<a name="elevate-to-snapshot-26n"></a>  
  
## 2. Elevate to SNAPSHOT  
  
  
When a transaction involves both a disk-based table and a memory-optimized table, we call that a *cross-container transaction*. In such a transaction it is essential that the memory-optimized portion of the transaction operate at the transaction isolation level named SNAPSHOT.  
  
To reliably enforce this level for memory-optimized tables in a cross-container transaction, [alter your database setting](../../t-sql/statements/alter-database-transact-sql-set-options.md) by executing the following T-SQL.  
  
  
  
  
    ALTER DATABASE CURRENT  
        SET MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = ON;  
  
  
  
  
<a name="create-an-optimized-filegroup-24r"></a>  
  
## 3. Create an optimized FILEGROUP  
  
  
On Microsoft SQL Server, before you can create a memory-optimized table you must first create a FILEGROUP that you declare CONTAINS MEMORY_OPTIMIZED_DATA. The FILEGROUP is assigned to your database. For details see:  
  
- [The Memory Optimized FILEGROUP](../../relational-databases/in-memory-oltp/the-memory-optimized-filegroup.md)  
  
  
On Azure SQL Database, you need not and cannot create such a FILEGROUP.  

The following sample T-SQL script enables a database for In-Memory OLTP and configures all recommended settings. It works with both SQL Server and Azure SQL Database: [enable-in-memory-oltp.sql](https://raw.githubusercontent.com/Microsoft/sql-server-samples/master/samples/features/in-memory/t-sql-scripts/enable-in-memory-oltp.sql).
  
  
<a name="create-a-memory-optimized-table-26y"></a>  
  
## 4. Create a memory-optimized table  
  
  
  
  
The crucial Transact-SQL keyword is the keyword MEMORY_OPTIMIZED.  
  
  
  
  
    CREATE TABLE dbo.SalesOrder  
    (  
        SalesOrderId   integer        not null  IDENTITY  
            PRIMARY KEY NONCLUSTERED,  
        CustomerId     integer        not null,  
        OrderDate      datetime       not null  
    )  
        WITH  
            (MEMORY_OPTIMIZED = ON,  
            DURABILITY = SCHEMA_AND_DATA);  
  
  
  
  
Transact-SQL INSERT and SELECT statements against a memory-optimized table are the same as for a regular table.  
  
#### ALTER TABLE for Memory-Optimized tables  
  
ALTER TABLE...ADD/DROP can add or remove a column from a memory-optimized table, or an index.  
  
- CREATE INDEX and DROP INDEX cannot be run against a memory-optimized table, use ALTER TABLE ... ADD/DROP INDEX instead.  
- For details see [Altering Memory-Optimized Tables](../../relational-databases/in-memory-oltp/altering-memory-optimized-tables.md).  
  
  
#### Plan your memory-optimized tables and indexes  
  
  
- [Indexes for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/indexes-for-memory-optimized-tables.md)  
- [Transact-SQL Constructs Not Supported by In-Memory OLTP](../../relational-databases/in-memory-oltp/transact-sql-constructs-not-supported-by-in-memory-oltp.md)  
  
  
  
<a name="create-a-natively-compiled-stored-procedure-native-proc-29u"></a>  
  
## 5. Create a natively compiled stored procedure (native proc)  
  
  
The crucial keyword is NATIVE_COMPILATION.  
  
  
  
  
    CREATE PROCEDURE ncspRetrieveLatestSalesOrderIdForCustomerId  
        @_CustomerId   INT  
        WITH  
            NATIVE_COMPILATION,  
            SCHEMABINDING  
    AS  
    BEGIN ATOMIC  
        WITH  
            (TRANSACTION ISOLATION LEVEL = SNAPSHOT,  
            LANGUAGE = N'us_english')  
      
        DECLARE @SalesOrderId int, @OrderDate datetime;  
      
        SELECT TOP 1  
                @SalesOrderId = s.SalesOrderId,  
                @OrderDate    = s.OrderDate  
            FROM dbo.SalesOrder AS s  
            WHERE s.CustomerId = @_CustomerId  
            ORDER BY s.OrderDate DESC;  
      
        RETURN @SalesOrderId;  
    END;  
  
  
  
  
The keyword SCHEMABINDING means the tables referenced in the native proc cannot be dropped unless the native proc is dropped first. For details see [Creating Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/creating-natively-compiled-stored-procedures.md).  
  
  
<a name="execute-the-native-proc-31e"></a>  
  
## 6. Execute the native proc  
  
  
Populate the table with two rows of data.  
  
  
  
  
    INSERT into dbo.SalesOrder  
            ( CustomerId, OrderDate )  
        VALUES  
            ( 42, '2013-01-13 03:35:59' ),  
            ( 42, '2015-01-15 15:35:59' );  
  
  
  
  
An EXECUTE call to the natively compiled stored procedure follows.  
  
  
  
  
    DECLARE @LatestSalesOrderId int, @mesg nvarchar(128);  
      
    EXECUTE @LatestSalesOrderId =  
        ncspRetrieveLatestSalesOrderIdForCustomerId 42;  
      
    SET @mesg = CONCAT(@LatestSalesOrderId,  
        ' = Latest SalesOrderId, for CustomerId = ', 42);  
    PRINT @mesg;  
      
    -- Here is the actual PRINT output:  
    -- 2 = Latest SalesOrderId, for CustomerId = 42  
  
  
  
  
<a name="guide-to-the-documentation-and-next-steps-32w"></a>  
  
### Guide to the documentation and next steps  
  
  
The preceding plain examples give you a foundation for learning the more advanced features of In-Memory OLTP. The following sections are a guide to the special considerations you might need to know, and to where you can see the details about each.  
  
  
  
<a name="how-do-in-memory-oltp-features-work-so-much-faster-33v"></a>  
  
## How In-Memory OLTP features work so much faster  
  
  
The following subsections briefly describe how the In-Memory OLTP features work internally to provide improved performance.  
  
  
<a name="how-do-memory-optimized-tables-perform-faster-34q"></a>  
  
### How memory-optimized tables perform faster  
  
  
**Dual nature:** A memory-optimized table has a dual nature: one representation in active memory, and the other on the hard disk. Each transaction is committed to both representations of the table. Transactions operate against the much faster active memory representation. Memory-optimized tables benefit from the greater speed of active memory versus the disk. Further, the greater nimbleness of active memory makes practical a more advanced table structure that is optimized for speed. The advanced structure is also pageless, so it avoids the overhead and contention of latches and spinlocks.  
  
  
**No locks:** The memory-optimized table relies on an *optimistic* approach to the competing goals of data integrity versus concurrency and high throughput. During the transaction, the table does not place locks on any version of the updated rows of data. This can greatly reduce contention in some high volume systems.  
  
  
**Row versions:** Instead of locks, the memory-optimized table adds a new version of an updated row in the table itself, not in tempdb. The original row is kept until after the transaction is committed. During the transaction, other processes can read the original version of the row.  
  
- When multiple versions of a row are created for a disk-based table, row versions are stored temporarily in tempdb.  
  
  
**Less logging:** The before and after versions of the updated rows are held in the memory-optimized table. The pair of rows provides much of the information that is traditionally written to the log file. This enables the system to write less information, and less often, to the log. Yet transactional integrity is ensured.  
  
  
<a name="how-do-native-procs-perform-faster-35x"></a>  
  
### How native procs perform faster  
  
Converting a regular interpreted stored procedure into a natively compiled stored procedure greatly reduces the number of instructions to execute during run time.  
  
  
<a name="trade-offs-of-in-memory-features-36j"></a>  
  
## Trade-offs of In-Memory features  
  
  
As is common in computer science, the performance gains provided by the In-Memory features are a trade-off. The better features bring benefits that are more valuable than the extra costs of the feature. You can find comprehensive guidance about the trade-offs at:

- [Plan your adoption of In-Memory OLTP Features in SQL Server](../../relational-databases/in-memory-oltp/plan-your-adoption-of-in-memory-oltp-features-in-sql-server.md)

The rest of this section lists some of the major planning and trade-off considerations.
  
<a name="trade-offs-of-memory-optimized-tables-37d"></a>  
  
### Trade-offs of memory-optimized tables  
  
  
**Estimate memory:** You must estimate the amount of active memory that your memory-optimized table will consume. Your computer system must have adequate memory capacity to host a memory-optimized table. For details see:  
  
- [Monitor and Troubleshoot Memory Usage](../../relational-databases/in-memory-oltp/monitor-and-troubleshoot-memory-usage.md)  
- [Estimate Memory Requirements for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/estimate-memory-requirements-for-memory-optimized-tables.md)  
- [Table and Row Size in Memory-Optimized Tables](../../relational-databases/in-memory-oltp/table-and-row-size-in-memory-optimized-tables.md)  
  
  
**Partition your large table:** One way to meet the demand for lots of active memory is to partition your large table into parts in-memory that store *hot recent* data rows versus other parts on the disk that store *cold legacy* rows (such as sales orders that have been fully shipped and completed). This partitioning is a manual process of design and implementation. See:  
  
- [Application-Level Partitioning](../../relational-databases/in-memory-oltp/application-level-partitioning.md)  
- [Application Pattern for Partitioning Memory-Optimized Tables](../../relational-databases/in-memory-oltp/application-pattern-for-partitioning-memory-optimized-tables.md)  
  
  
<a name="trade-offs-of-native-procs-38p"></a>  
  
### Trade-offs of native procs  
  
  
- A natively compiled stored procedure cannot access a disk-based table. A native proc can access only memory-optimized tables.  
- When a native proc runs for its first time after the server or database was most recently brought back online, the native proc must be recompiled one time. This causes a delay before the native proc starts to run.  
  
  
<a name="advanced-considerations-for-memory-optimized-tables-39n"></a>  
  
## Advanced considerations for memory-optimized tables  
  
  
[Indexes for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/indexes-for-memory-optimized-tables.md) are different in some ways from indexes on traditional on-disk tables.  
  
- [Hash Indexes](../../relational-databases/in-memory-oltp/hash-indexes-for-memory-optimized-tables.md) are available only on memory-optimized tables.  
  
  
You must plan to ensure there will be sufficient active memory for your planned memory-optimized table and its indexes. See:  
  
- [Managing Memory for In-Memory OLTP](Managing%20Memory%20for%20In-Memory%20OLTP.xml)  
- [Creating and Managing Storage for Memory-Optimized Objects](../../relational-databases/in-memory-oltp/creating-and-managing-storage-for-memory-optimized-objects.md)  
  
  
A memory-optimized table can be declared with DURABILITY = SCHEMA_ONLY:  
  
- This syntax tells the system to discard all data from the memory-optimized table when the database is taken offline. Only the table definition is persisted.  
- When the database is brought back online, the memory-optimized table is loaded back into active memory, empty of data.  
- SCHEMA_ONLY tables can be a superior [alternative to #temporary tables](../../relational-databases/in-memory-oltp/faster-temp-table-and-table-variable-by-using-memory-optimization.md) in tempdb, when many thousands of rows are involved.  
  
  
Table variables can also be declared as memory-optimized. See:  
  
- [Faster temp table and table variable by using memory optimization](../../relational-databases/in-memory-oltp/faster-temp-table-and-table-variable-by-using-memory-optimization.md)  
  
  
  
<a name="advanced-considerations-for-natively-compiled-modules-40k"></a>  
  
## Advanced considerations for natively compiled modules  
  
  
The types of natively compiled modules available through Transact-SQL are:  
  
- Natively compiled stored procedures (native procs).  
- Natively compiled [scalar user-defined functions](../../relational-databases/in-memory-oltp/scalar-user-defined-functions-for-in-memory-oltp.md).  
- Natively compiled triggers (native triggers).  
  - Only triggers that are natively compiled are allowed on memory-optimized tables.  
- Natively compiled [table-valued functions](../../relational-databases/user-defined-functions/create-user-defined-functions-database-engine.md).  
  - [Improving temp table and table variable performance using memory optimization](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/21/improving-temp-table-and-table-variable-performance-using-memory-optimization/)  
  
  
A natively compiled user defined function (UDF) runs faster than an interpreted UDF. Here are some things to consider with UDFs:  
  
- When a T-SQL SELECT uses a UDF, the UDF is always called once per returned row.  
  - UDFs never run inline, and instead are always called.  
  - The compiled distinction is less significant than is the overhead of repeated calls that is inherent to all UDFs.  
  - Still, the overhead of UDF calls is often acceptable at the practical level.  
  
For test data and explanation about the performance of native UDFs, see:  
  
  - [Soften the RBAR impact with Native Compiled UDFs in SQL Server 2016](https://blogs.msdn.microsoft.com/sqlcat/2016/02/17/soften-the-rbar-impact-with-native-compiled-udfs-in-sql-server-2016/)  
  - The [fine blog post written by Gail Shaw](http://sqlinthewild.co.za/index.php/2016/01/12/natively-compiled-user-defined-functions/), dated January 2016.  
  
  
<a name="documentation-guide-for-memory-optimized-tables-41z"></a>  
  
## Documentation guide for memory-optimized tables  
  
  
Here are links to other articles that discuss special considerations for memory-optimized tables:  
  
- [Migrating to In-Memory OLTP](../../relational-databases/in-memory-oltp/migrating-to-in-memory-oltp.md)  
  - [Determining if a Table or Stored Procedure Should Be Ported to In-Memory OLTP](../../relational-databases/in-memory-oltp/determining-if-a-table-or-stored-procedure-should-be-ported-to-in-memory-oltp.md)  
  - The Transaction Performance Analysis report in SQL Server Management Studio helps you evaluate if In-Memory OLTP will improve your database application’s performance.  
  - Use the [Memory Optimization Advisor](../../relational-databases/in-memory-oltp/memory-optimization-advisor.md) to help you migrate the disk-based database table to In-Memory OLTP.   
- [Backup, Restore, and Recovery of Memory-Optimized Tables](Backup,%20Restore,%20and%20Recovery%20of%20Memory-Optimized%20Tables.xml)  
  - The storage used by memory-optimized tables can be much larger than its size in memory, and it affects the size of the database backup.  
- [Transactions with Memory-Optimized Tables](../../relational-databases/in-memory-oltp/transactions-with-memory-optimized-tables.md)  
  - Includes information about retry logic in T-SQL, for transactions on memory-optimized tables.  
- [Transact-SQL Support for In-Memory OLTP](../../relational-databases/in-memory-oltp/transact-sql-support-for-in-memory-oltp.md)  
  - Supported and unsupported T-SQL and data types, for memory-optimized tabled and native procs.  
- [Bind a Database with Memory-Optimized Tables to a Resource Pool](../../relational-databases/in-memory-oltp/bind-a-database-with-memory-optimized-tables-to-a-resource-pool.md), which discusses an optional advanced consideration.  
  
  
  
<a name="documentation-guide-for-native-procs-42b"></a>  
  
## Documentation guide for native procs  
  
  
  
<a name="related-links-43f"></a>  
  
## Related links  
  
- Initial article: [In-Memory OLTP (In-Memory Optimization)](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md)  
  
  
Here are articles that offer code to demonstrate the performance gains you can achieve by using In-Memory OLTP:  
  
- [Demonstration: Performance Improvement of In-Memory OLTP](../../relational-databases/in-memory-oltp/demonstration-performance-improvement-of-in-memory-oltp.md) offers a small-scale demonstration of the larger potential performance gains.  
- [Sample Database for In-Memory OLTP](../../relational-databases/in-memory-oltp/sample-database-for-in-memory-oltp.md) offers a larger scale demonstration.  
  
  
  
\<!--  
  
e1328615-6b59-4473-8a8d-4f360f73187d , dn817827.aspx ,  "Get started with Columnstore for real time operational analytics"  
  
f98af4a5-4523-43b1-be8d-1b03c3217839 , gg492088.aspx , "Columnstore Indexes Guide"  
  
14dddf81-b502-49dc-a6b6-d18b1ae32d2b , dn133165.aspx , "Memory-Optimized Tables"  
  
d5ed432c-10c5-4e4f-883c-ef4d1fa32366 , dn133184.aspx , "Natively compiled stored procedures"  
  
14106cc9-816b-493a-bcb9-fe66a1cd4630 , dn639109.aspx , "The Memory Optimized Filegroup"  
  
f222b1d5-d2fa-4269-8294-4575a0e78636 , dn465873.aspx , "Bind a Database with Memory-Optimized Tables to a Resource Pool"  
  
86805eeb-6972-45d8-8369-16ededc535c7 , dn511012.aspx , "Indexes on Memory-Optimized Tables"  
  
16ef63a4-367a-46ac-917d-9eebc81ab29b , dn133166.aspx , "Guidelines for Using Indexes on Memory-Optimized Tables"  
  
e3f8009c-319d-4d7b-8993-828e55ccde11 , dn246937.aspx , "Transact-SQL Constructs Not Supported by In-Memory OLTP"  
  
2cd07d26-a1f1-4034-8d6f-f196eed1b763 , dn133169.aspx , "Transactions in Memory-Optimized Tables"  
NOTE: SEE mt668425.aspx "Behaviors and Guidelines for Transactions with Memory-Optimized Tables", its soon replacement for these!  
f2a35c37-4449-49ee-8bba-928028f1de66 , dn169141.aspx , "Guidelines for Retry Logic for Transactions on Memory-Optimized Tables"  
  
7a458b9c-3423-4e24-823d-99573544c877 , dn465869.aspx , "Monitor and Troubleshoot Memory Usage"  
  
5c5cc1fc-1fdf-4562-9443-272ad9ab5ba8 , dn282389.aspx , "Estimate Memory Requirements for Memory-Optimized Tables"  
  
b0a248a4-4488-4cc8-89fc-46906a8c24a1 , dn205318.aspx , "Table and Row Size in Memory-Optimized Tables"  
  
162d1392-39d2-4436-a4d9-ee5c47864c5a , dn296452.aspx , "Application-Level Partitioning"  
  
3f867763-a8e6-413a-b015-20e9672cc4d1 , dn133171.aspx , "Application Pattern for Partitioning Memory-Optimized Tables"  
  
86805eeb-6972-45d8-8369-16ededc535c7 , dn511012.aspx , "Indexes on Memory-Optimized Tables"  
  
d82f21fa-6be1-4723-a72e-f2526fafd1b6 , dn465872.aspx , "Managing Memory for Memory-Optimized OLTP"  
  
622aabe6-95c7-42cc-8768-ac2e679c5089 , dn133174.aspx , "Creating and Managing Storage for Memory-Optimized Objects"  
  
bd102e95-53e2-4da6-9b8b-0e4f02d286d3 , dn535766.aspx , "Memory-Optimized Table Variables"; "table variable of a memory-optimized table"  
OBSOLETE. Instead see 38512a22-7e63-436f-9c13-dde7cf5c2202 , mt718711.aspx , "Faster temp table and table variable by using memory optimization"  
  
  
f0d5dd10-73fd-4e05-9177-07f56552bdf7 , ms191320.aspx , "Create User-defined Functions (Database Engine)"; "table-valued functions"  
  
d2546e40-fdfc-414b-8196-76ed1f124bf5 , dn935012.aspx , "Scalar User-Defined Functions for In-Memory OLTP"; "scalar user-defined functions"  
  
405cdac5-a0d4-47a4-9180-82876b773b82 , dn247639.aspx , "Migrating to In-Memory OLTP"  
  
3f083347-0fbb-4b19-a6fb-1818d545e281 , dn624160.aspx , "Backup, Restore, and Recovery of Memory-Optimized Tables"  
  
690b70b7-5be1-4014-af97-54e531997839 , dn269114.aspx , "Altering Memory-Optimized Tables"  
  
  
b1cc7c30-1747-4c21-88ac-e95a5e58baac , dn133080.aspx , "New and Updated Properties, System Views, Stored Procedures, Wait Types, and DMVs for In-Memory OLTP"  
. . . . .  
ALSO: "Transact-SQL Support for In-Memory OLTP"  
  
  
c1ef96f1-290d-4952-8369-2f49f27afee2 , dn205133.aspx , "Determining if a Table or Stored Procedure Should Be Ported to In-Memory OLTP"  
  
181989c2-9636-415a-bd1d-d304fc920b8a , dn284308.aspx , "Memory Optimization Advisor"  
  
55548cb2-77a8-4953-8b5a-f2778a4f13cf , dn452282.aspx , "Monitoring Performance of Natively Compiled Stored Procedures"  
  
d3898a47-2985-4a08-bc70-fd8331a01b7b , dn358355.aspx , "Native Compilation Advisor"  
  
f43faad4-2182-4b43-a76a-0e3b405816d1 , dn296678.aspx , "Migration Issues for Natively Compiled Stored Procedures"  
  
e1d03d74-2572-4a55-afd6-7edf0bc28bdb , dn133186.aspx , "In-Memory OLTP (In-Memory Optimization)"  
  
c6def45d-d2d4-4d24-8068-fab4cd94d8cc , dn530757.aspx , "Demonstration: Performance Improvement of In-Memory OLTP"  
  
405cdac5-a0d4-47a4-9180-82876b773b82 , dn247639.aspx , "Migrating to In-Memory OLTP"  
  
f76fbd84-df59-4404-806b-8ecb4497c9cc , bb522682.aspx , "ALTER DATABASE SET Options (Transact-SQL)"  
  
e6b34010-cf62-4f65-bbdf-117f291cde7b , dn452286.aspx , "Creating Natively Compiled Stored Procedures"  
  
df347f9b-b950-4e3a-85f4-b9f21735eae3 , mt465764.aspx , "Sample Database for In-Memory OLTP"  
  
38512a22-7e63-436f-9c13-dde7cf5c2202 , mt718711.aspx , "Faster temp table and table variable by using memory optimization"  
  
38512a22-7e63-436f-9c13-dde7cf5c2202 , mt718711.aspx , "Faster temp table and table variable by using memory optimization"  
  
  
  
  
H1 # Quick Start 1: In-Memory technologies for faster transactional workloads  
{1c25a164-547d-43c4-8484-6b5ee3cbaf3a} in CAPS  
mt718711.aspx on MSDN  
  
GeneMi , 2016-05-07  00:07am  
-->  
  
  
  
