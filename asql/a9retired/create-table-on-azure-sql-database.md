---
title: "CREATE TABLE on Azure SQL Database | Microsoft Docs"
ms.custom: 
  - "MSDN content"
  - "MSDN - SQL DB"
ms.date: "2016-12-29"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.service: "sql-database"
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: d53c529a-1d5f-417f-9a77-64ccc6eddca1
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
robots: noindex,nofollow
---
# CREATE TABLE on Azure SQL Database
[!INCLUDE[tsql-appliesto-xxxxxx-asdb-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-xxxxxx-asdb-xxxx-xxx-md.md)]

  Creates a new table in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)].  
  
> [!IMPORTANT]  
>  [!INCLUDE[sqldbesa](../a9retired/includes/sqldbesa-md.md)] does not support Web and Business service tiers.  
  
## Syntax  
  
```  
  
CREATE TABLE   
    [database_name . schema_name . ] table_name   
    ( { <column_definition> | <computed_column_definition>   
        | <column_set_definition>  
        [ <table_constraint> ] }  
        [ ,...n ]  
        [ PERIOD FOR SYSTEM_TIME ( system_start_time_column_name   
             , system_end_time_column_name ) ]   
     )   
FEDERATED ON ( distribution_name = column_name)  
    [ WITH ( <table_option> [ ,...n ] )    
  
[ ; ]  
  
<column_definition> ::=  
column_name <data_type>  
    [ COLLATE collation_name ]   
    [ NULL | NOT NULL ]  
    [   
        [ CONSTRAINT constraint_name ] DEFAULT constant_expression ]   
      | [ IDENTITY [ ( seed ,increment ) ]   
    ]  
    [ <column_constraint> [ ...n ] ]  
    [ SPARSE ]  
    [ MASKED WITH ( FUNCTION = ' mask_function ') ]  
    [ GENERATED ALWAYS AS ROW { START | END } [ HIDDEN ] ]   
    [ ENCRYPTED WITH   
        ( COLUMN_ENCRYPTION_KEY = key_name ,  
          ENCRYPTION_TYPE = { DETERMINISTIC | RANDOMIZED } ,   
          ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256'  
        ) ]  
  
<data type> ::=   
[ type_schema_name . ] type_name   
    [ ( precision [ , scale ] | max   
]   
  
<column_constraint> ::=   
[ CONSTRAINT constraint_name ]   
{     { PRIMARY KEY | UNIQUE }   
        [ CLUSTERED | NONCLUSTERED ]   
        [   
          WITH ( < index_option > [ , ...n ] )   
        ]   
| [ FOREIGN KEY ]   
        REFERENCES [ schema_name . ] referenced_ table_name [ ( ref_column ) ]   
        [ ON DELETE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
        [ ON UPDATE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
  | CHECK  ( logical_expression )   
}   
  
<computed_column_definition> ::=  
column_name AS computed_column_expression   
[ PERSISTED [ NOT NULL ] ]  
[   
    [ CONSTRAINT constraint_name ]  
    { PRIMARY KEY | UNIQUE }  
        [ CLUSTERED | NONCLUSTERED ]  
        [   
          WITH ( <index_option> [ , ...n ] )  
        ]  
    | [ FOREIGN KEY ]   
        REFERENCES referenced_table_name [ ( ref_column ) ]   
        [ ON DELETE { NO ACTION | CASCADE } ]   
        [ ON UPDATE { NO ACTION } ]   
   [ NOT FOR REPLICATION ]   
    | CHECK ( logical_expression )   
]   
  
<column_set_definition> ::=   
column_set_name XML COLUMN_SET FOR ALL_SPARSE_COLUMNS  
  
< table_constraint > ::=  
[ CONSTRAINT constraint_name ]   
{   
    { PRIMARY KEY | UNIQUE }   
        [ CLUSTERED | NONCLUSTERED ]   
        (column [ ASC | DESC ] [ ,...n ] )   
        [   
           WITH ( <index_option> [ , ...n ] )   
        ]  
  
    | FOREIGN KEY   
        ( column [ ,...n ] )   
        REFERENCES referenced_table_name [ ( ref_column [ ,...n ] ) ]   
        [ ON DELETE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
        [ ON UPDATE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
  
    | CHECK ( logical_expression )   
}   
  
<table_option> ::=  
{  
    [DATA_COMPRESSION = { NONE | ROW | PAGE } ]  
    [ SYSTEM_VERSIONING = ON 
      [ ( HISTORY_TABLE = schema_name . history_table_name  
          [, DATA_CONSISTENCY_CHECK = { ON | OFF } ] 
          [, HISTORY_RETENTION_PERIOD = { INFINITE | number {DAY | DAYS | WEEK | WEEKS | MONTH | MONTHS | YEAR | YEARS } } ]  
        )
      ] 
    ]  
}  
  
<index_option> ::=  
{   
  IGNORE_DUP_KEY = { ON | OFF }   
  | STATISTICS_NORECOMPUTE = { ON | OFF }   
}  
  
```  
  
## Arguments  
  
