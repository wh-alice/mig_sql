---
title: "Plan your adoption of In-Memory OLTP Features in SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-05"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 041b428f-781d-4628-9f34-4d697894e61e
caps.latest.revision: 3
ms.author: "genemi"
manager: "jhubbard"
---
# Plan your adoption of In-Memory OLTP Features in SQL Server
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]


This article describes the ways in which the adoption of In-Memory features affects other aspects of your business system.



## A. Adoption of In-Memory OLTP features


The following subsections discuss factors you must consider when you plan to adopt and implement In-Memory features. A lot of explanatory information is available at:

- [Use In-Memory OLTP to improve your application performance in Azure SQL Database](https://azure.microsoft.com/documentation/articles/sql-database-in-memory-oltp-migration/)



### A.1 Prerequisites

One prerequisite for using the In-Memory features can involve the edition or service tier of the SQL product. For this and other prerequisites, see:

- [Requirements for Using Memory-Optimized Tables](../../relational-databases/in-memory-oltp/requirements-for-using-memory-optimized-tables.md)
	- [Editions and Components of SQL Server 2016](../../sql-server/editions-and-components-of-sql-server-2016.md)
	- [SQL Database pricing tier recommendations](https://azure.microsoft.com/documentation/articles/sql-database-service-tier-advisor/)


### A.2 Forecast the amount of active memory

Does your system have enough active memory to support a new memory-optimized table?

#### Microsoft SQL Server

A memory-optimized table which contains 200 GB of data requires more than 200 GB of active memory be dedicated to its support. Before you implement a memory-optimized table containing a large amount of data, you must forecast the amount of additional active memory you might need to add to your server computer. For estimation guidance, see:

- [Estimate Memory Requirements for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/estimate-memory-requirements-for-memory-optimized-tables.md)

#### Azure SQL Database

For a database hosted in the Azure SQL Database cloud service, your chosen service tier affects the amount of active memory your database is allowed to consume. You should plan to monitor the memory usage of your database by using an alert. For details, see:

- [Monitor In-Memory OLTP Storage](https://azure.microsoft.com/documentation/articles/sql-database-in-memory-oltp-monitoring/)

#### Memory-optimized table variables

A table variable which is declared to be memory-optimzed is sometimes a preferable to a traditional #TempTable that resides in the **tempdb** database. Such table variables can provide significant performance gains without using significant amounts of active memory.

### A.3 Table must be offline to convert to memory-optimized

Some ALTER TABLE functionality is available for memory-optimized tables. But you cannot issue an ALTER TABLE statement to convert a disk-based table into a memory-optimized table. Instead you must use a more manual set of steps. What follows are various ways you can convert your disk-based table to be memory-optimized.

#### Manual scripting

One way to convert your disk-based table to a memory-optimized table is to code the necessary Transact-SQL steps yourself.


1. Suspend application activity.

2. Take a full backup.

3. Rename your disk-based table.

4. Issue a CREATE TABLE statement to create your new memory-optimized table.

5. INSERT INTO your memory-optimized table with a sub-SELECT from the disk-based table.

6. DROP your disk-based table.

7. Take another full backup.

8. Resume application activity.


#### Memory Optimization Advisor

The Memory Optimization Advisor tool can generate a script to help implement the conversion of a disk-based table to a memory-optimized table. The tool is installed as part of SQL Server Data Tools (SSDT).

- [Memory Optimization Advisor](../../relational-databases/in-memory-oltp/memory-optimization-advisor.md)
- [Download SQL Server Data Tools (SSDT)](https://msdn.microsoft.com/library/mt204009.aspx)


#### .dacpac file

You can update your database in-place by using a .dacpac file, managed by SSDT. In SSDT you can specify changes to the schema that is encoded in the .dacpac file.

You work with .dacpac files in the context of a Visual Studio project of type *Database*.

- [Data-tier Applications](../../relational-databases/data-tier-applications/data-tier-applications.md) and .dacpac files



### A.4 Guidance for whether In-Memory OLTP features are right for your application

For guidance on whether In-Memory features can improve the performance of your particular application, see:

- [In-Memory OLTP (In-Memory Optimization)](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md)



## B. Unsupported features

Features which are not supported in certain In-Memory scenarios are described at:

- [Unsupported SQL Server Features for In-Memory OLTP](../../relational-databases/in-memory-oltp/unsupported-sql-server-features-for-in-memory-oltp.md)


The following subsections highlight some of the more important unsupported features.


### B.1 SNAPSHOT of a database

After the first time that any memory-optimized table or module is created in a given database, no [SNAPSHOT](../../relational-databases/databases/database-snapshots-sql-server.md) of the database can ever be taken. The specific reason is that:

- The first memory-optimized item makes it impossible to ever drop the last file from the memory-optimized FILEGROUP; and
- No database that has a file in a memory-optimized FILEGROUP can support a SNAPSHOT.

Normally a SNAPSHOT can be handy for quick testing iterations.


### B.2 Cross-database queries

Memory-optimized tables do not support [cross-database](../../relational-databases/in-memory-oltp/cross-database-queries.md) transactions. You cannot access another database from the same transaction or the same query that also accesses a memory-optimized table.

Table variables are not transactional. Therefore, [memory-optimized table variables](../../relational-databases/in-memory-oltp/faster-temp-table-and-table-variable-by-using-memory-optimization.md) can be used in cross-database queries.


### B.3 READPAST table hint

No query can apply the READPAST [table hint](../../t-sql/queries/hints-transact-sql-table.md) to any memory-optimized table.

The READPAST hint is helpful in scenarios where several sessions are each accessing and modifying the same small set of rows, such as in processing a queue.


### B.4 RowVersion, Sequence

- No column can be tagged for [RowVersion](../../t-sql/data-types/rowversion-transact-sql.md) on a memory-optimized table.


- A [SEQUENCE](../../t-sql/statements/create-sequence-transact-sql.md) object cannot be used with any memory-optimized table.


## C. Administrative maintenance


This section describes differences in database administration where memory-optimized tables are used.


### C.1 Identity seed reset, increment > 1

[DBCC CHECKIDENT](../../t-sql/database-console-commands/dbcc-checkident-transact-sql.md), to reseed an IDENTITY column, cannot be used on a memory-optimized table.

The increment value is restricted to exactly 1 for an IDENTITY column on a memory-optimized table.


### C.2 DBCC CHECKDB cannot validate memory-optimized tables

The [DBCC CHECKDB](../../t-sql/database-console-commands/dbcc-checkdb-transact-sql.md) command does nothing when its target is a memory-optimized table. The following steps are a work-around:


1. [Back up the transaction log](Back%20Up%20a%20Transaction%20Log%20%28SQL Server%29.md).

2. Back up the files in the memory-optimized FILEGROUP to a null device. The backup process invokes a checksum validation.

	If corruption is found, proceed with the next steps.

3. Copy data from your memory-optimized tables into disk-based tables, for temporary storage.

4. Restore the files of the memory-optimized FILEGROUP.

5. INSERT INTO the memory-optimized tables the data you temporarily stored in the disk-based tables.

6. DROP the disk-based tables which temporarily held the data.



## D. Performance

This section describes situations where the excellent performance of memory-optimized tables can be held below full potential.


### D.1 Index considerations

All indexes on a memory-optimized table are created and managed by the table-related statements CREATE TABLE and ALTER TABLE. You cannot target a memory-optimized table with a CREATE INDEX statement.

The traditional b-tree nonclustered index is often the sensible and simple choice when you first implement a memory-optimized table. Later, after you see how your application performs, you can consider swapping another index type.

Two special types of indexes need discussion in the context of a memory-optimized table: Hash indexes, and Columnstore indexes.

For an overview of indexes on memory-optimized tables, see:

- [Indexes for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/indexes-for-memory-optimized-tables.md)


#### Hash indexes

Hash indexes can be the fastest format for accessing one specific row by its exact primary key value by using the '**=**' operator.

- Inexact operators such as '**!=**', '**>**', or '**BETWEEN**' would harm performace if used with a hash index.

- A hash index might not be the best choice if the rate of key value duplication becomes too high.

- Guard against underestimating how many *buckets* your hash index might need, to avoid long chains within individual buckets. For details, see:
	- [Hash Indexes for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/hash-indexes-for-memory-optimized-tables.md)


#### Nonclustered columnstore indexes

Memory-optimized tables deliver high throughput of typical business transactional data, in the paradigm we call *online transaction processing* or *OLTP*. Columnstore indexes deliver high throughput of aggregations and similar processing we call *Analytics*. In years past the best approach available for satisfying the needs of both OLTP and Analytics was to have separate tables with heavy movement of data, and with some degree of data duplication. Today a simpler **hybrid solution** is available: have a columnstore index on a memory-optimized table.


- A [columnstore index](Columnstore%20Indexes%20Guide.md) can be built on a disk-based table, even as the clustered index. But on a memory-optimized table a columnstore index cannot be clustered.


- LOB or off-row columns for a memory-optimized table prevent the creation of a columnstore index on the table.


- No ALTER TABLE statement can be executed against a memory-optimized table while a columnstore index exists on the table.
	- As of August 2016, Microsoft has near-term plans to improve the performance of re-creating the columnstore index.



### D.2 LOB and off-row columns

Large objects (LOBs) are columns of such types as varchar(**max**). Having a couple of LOB columns on a memory-optimized table probably does not harm performance enough to matter. But do avoid having more LOB columns than your data needs. The same advice applies to off-row columns. Do not define a column as nvarchar(3072) if varchar(512) will suffice.


A bit more about LOB and off-row columns is available at:

- [Table and Row Size in Memory-Optimized Tables](../../relational-databases/in-memory-oltp/table-and-row-size-in-memory-optimized-tables.md)
- [Supported Data Types for In-Memory OLTP](../../relational-databases/in-memory-oltp/supported-data-types-for-in-memory-oltp.md)



## E. Limitations of native procs


Particular elements of Transact-SQL are not supported in natively compiled stored procedures.

For considerations when migrating a Transact-SQL script to a native proc, see:

- [Migration Issues for Natively Compiled Stored Procedures](../../relational-databases/in-memory-oltp/migration-issues-for-natively-compiled-stored-procedures.md)


### E.1 No CASE in a native proc

The CASE expression in Transact-SQL cannot be used inside a native proc. You can fashion a work-around:

- [Implementing a CASE Expression in a Natively Compiled Stored Procedure](../../relational-databases/in-memory-oltp/implementing-a-case-expression-in-a-natively-compiled-stored-procedure.md)


### E.2 No MERGE in a native proc


The Transact-SQL [MERGE statement](../../t-sql/statements/merge-transact-sql.md) has similarities to what is often called *upsert* functionality. A native proc cannot use the MERGE statement. However, you can achieve the same functionality as MERGE by using a combination of SELECT plus UPDATE plus INSERT statements. A code example is at:

- [Implementing MERGE Functionality in a Natively Compiled Stored Procedure](../../relational-databases/in-memory-oltp/implementing-merge-functionality-in-a-natively-compiled-stored-procedure.md)



### E.3 No joins in UPDATE or DELETE statements, in a native proc

Transact-SQL statements in a native proc can access memory-optimized tables only. In UPDATE and DELETE statements, you cannot join any tables. Attempts in a native proc fail with a message such as Msg 12319 which explains that you:

- Cannot use the FROM clause in an UPDATE statement.
- Cannot specify a table source in a DELETE statement.

No type of subquery provides a work-around. However, you can use a memory-optimized table variable to achieve a join outcome over multiple statements. Two code samples follow:

- DELETE...JOIN... we want to run in a native proc, but cannot.
- A work-around set of Transact-SQL statements that achieves the delete join.


*Scenario:* The table TabProjectEmployee has a unique key of two columns: ProjectId and EmployeeId. Each row indicates the assignment of an employee to an active project. When an Employee leaves the company, the employee must be deleted from the TabProjectEmployee table.


#### Invalid T-SQL, DELETE...JOIN


A native proc cannot have a DELETE...JOIN such as the following.


```tsql
DELETE pe
	FROM
		     TabProjectEmployee   AS pe
		JOIN TabEmployee          AS e

			ON pe.EmployeeId = e.EmployeeId
	WHERE
			e.EmployeeStatus = 'Left-the-Company'
;
```


#### Valid work-around, manual delete...join

Next is the work-around code sample, in two parts:

1. The CREATE TYPE is executed one time, days before the type is first used by any actual table variable.

2. The business process uses the created type. It begins by declaring a table variable of the created table type.


```tsql

CREATE TYPE dbo.type_TableVar_EmployeeId
	AS TABLE  
	(
		EmployeeId   bigint   NOT NULL
	);
```


Next, use the create table type.


```tsql
DECLARE @MyTableVarMo  dbo.type_TableVar_EmployeeId  

INSERT INTO @MyTableVarMo (EmployeeId)
	SELECT
			e.EmployeeId
		FROM
				 TabProjectEmployee  AS pe
			JOIN TabEmployee         AS e  ON e.EmployeeId = pe.EmployeeId
		WHERE
			e.EmployeeStatus = 'Left-the-Company'
;

DECLARE @EmployeeId   bigint;

WHILE (1=1)
BEGIN
	SET @EmployeeId = NULL;

	SELECT TOP 1 @EmployeeId = v.EmployeeId
		FROM @MyTableVarMo  AS v;

	IF (NULL = @Employeed) BREAK;
	
	DELETE TabProjectEmployee
		WHERE EmployeeId = @EmployeeId;

	DELETE @MyTableVarMo
		WHERE EmployeeId = @EmployeeId;
END;
```


### E.4 Query plan limitations for native procs


Some types of query plans are not available for native procs. Many details are discussed in:

- [A Guide to Query Processing for Memory-Optimized Tables](../../relational-databases/in-memory-oltp/a-guide-to-query-processing-for-memory-optimized-tables.md)


#### No parallel processing in a native proc

Parallel processing cannot be a part of any query plan for a native proc. Native procs are always single-threaded.


#### Join types


Neither a hash join nor a merge join can be a part of any query plan for a native proc. Nested loop joins are used.


#### No hash aggregation

When the query plan for a native proc requires an aggregation phase, only stream aggregation is available. Hash aggregation is not supported in a query plan for a native proc.

- Hash aggregation is better when data from a large number of rows must aggregated.



## F. Application design: Transactions and retry logic

A transaction involving a memory-optimized table can become dependent on another transaction which involves the same table. If the count of dependent transactions reaches exceeds the allowed maximum, all the dependent transactions fail.

In SQL Server 2016:

- The allowed maximum is 8 dependent transactions. 8 is also the limit of transactions that any given transaction can be dependent on.
- The error number is 41839. (In SQL Server 2014 the error number is 41301.)


You can make your Transact-SQL scripts more robust against a possible transaction error by adding *retry logic* to your scripts. Retry logic is more likely to help when UPDATE and DELETE calls are frequent, or if the memory-optimized table is referenced by a foreign key in another table. For details, see:

- [Transactions with Memory-Optimized Tables](../../relational-databases/in-memory-oltp/transactions-with-memory-optimized-tables.md)
- [Transaction dependency limits with memory optimized tables – Error 41839](https://blogs.msdn.microsoft.com/sqlcat/2016/07/11/transaction-dependency-limits-with-memory-optimized-tables-error-41839/)



## Related links

- [In-Memory OLTP (In-Memory Optimization)](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md)

