---
title: "Supported Data Types for In-Memory OLTP | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-27"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: a7380ef0-c9d7-49e4-b6de-fad34752b9f3
caps.latest.revision: 26
ms.author: "genemi"
manager: "jhubbard"
---
# Supported Data Types for In-Memory OLTP
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  This article lists the data types that are unsupported for the In-Memory OLTP features of:  
  
-   Memory-optimized tables  
  
-   Natively compiled stored procedures  
  
## Unsupported Data Types  
 The following data types are not supported:  
  
||||  
|-|-|-|  
|[datetimeoffset &#40;Transact-SQL&#41;](../../t-sql/data-types/datetimeoffset-transact-sql.md)|[geography &#40;Transact-SQL&#41;](../Topic/geography%20\(Transact-SQL\).md)|[geometry &#40;Transact-SQL&#41;](../Topic/geometry%20\(Transact-SQL\).md)|  
|[hierarchyid &#40;Transact-SQL&#41;](../Topic/hierarchyid%20\(Transact-SQL\).md)|[rowversion &#40;Transact-SQL&#41;](../../t-sql/data-types/rowversion-transact-sql.md)|[xml &#40;Transact-SQL&#41;](../../t-sql/xml/xml-transact-sql.md)|  
|[sql_variant &#40;Transact-SQL&#41;](../../t-sql/data-types/sql-variant-transact-sql.md)|User-Defined Types|.|  
  
## Notable Supported Data Types  
 Most data types are supported by the features of In-Memory OLTP. The following few are worth noting explicitly:  
  
|String and Binary Types|For more information|  
|-----------------------------|--------------------------|  
|binary and varbinary*|[binary and varbinary &#40;Transact-SQL&#41;](../../t-sql/data-types/binary-and-varbinary-transact-sql.md)|  
|char and varchar*|[char and varchar &#40;Transact-SQL&#41;](../../t-sql/data-types/char-and-varchar-transact-sql.md)|  
|nchar and nvarchar*|[nchar and nvarchar &#40;Transact-SQL&#41;](../../t-sql/data-types/nchar-and-nvarchar-transact-sql.md)|  
  
For the preceding string and binary data types, starting with SQL Server 2016:  
  
- An individual memory-optimized table can also have several long columns such as `nvarchar(4000)`, even though their lengths would add to more than the physical row size of 8060 bytes.  
  
- A memory-optimized table can have max length string and binary columns of data types such as `varchar(max)`.  


### Identify LOBs and other columns that are off-row

The following Transact-SQL SELECT statement reports all columns that are off-row, for memory-optimized tables. Note that:

- All index key columns are stored in-row.
  - Nonunique index keys can now include NULLable columns, on memory-optimized tables.
  - Indexes can be declared as UNIQUE on a memory-optimized table.
- All LOB columns are stored off-row.
- A max_length of -1 indicates a large object (LOB) column.


```tsql
SELECT
        OBJECT_NAME(m.object_id) as [table],
        c.name                   as [column],
        c.max_length
    FROM
             sys.memory_optimized_tables_internal_attributes AS m
        JOIN sys.columns                                     AS c
                ON  m.object_id = c.object_id
                AND m.minor_id  = c.column_id
    WHERE
        m.type = 5;
```


#### Natively compiled modules support for LOBs


When you use a built-in string function in a natively compiled modules, such as a native proc, the function can accept a string LOB type. For example, in a native proc, the LTrim function can input a parameter of type nvarchar(max) or varbinary(max).

These LOBs can be the return type from a natively compiled scalar UDF (user-defined function).


### Other Data Types


|Other Types|For more information|  
|-----------------|--------------------------|  
|table types|[Memory-Optimized Table Variables](../Topic/Memory-Optimized%20Table%20Variables.md)|  
  
## See Also  
 [Transact-SQL Support for In-Memory OLTP](../../relational-databases/in-memory-oltp/transact-sql-support-for-in-memory-oltp.md)   
 [Implementing LOB Columns in a Memory-Optimized Table](http://msdn.microsoft.com/en-us/bd8df0a5-12b9-4f4c-887c-2fb78dd79f4e)   
 [Implementing SQL_VARIANT in a Memory-Optimized Table](../../relational-databases/in-memory-oltp/implementing-sql-variant-in-a-memory-optimized-table.md)  
  
  