> [!NOTE]  
>  The syntax diagram above describes the supported arguments and options in [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)]. For a full description of the arguments and for many examples, see [CREATE TABLE &#40;Transact-SQL&#41;](../t-sql/statements/create-table-transact-sql.md). The remaining information in this topic provides information unique to `CREATE TABLE` on [!INCLUDE[ssSDS](../a9retired/includes/sssds-md.md)].  
  
 [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)] supports the three-part name format *database_name***.**[*schema_name*]**.***object_name* when the *database_name* is the current database or the *database_name* is tempdb and the *object_name* starts with #.  
  
 [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)] does not support four-part names.  
  
 SYSTEM_VERSIONING clause allows you to create temporal tables on [!INCLUDE[sqldbesa](../a9retired/includes/sqldbesa-md.md)]. For more information, see [Temporal Tables](../relational-databases/tables/temporal-tables.md), [Getting Started with Temporal Tables in Azure SQL Database](https://azure.microsoft.com/documentation/articles/sql-database-temporal-tables/) and [CREATE TABLE &#40;Transact-SQL&#41;](../t-sql/statements/create-table-transact-sql.md). To control retention of the historical data, use HISTORY_RETENTION_PERIOD. For more information check out [Manage historical data with retention policy](https://azure.microsoft.com/documentation/articles/sql-database-temporal-tables-retention-policy/).
  
 While **SPARSE** columns can be queried by all client drivers supported by [!INCLUDE[ssSDSfull](../a9retired/includes/sssdsfull-md.md)], currently only the [!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)] Native Client ODBC driver or higher provides full support for the compression of null values in a result set.  
  
 The **FEDERATED ON** clause creates the table as a federated table within an existing federation, and applies the distribution constraint (*distribution_name*) for the federation to the specified federation column within the table (*column_name*). Federated tables have the following characteristics:  
  
-   The federation column of the federated table can only contain data that confirms to the federation member range_low inclusive and range_high exclusive.  
  
-   The datatype of the federation column must exactly match the data type that is defined in the federation definition.  
  
-   All unique and clustered indexes on the federated table must contain the federation column. The order in which the federation column appears in the index can be different from the key ordinal in the federation.  
  
-   Federation column values cannot be updated to values outside the federation member range.  
  
-   The federation column cannot be a persisted or non-persisted computed column.  
  
-   Indexed Views cannot be created on federated tables.  
  
-   Federation columns cannot be NULLable.  
  
-   All foreign key constraints on federated tables need to include the federation column on both the referrer and the referenced tables at the same ordinal in the foreign key. Reference tables cannot have foreign key relationships with federated tables. Federated tables can have foreign key relationships with reference tables without restrictions.  
  
-   You can drop tables created with the **FEDERATED ON** clause normally. You can also use **ALTER TABLE** to change all properties of a federated table except federation attributes such as the federation key. To change a reference table into a federated table or a federated table into a reference table, you must create new tables with the desired properties and drop the existing table.  
  
-   When a table is marked with **STATISTICS_NORECOMPUTE**, federation operations such as **SPLIT** do not invalidate or recalculate statistics. This could cause execution plan issues after repartitioning operations such as **SPLIT**.  
  
-   Federated tables do not support the identity property.  
  
-   Federated tables do not support the timestamp and rowversion data type.  
  
-   The `ENCRYPTED WITH` option is only available in preview in [!INCLUDE[sqldbesa](../a9retired/includes/sqldbesa-md.md)].  
  
## Examples  
 The following example creates a simple table name Regions, with three columns.  
  
```  
CREATE TABLE Regions  
(RegionID int IDENTITY(1,1) PRIMARY KEY,  
RegionName varchar(5) NOT NULL,  
RegionContact varchar(50) NULL);  
```  
  
 This topic is separated from the CREATE TABLE (Transact-SQL) topic to clarify which syntax is applicable to SQL Database. For many more examples of creating columns, see [CREATE TABLE &#40;Transact-SQL&#41;](../t-sql/statements/create-table-transact-sql.md). Since most syntax elements are the same, the examples are not provided here to avoid duplication.  
  
## See Also  
 [CREATE TABLE &#40;Transact-SQL&#41;](../t-sql/statements/create-table-transact-sql.md)   
 [CREATE TABLE &#40;Azure SQL Data Warehouse&#41;](../t-sql/statements/create-table-azure-sql-data-warehouse.md)   
 [CREATE TABLE AS SELECT &#40;Azure SQL Data Warehouse&#41;](../t-sql/statements/create-table-as-select-azure-sql-data-warehouse.md)   
 [CREATE EXTERNAL TABLE &#40;Transact-SQL&#41;](../t-sql/statements/create-external-table-transact-sql.md)   
 [CREATE EXTERNAL TABLE AS SELECT &#40;Transact-SQL&#41;](../t-sql/statements/create-external-table-as-select-transact-sql.md)   
 [CREATE REMOTE TABLE AS SELECT &#40;Parallel Data Warehouse&#41;](../t-sql/statements/create-remote-table-as-select-parallel-data-warehouse.md)  
  
  