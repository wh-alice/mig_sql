---
title: "ALTER TABLE (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-02-22"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "WAIT_AT_LOW_PRIORITY"
  - "ABORT_AFTER_WAIT"
  - "ABORT_AFTER_WAIT_TSQL"
  - "ALTER_TABLE_TSQL"
  - "ALTER TABLE"
  - "WAIT_AT_LOW_PRIORITY_TSQL"
  - "ALTER_COLUMN_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "columns [SQL Server], resizing"
  - "changing column size"
  - "MAXDOP index option, ALTER TABLE statement"
  - "table modifications [SQL Server], ALTER TABLE"
  - "ALTER TABLE statement"
  - "modifying tables"
  - "partitioned tables [SQL Server], lock escalation"
  - "resizing columns"
  - "removing columns"
  - "switching partitions"
  - "reassigning partitions"
  - "removing constraints"
  - "triggers [SQL Server], disabling"
  - "columns [SQL Server], adding"
  - "LOCK_ESCALATION option of ALTER TABLE"
  - "constraints [SQL Server], deleting"
  - "constraints [SQL Server], disabling"
  - "triggers [SQL Server], enabling"
  - "re-enabling constraints"
  - "index modifications [SQL Server]"
  - "disabling constraints"
  - "columns [SQL Server], removing"
  - "max degree of parallelism option"
  - "locking [SQL Server], tables"
  - "ONLINE option"
  - "disabling triggers"
  - "constraints [SQL Server], adding"
  - "deleting constraints"
  - "adding constraints"
  - "adding columns"
  - "SWITCH partitions"
  - "partitioned tables [SQL Server], switching"
  - "lock escalation [SQL Server], option of ALTER TABLE"
  - "constraints [SQL Server], enabling"
  - "dropping constraints"
  - "dropping columns"
  - "table changes [SQL Server]"
ms.assetid: f1745145-182d-4301-a334-18f799d361d1
caps.latest.revision: 281
ms.author: "rickbyh"
manager: "jhubbard"
---
# ALTER TABLE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Modifies a table definition by altering, adding, or dropping columns and constraints, reassigning and rebuilding partitions, or disabling or enabling constraints and triggers.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
ALTER TABLE [ database_name . [ schema_name ] . | schema_name . ] table_name   
{   
    ALTER COLUMN column_name   
    {   
        [ type_schema_name. ] type_name   
            [ (   
                {   
                   precision [ , scale ]   
                 | max   
                 | xml_schema_collection   
                }   
            ) ]   
        [ COLLATE collation_name ]   
        [ NULL | NOT NULL ] [ SPARSE ]  
      | { ADD | DROP }   
          { ROWGUIDCOL | PERSISTED | NOT FOR REPLICATION | SPARSE | HIDDEN }  
      | { ADD | DROP } MASKED [ WITH ( FUNCTION = ' mask_function ') ]  
    }   
    [ WITH ( ONLINE = ON | OFF ) ]  
    | [ WITH { CHECK | NOCHECK } ]  
  
    | ADD   
    {   
        <column_definition>  
      | <computed_column_definition>  
      | <table_constraint>   
      | <column_set_definition>   
    } [ ,...n ]  
      | [ system_start_time_column_name datetime2 GENERATED ALWAYS AS ROW START   
                   [ HIDDEN ] [ NOT NULL ] [ CONSTRAINT constraint_name ] DEFAULT constant_expression [WITH VALUES] ,  
            system_end_time_column_name datetime2 GENERATED ALWAYS AS ROW END   
                   [ HIDDEN ] [ NOT NULL ]  [ CONSTRAINT constraint_name ] DEFAULT constant_expression [WITH VALUES] ,  
         ]  
       PERIOD FOR SYSTEM_TIME ( system_start_time_column_name, system_end_time_column_name )  
    | DROP   
     [ {  
         [ CONSTRAINT ]  [ IF EXISTS ]  
         {   
              constraint_name   
              [ WITH   
               ( <drop_clustered_constraint_option> [ ,...n ] )   
              ]   
          } [ ,...n ]  
          | COLUMN  [ IF EXISTS ]  
          {  
              column_name   
          } [ ,...n ]  
          | PERIOD FOR SYSTEM_TIME  
     } [ ,...n ]  
    | [ WITH { CHECK | NOCHECK } ] { CHECK | NOCHECK } CONSTRAINT   
        { ALL | constraint_name [ ,...n ] }   
  
    | { ENABLE | DISABLE } TRIGGER   
        { ALL | trigger_name [ ,...n ] }  
  
    | { ENABLE | DISABLE } CHANGE_TRACKING   
        [ WITH ( TRACK_COLUMNS_UPDATED = { ON | OFF } ) ]  
  
    | SWITCH [ PARTITION source_partition_number_expression ]  
        TO target_table   
        [ PARTITION target_partition_number_expression ]  
        [ WITH ( <low_lock_priority_wait> ) ]  
    | SET   
        (  
            [ FILESTREAM_ON =   
                { partition_scheme_name | filegroup | "default" | "NULL" } ]  
            | SYSTEM_VERSIONING =   
                  {   
                      OFF   
                  | ON   
                      [ ( HISTORY_TABLE = schema_name . history_table_name   
                          [, DATA_CONSISTENCY_CHECK = { ON | OFF } ] 
                          [, HISTORY_RETENTION_PERIOD = 
                          { 
	                           INFINITE | number {DAY | DAYS | WEEK | WEEKS | MONTH | MONTHS | YEAR | YEARS } 
                          } 
                          ]  
                        )  
                      ]  
                  }  
          )  
    | REBUILD   
      [ [PARTITION = ALL]  
        [ WITH ( <rebuild_option> [ ,...n ] ) ]   
      | [ PARTITION = partition_number   
           [ WITH ( <single_partition_rebuild_option> [ ,...n ] ) ]  
        ]  
      ]  
  
    | <table_option>  
  
    | <filetable_option>  
  
    | <stretch_configuration>  
  
}  
[ ; ]  
  
-- ALTER TABLE options  
  
<column_set_definition> ::=   
    column_set_name XML COLUMN_SET FOR ALL_SPARSE_COLUMNS  
  
<drop_clustered_constraint_option> ::=    
    {   
        MAXDOP = max_degree_of_parallelism  
      | ONLINE = { ON | OFF }  
      | MOVE TO   
         { partition_scheme_name ( column_name ) | filegroup | "default" }  
    }  
<table_option> ::=  
    {  
        SET ( LOCK_ESCALATION = { AUTO | TABLE | DISABLE } )  
    }  
  
<filetable_option> ::=  
    {  
       [ { ENABLE | DISABLE } FILETABLE_NAMESPACE ]  
       [ SET ( FILETABLE_DIRECTORY = directory_name ) ]  
    }  
  
<stretch_configuration> ::=  
    {  
      SET (  
        REMOTE_DATA_ARCHIVE   
        {  
            = ON (  <table_stretch_options>  )  
          | = OFF_WITHOUT_DATA_RECOVERY ( MIGRATION_STATE = PAUSED )  
          | ( <table_stretch_options> [, ...n] )  
        }  
            )  
    }  
  
<table_stretch_options> ::=  
    {  
     [ FILTER_PREDICATE = { null | table_predicate_function } , ]  
       MIGRATION_STATE = { OUTBOUND | INBOUND | PAUSED }  
    }  
  
<single_partition_rebuild__option> ::=  
{  
      SORT_IN_TEMPDB = { ON | OFF }  
    | MAXDOP = max_degree_of_parallelism  
    | DATA_COMPRESSION = { NONE | ROW | PAGE | COLUMNSTORE | COLUMNSTORE_ARCHIVE} }  
    | ONLINE = { ON [( <low_priority_lock_wait> ) ] | OFF }  
}  
  
<low_priority_lock_wait>::=  
{  
    WAIT_AT_LOW_PRIORITY ( MAX_DURATION = <time> [ MINUTES ], ABORT_AFTER_WAIT = { NONE | SELF | BLOCKERS } )   
}  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
ALTER TABLE [ database_name . [schema_name ] . | schema_name. ] source_table_name   
{  
    ALTER COLUMN column_name  
        {   
            type_name [ ( precision [ , scale ] ) ]   
            [ COLLATE Windows_collation_name ]   
            [ NULL | NOT NULL ]   
        }  
    | ADD { <column_definition> | <column_constraint> FOR column_name} [ ,...n ]  
    | DROP { COLUMN column_name | [CONSTRAINT] constraint_name } [ ,...n ]  
    | REBUILD {  
            [ PARTITION = ALL [ WITH ( <rebuild_option> ) ] ] 
          | [ PARTITION = partition_number [ WITH ( <single_partition_rebuild_option> ] ]
      } 
    | { SPLIT | MERGE } RANGE (boundary_value)  
    | SWITCH [ PARTITION source_partition_number  
        TO target_table_name [ PARTITION target_partition_number ]  
}  
[;]  
  
<column_definition>::=  
{  
    column_name  
    type_name [ ( precision [ , scale ] ) ]   
    [ <column_constraint> ]  
    [ COLLATE Windows_collation_name ]  
    [ NULL | NOT NULL ]  
}  
  
<column_constraint>::=  
    [ CONSTRAINT constraint_name ] DEFAULT constant_expression  

<rebuild_option > ::=   
{  
    DATA_COMPRESSION = { COLUMNSTORE | COLUMNSTORE_ARCHIVE }
        [ ON PARTITIONS ( {<partition_number> [ TO <partition_number>] } [ , ...n ] ) ]   
}

<single_partition_rebuild_option > ::=   
{  
    DATA_COMPRESSION = { COLUMNSTORE | COLUMNSTORE_ARCHIVE }  
}  
```    

   
## Arguments  
 *database_name*  
 Is the name of the database in which the table was created.  
  
 *schema_name*  
 Is the name of the schema to which the table belongs.  
  
 *table_name*  
 Is the name of the table to be altered. If the table is not in the current database or is not contained by the schema owned by the current user, the database and schema must be explicitly specified.  
  
 ALTER COLUMN  
 Specifies that the named column is to be changed or altered.  
  
 The modified column cannot be any one of the following:  
  
-   A column with a **timestamp** data type.  
  
-   The ROWGUIDCOL for the table.  
  
-   A computed column or used in a computed column.  
  
-   Used in statistics generated by the CREATE STATISTICS statement unless the column is a **varchar**, **nvarchar**, or **varbinary** data type, the data type is not changed, and the new size is equal to or greater than the old size, or if the column is changed from not null to null. First, remove the statistics using the DROP STATISTICS statement. Statistics that are automatically generated by the query optimizer are automatically dropped by ALTER COLUMN.  
  
-   Used in a PRIMARY KEY or [FOREIGN KEY] REFERENCES constraint.  
  
-   Used in a CHECK or UNIQUE constraint. However, changing the length of a variable-length column used in a CHECK or UNIQUE constraint is allowed.  
  
-   Associated with a default definition. However, the length, precision, or scale of a column can be changed if the data type is not changed.  
  
     The data type of **text**, **ntext** and **image** columns can be changed only in the following ways:  
  
    -   **text** to **varchar(max)**, **nvarchar(max)**, or **xml**  
  
    -   **ntext** to **varchar(max)**, **nvarchar(max)**, or **xml**  
  
    -   **image** to **varbinary(max)**  
  
     Some data type changes may cause a change in the data. For example, changing an **nchar** or **nvarchar** column to **char** or **varchar** may cause the conversion of extended characters. For more information, see [CAST and CONVERT &#40;Transact-SQL&#41;](../../t-sql/functions/cast-and-convert-transact-sql.md). Reducing the precision or scale of a column may cause data truncation.  
  
     The data type of a column of a partitioned table cannot be changed.  
  
 The data type of columns included in an index cannot be changed unless the column is a **varchar**, **nvarchar**, or **varbinary** data type, and the new size is equal to or larger than the old size.  
  
 A columns included in a primary key constraint, cannot be changed from **NOT NULL** to **NULL**.  
  
 If the column being modified is encrypted using ENCRYPTED WITH, you can change the datatype to a compatible datatype (such as INT to BIGINT) but you cannot change any encryption settings.  
  
 *column_name*  
 Is the name of the column to be altered, added, or dropped. *column_name* can be a maximum of 128 characters. For new columns, *column_name* can be omitted for columns created with a **timestamp** data type. The name **timestamp** is used if no *column_name* is specified for a **timestamp** data type column.  
  
 [ *type_schema_name***.** ] *type_name*  
 Is the new data type for the altered column, or the data type for the added column. *type_name* cannot be specified for existing columns of partitioned tables. *type_name* can be any one of the following:  
  
-   A [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] system data type.  
  
-   An alias data type based on a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] system data type. Alias data types are created with the CREATE TYPE statement before they can be used in a table definition.  
  
-   A [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] user-defined type, and the schema to which it belongs. [!INCLUDE[dnprdnshort](../../a9retired/includes/dnprdnshort-md.md)] user-defined types are created with the CREATE TYPE statement before they can be used in a table definition.  
  
 The following are criteria for *type_name* of an altered column:  
  
-   The previous data type must be implicitly convertible to the new data type.  
  
-   *type_name* cannot be **timestamp**.  
  
-   ANSI_NULL defaults are always on for ALTER COLUMN; if not specified, the column is nullable.  
  
-   ANSI_PADDING padding is always ON for ALTER COLUMN.  
  
-   If the modified column is an identity column, *new_data_type* must be a data type that supports the identity property.  
  
-   The current setting for SET ARITHABORT is ignored. ALTER TABLE operates as if ARITHABORT is set to ON.  
  
> [!NOTE]  
>  If the COLLATE clause is not specified, changing the data type of a column will cause a collation change to the default collation of the database.  
  
 *precision*  
 Is the precision for the specified data type. For more information about valid precision values, see [Precision, Scale, and Length &#40;Transact-SQL&#41;](../../t-sql/data-types/precision-scale-and-length-transact-sql.md).  
  
 *scale*  
 Is the scale for the specified data type. For more information about valid scale values, see [Precision, Scale, and Length &#40;Transact-SQL&#41;](../../t-sql/data-types/precision-scale-and-length-transact-sql.md).  
  
 **max**  
 Applies only to the **varchar**, **nvarchar**, and **varbinary** data types for storing 2^31-1 bytes of character, binary data, and of Unicode data.  
  
 *xml_schema_collection*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Applies only to the **xml** data type for associating an XML schema with the type. Before typing an **xml** column to a schema collection, the schema collection must first be created in the database by using [CREATE XML SCHEMA COLLECTION](../../t-sql/statements/create-xml-schema-collection-transact-sql.md).  
  
 COLLATE \< *collation_name* >  
 Specifies the new collation for the altered column. If not specified, the column is assigned the default collation of the database. Collation name can be either a Windows collation name or a SQL collation name. For a list and more information, see [Windows Collation Name &#40;Transact-SQL&#41;](../../t-sql/statements/windows-collation-name-transact-sql.md) and [SQL Server Collation Name &#40;Transact-SQL&#41;](../../t-sql/statements/sql-server-collation-name-transact-sql.md).  
  
 The COLLATE clause can be used to change the collations only of columns of the **char**, **varchar**, **nchar**, and **nvarchar** data types. To change the collation of a user-defined alias data type column, you must execute separate ALTER TABLE statements to change the column to a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] system data type and change its collation, and then change the column back to an alias data type.  
  
 ALTER COLUMN cannot have a collation change if one or more of the following conditions exist:  
  
-   If a CHECK constraint, FOREIGN KEY constraint, or computed columns reference the column changed.  
  
-   If any index, statistics, or full-text index are created on the column. Statistics created automatically on the column changed are dropped if the column collation is changed.  
  
-   If a schema-bound view or function references the column.  
  
 For more information, see [COLLATE &#40;Transact-SQL&#41;](../Topic/COLLATE%20\(Transact-SQL\).md).  
  
 NULL | NOT NULL  
 Specifies whether the column can accept null values. Columns that do not allow null values can be added with ALTER TABLE only if they have a default specified or if the table is empty. NOT NULL can be specified for computed columns only if PERSISTED is also specified. If the new column allows null values and no default is specified, the new column contains a null value for each row in the table. If the new column allows null values and a default definition is added with the new column, WITH VALUES can be used to store the default value in the new column for each existing row in the table.  
  
 If the new column does not allow null values and the table is not empty, a DEFAULT definition must be added with the new column, and the new column automatically loads with the default value in the new columns in each existing row.  
  
 NULL can be specified in ALTER COLUMN to force a NOT NULL column to allow null values, except for columns in PRIMARY KEY constraints. NOT NULL can be specified in ALTER COLUMN only if the column contains no null values. The null values must be updated to some value before the ALTER COLUMN NOT NULL is allowed, for example:  
  
```  
UPDATE MyTable SET NullCol = N'some_value' WHERE NullCol IS NULL;  
ALTER TABLE MyTable ALTER COLUMN NullCOl NVARCHAR(20) NOT NULL;  
```  
  
 When you create or alter a table with the CREATE TABLE or ALTER TABLE statements, the database and session settings influence and possibly override the nullability of the data type that is used in a column definition. We recommend that you always explicitly define a column as NULL or NOT NULL for noncomputed columns.  
  
 If you add a column with a user-defined data type, we recommend that you define the column with the same nullability as the user-defined data type and specify a default value for the column. For more information, see [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md).  
  
> [!NOTE]  
>  If NULL or NOT NULL is specified with ALTER COLUMN, *new_data_type* [(*precision* [, *scale* ])] must also be specified. If the data type, precision, and scale are not changed, specify the current column values.  
  
 [ {ADD | DROP} ROWGUIDCOL ]  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies the ROWGUIDCOL property is added to or dropped from the specified column. ROWGUIDCOL indicates that the column is a row GUID column. Only one **uniqueidentifier** column per table can be designated as the ROWGUIDCOL column, and the ROWGUIDCOL property can be assigned only to a **uniqueidentifier** column. ROWGUIDCOL cannot be assigned to a column of a user-defined data type.  
  
 ROWGUIDCOL does not enforce uniqueness of the values that are stored in the column and does not automatically generate values for new rows that are inserted into the table. To generate unique values for each column, either use the NEWID function on INSERT statements or specify the NEWID function as the default for the column.  
  
 [ {ADD | DROP} PERSISTED ]  
 Specifies that the PERSISTED property is added to or dropped from the specified column. The column must be a computed column that is defined with a deterministic expression. For columns specified as PERSISTED, the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] physically stores the computed values in the table and updates the values when any other columns on which the computed column depends are updated. By marking a computed column as PERSISTED, you can create indexes on computed columns defined on expressions that are deterministic, but not precise. For more information, see [Indexes on Computed Columns](../../relational-databases/indexes/indexes-on-computed-columns.md).  
  
 Any computed column that is used as a partitioning column of a partitioned table must be explicitly marked PERSISTED.  
  
 DROP NOT FOR REPLICATION  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies that values are incremented in identity columns when replication agents perform insert operations. This clause can be specified only if *column_name* is an identity column.  
  
 SPARSE  
 Indicates that the column is a sparse column. The storage of sparse columns is optimized for null values. Sparse columns cannot be designated as NOT NULL. Converting a column from sparse to nonsparse or from nonsparse to sparse locks the table for the duration of the command execution. You may need to use the REBUILD clause to reclaim any space savings. For additional restrictions and more information about sparse columns, see [Use Sparse Columns](../../relational-databases/tables/use-sparse-columns.md).  
  
 ADD MASKED WITH ( FUNCTION = ' *mask_function* ')  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies a dynamic data mask. *mask_function* is the name of the masking function with the appropriate parameters. Three functions are available:  
  
-   default()  
  
-   email()  
  
-   partial()  
  
-   random()  
  
 To drop a mask, use `DROP MASKED`. For function parameters, see [Dynamic Data Masking](../../relational-databases/security/dynamic-data-masking.md).  
  
 WITH ( ONLINE = ON | OFF) \<as applies to altering a column>  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Allows many alter column actions to be performed while the table remains available. Default is OFF. Alter column can be performed on line for column changes related to data type, column length or precision, nullability, sparseness, and collation.  
  
 Online alter column allows user created and auto statistics to reference the altered column for the duration of the ALTER COLUMN operation. This allows queries to perform as usual. At the end of the operation, auto-stats that reference the column are dropped and user-created stats are invalidated. The user must manually update user-generated statistics after the operation is completed. If the column is part of a filter expression for any statistics or indexes then you cannot perform an alter column operation.  
  
-   While the online alter column operation is running, all operations that could take a dependency on the column (index, views, etc.) will block or fail with an appropriate error. This guarantees that online alter column will not fail because of dependencies introduced while the operation was running.  
  
-   Altering a column from NOT NULL to NULL is not supported as an online operation when the altered column is references by nonclustered indexes.  
  
-   Online alter is not supported when the column is referenced by a check constraint and the alter operation is restricting the precision of the column (numeric or datetime).  
  
-   The **low_priority_lock_wait** option cannot be used with online alter column.  
  
-   ALTER COLUMN … ADD/DROP PERSISTED is not supported for online alter column.  
  
-   ALTER COLUMN … ADD/DROP ROWGUIDCOL/NOT FOR REPLICATION is not affected by online alter column.  
  
-   Online alter column does not support altering a table where change tracking is enabled or that is a publisher of merge replication.  
  
-   Online alter column does not support altering from or to CLR data types.  
  
-   Online alter column does not support altering to an XML data type that has a schema collection different than the current schema collection.  
  
-   Online alter column does not reduce the restrictions on when a column can be altered. References by index/stats, etc. might cause the alter to fail.  
  
-   Online alter column does not support altering more than one column concurrently.  
  
-   Online alter column has no effect in case of system-versioned temporal table. ALTER column is not performed as online regardless of which value was specified for  ONLINE option.  
  
 Online alter column has similar requirements, restrictions, and functionality as online index rebuild. This includes:  
  
-   Online index rebuild is not supported when the table contains legacy LOB or filestream columns or when the table has a columnstore index. The same limitations apply for online alter column.  
  
-   An existing column being altered requires twice the space allocation; for the original column and for the newly created hidden column.  
  
-   The locking strategy during an alter column online operation follows the same locking pattern used for online index build.  
  
 WITH CHECK | WITH NOCHECK  
 Specifies whether the data in the table is or is not validated against a newly added or re-enabled FOREIGN KEY or CHECK constraint. If not specified, WITH CHECK is assumed for new constraints, and WITH NOCHECK is assumed for re-enabled constraints.  
  
 If you do not want to verify new CHECK or FOREIGN KEY constraints against existing data, use WITH NOCHECK. We do not recommend doing this, except in rare cases. The new constraint will be evaluated in all later data updates. Any constraint violations that are suppressed by WITH NOCHECK when the constraint is added may cause future updates to fail if they update rows with data that does not comply with the constraint.  
  
 The query optimizer does not consider constraints that are defined WITH NOCHECK. Such constraints are ignored until they are re-enabled by using `ALTER TABLE table WITH CHECK CHECK CONSTRAINT ALL`.  
  
 ADD  
 Specifies that one or more column definitions, computed column definitions, or table constraints are added, or the columns that the system will use for system versioning.  
  
 PERIOD FOR SYSTEM_TIME ( system_start_time_column_name, system_end_time_column_name )  
 ||  
|-|  
|**Applies to**:  [!INCLUDE[ssCurrentLong](../../relational-databases/reference/system-catalog-views/includes/sscurrentlong-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies the names of the columns that the system will use to record the period for which a record is valid. You can specify existing columns or create new columns as part of the ADD PERIOD FOR SYSTEM_TIME argument. The columns must have the datatype of datetime2 and must be defined as NOT NULL. If a period column is defined as NULL, an error will be thrown. You can define a [column_constraint &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-column-constraint-transact-sql.md) and/or  [Specify Default Values for Columns](../../relational-databases/tables/specify-default-values-for-columns.md) for the system_start_time and system_end_time columns. See Example A in the [System Versioning](#system_versioning) examples below demonstrating the use of a default value for the system_end_time column.  
  
 Use this argument in conjunction with the SET SYSTEM_VERSIONING argument to enable system versioning on an existing table. For more information, see [Temporal Tables](../../relational-databases/tables/temporal-tables.md) and [Getting Started with Temporal Tables in Azure SQL Database](https://azure.microsoft.com/documentation/articles/sql-database-temporal-tables/).  
  
 As of [!INCLUDE[ssCurrentLong](../../relational-databases/reference/system-catalog-views/includes/sscurrentlong-md.md)], users will be able to mark one or both period columns with **HIDDEN** flag to implicitly hide these columns such that **SELECT \* FROM***\<table>* does not return a value for those columns. By default, period columns are not hidden. In order to be used, hidden columns must be explicitly included in all queries that directly reference the temporal table.  
  
 DROP  
 Specifies that one or more column definitions, computed column definitions, or table constraints are dropped, or to drop the specification for the columns that the system will use for system versioning.  
  
 CONSTRAINT *constraint_name*  
 Specifies that *constraint_name* is removed from the table. Multiple constraints can be listed.  
  
 The user-defined or system-supplied name of the constraint can be determined by querying the **sys.check_constraint**, **sys.default_constraints**, **sys.key_constraints**, and **sys.foreign_keys** catalog views.  
  
 A PRIMARY KEY constraint cannot be dropped if an XML index exists on the table.  
  
 COLUMN *column_name*  
 Specifies that *constraint_name* or *column_name* is removed from the table. Multiple columns can be listed.  
  
 A column cannot be dropped when it is:  
  
-   Used in an index.  
  
-   Used in a CHECK, FOREIGN KEY, UNIQUE, or PRIMARY KEY constraint.  
  
-   Associated with a default that is defined with the DEFAULT keyword, or bound to a default object.  
  
-   Bound to a rule.  
  
> [!NOTE]  
>  Dropping a column does not reclaim the disk space of the column. You may have to reclaim the disk space of a dropped column when the row size of a table is near, or has exceeded, its limit. Reclaim space by creating a clustered index on the table or rebuilding an existing clustered index by using [ALTER INDEX](../../t-sql/statements/alter-index-transact-sql.md). For information about the impact of dropping LOB data types, see this [CSS blog entry](http://blogs.msdn.com/b/psssql/archive/2012/12/03/how-it-works-gotcha-varchar-max-caused-my-queries-to-be-slower.aspx).  
  
 PERIOD FOR SYSTEM_TIME  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Drops the specification for the columns that the system will use for system versioning.  
  
 WITH <drop_clustered_constraint_option>  
 Specifies that one or more drop clustered constraint options are set.  
  
 MAXDOP = *max_degree_of_parallelism*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Overrides the **max degree of parallelism** configuration option only for the duration of the operation. For more information, see [Configure the max degree of parallelism Server Configuration Option](../../database-engine/configure/windows/configure-the-max-degree-of-parallelism-server-configuration-option.md).  
  
 Use the MAXDOP option to limit the number of processors used in parallel plan execution. The maximum is 64 processors.  
  
 *max_degree_of_parallelism* can be one of the following values:  
  
 1  
 Suppresses parallel plan generation.  
  
 \>1  
 Restricts the maximum number of processors used in a parallel index operation to the specified number.  
  
 0 (default)  
 Uses the actual number of processors or fewer based on the current system workload.  
  
 For more information, see [Configure Parallel Index Operations](../../relational-databases/indexes/configure-parallel-index-operations.md).  
  
> [!NOTE]  
>  Parallel index operations are not available in every edition of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. For more information, see [Editions and Supported Features for SQL Server 2016](../../sql-server/editions-and-supported-features-for-sql-server-2016.md).  
  
 ONLINE **=** { ON | **OFF** } \<as applies to drop_clustered_constraint_option>  
 Specifies whether underlying tables and associated indexes are available for queries and data modification during the index operation. The default is OFF. REBUILD can be performed as an ONLINE operation.  
  
 ON  
 Long-term table locks are not held for the duration of the index operation. During the main phase of the index operation, only an Intent Share (IS) lock is held on the source table. This enables queries or updates to the underlying table and indexes to continue. At the start of the operation, a Shared (S) lock is held on the source object for a very short time. At the end of the operation, for a short time, an S (Shared) lock is acquired on the source if a nonclustered index is being created; or an SCH-M (Schema Modification) lock is acquired when a clustered index is created or dropped online and when a clustered or nonclustered index is being rebuilt. ONLINE cannot be set to ON when an index is being created on a local temporary table. Only single-threaded heap rebuild operation is allowed.  
  
 To execute the DDL for **SWITCH** or online index rebuild, all active blocking transactions running on a particular table must be completed. When executing, the **SWITCH** or rebuild operation prevents new transaction from starting and might significantly affect the workload throughput and temporarily delay access to the underlying table.  
  
 OFF  
 Table locks are applied for the duration of the index operation. An offline index operation that creates, rebuilds, or drops a clustered index, or rebuilds or drops a nonclustered index, acquires a Schema modification (Sch-M) lock on the table. This prevents all user access to the underlying table for the duration of the operation. An offline index operation that creates a nonclustered index acquires a Shared (S) lock on the table. This prevents updates to the underlying table but allows read operations, such as SELECT statements. Multi-threaded heap rebuild operations are allowed.  
  
 For more information, see [How Online Index Operations Work](../../relational-databases/indexes/how-online-index-operations-work.md).  
  
> [!NOTE]  
>  Online index operations are not available in every edition of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. For more information, see [Editions and Supported Features for SQL Server 2016](../../sql-server/editions-and-supported-features-for-sql-server-2016.md).  
  
 MOVE TO { *partition_scheme_name***(***column_name* [ 1**,** ... *n*] **)** | *filegroup* | **"**default**"** }  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies a location to move the data rows currently in the leaf level of the clustered index. The table is moved to the new location. This option applies only to constraints that create a clustered index.  
  
> [!NOTE]  
>  In this context, default is not a keyword. It is an identifier for the default filegroup and must be delimited, as in MOVE TO **"**default**"** or MOVE TO **[**default**]**. If **"**default**"** is specified, the QUOTED_IDENTIFIER option must be ON for the current session. This is the default setting. For more information, see [SET QUOTED_IDENTIFIER &#40;Transact-SQL&#41;](../../t-sql/statements/set-quoted-identifier-transact-sql.md).  
  
 { CHECK | NOCHECK } CONSTRAINT  
 Specifies that *constraint_name* is enabled or disabled. This option can only be used with FOREIGN KEY and CHECK constraints. When NOCHECK is specified, the constraint is disabled and future inserts or updates to the column are not validated against the constraint conditions. DEFAULT, PRIMARY KEY, and UNIQUE constraints cannot be disabled.  
  
 ALL  
 Specifies that all constraints are either disabled with the NOCHECK option or enabled with the CHECK option.  
  
 { ENABLE | DISABLE } TRIGGER  
 Specifies that *trigger_name* is enabled or disabled. When a trigger is disabled it is still defined for the table; however, when INSERT, UPDATE, or DELETE statements are executed against the table, the actions in the trigger are not performed until the trigger is re-enabled.  
  
 ALL  
 Specifies that all triggers in the table are enabled or disabled.  
  
 *trigger_name*  
 Specifies the name of the trigger to disable or enable.  
  
 { ENABLE | DISABLE } CHANGE_TRACKING  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies whether change tracking is enabled disabled for the table. By default, change tracking is disabled.  
  
 This option is available only when change tracking is enabled for the database. For more information, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-set-options.md).  
  
 To enable change tracking, the table must have a primary key.  
  
 WITH **(** TRACK_COLUMNS_UPDATED **=** { ON | **OFF** } **)**  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies whether the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] tracks which change tracked columns were updated. The default value is OFF.  
  
 SWITCH [ PARTITION *source_partition_number_expression* ] TO [ *schema_name***.** ] *target_table* [ PARTITION target_ *partition_number_expression* ]  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Switches a block of data in one of the following ways:  
  
-   Reassigns all data of a table as a partition to an already-existing partitioned table.  
  
-   Switches a partition from one partitioned table to another.  
  
-   Reassigns all data in one partition of a partitioned table to an existing non-partitioned table.  
  
 If *table* is a partitioned table, *source_partition_number_expression* must be specified. If *target_table* is partitioned, *target_partition_number_expression* must be specified. If reassigning a table's data as a partition to an already-existing partitioned table, or switching a partition from one partitioned table to another, the target partition must exist and it must be empty.  
  
 If reassigning one partition's data to form a single table, the target table must already be created and it must be empty. Both the source table or partition, and the target table or partition, must reside in the same filegroup. The corresponding indexes, or index partitions, must also reside in the same filegroup. Many additional restrictions apply to switching partitions. *table* and *target_table* cannot be the same. *target_table* can be a multi-part identifier.  
  
 *source_partition_number_expression* and *target_partition_number_expression* are constant expressions that can reference variables and functions. These include user-defined type variables and user-defined functions. They cannot reference [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] expressions.  
  
 A partitioned table with a clustered columstore index behaves like a partitioned heap:  
  
-   The primary key must include the partition key.  
  
-   A  
    unique index must include the partition key.  Note that including the partition key to an existing unique index can change the uniqueness.  
  
-   In order to switch partitions, all non-clustered indexes must include the partition key.  
  
 For **SWITCH** restriction when using replication, see [Replicate Partitioned Tables and Indexes](../../relational-databases/replication/publish/replicate-partitioned-tables-and-indexes.md).  
  
 Nonclustered columnstore indexes built for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] 2016  CTP1, and for SQL Database before version V12 were in a read-only format. Nonclustered columnstore indexes must be rebuilt to the current format (which is updatable) before any PARTITION operations can be performed.  
  
 SET **(** FILESTREAM_ON = { *partition_scheme_name* | *filestream_filegroup_name* |         **"**default**"** | **"**NULL**"** }**)**  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
 Specifies where FILESTREAM data is stored.  
  
 ALTER TABLE with the SET FILESTREAM_ON clause will succeed only if the table has no FILESTREAM columns. The FILESTREAM columns can be added by using a second ALTER TABLE statement.  
  
 If *partition_scheme_name* is specified, the rules for [CREATE TABLE](../../t-sql/statements/create-table-transact-sql.md) apply. The table should already be partitioned for row data, and its partition scheme must use the same partition function and columns as the FILESTREAM partition scheme.  
  
 *filestream_filegroup_name* specifies the name of a FILESTREAM filegroup. The filegroup must have one file that is defined for the filegroup by using a [CREATE DATABASE](../../t-sql/statements/create-database-sql-server-transact-sql.md) or [ALTER DATABASE](../../t-sql/statements/alter-database-transact-sql.md) statement, or an error is raised.  
  
 **"**default**"** specifies the FILESTREAM filegroup with the DEFAULT property set. If there is no FILESTREAM filegroup, an error is raised.  
  
 **"**NULL**"** specifies that all references to FILESTREAM filegroups for the table will be removed. All FILESTREAM columns must be dropped first. You must use SET FILESTREAM_ON**="**NULL**"** to delete all FILESTREAM data that is associated with a table.  
  
 SET **(** SYSTEM_VERSIONING **=** { OFF | ON [ ( HISTORY_TABLE = schema_name . history_table_name [ , DATA_CONSISTENCY_CHECK = { **ON** | OFF } ]  ) ] } **)**  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)]  and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Either disables system versioning of a table or enables system versioning of a table. To enable system versioning of a table, the system verifies that the datatype, nullability constraint, and primary key constraint requirements for system versioning are met. If the HISTORY_TABLE argument is not used, the system generates a new history table matching the schema of the current table, creating a link between the two tables and enables the system to record the history of each record in the current table in the history table. The name of this history table will be `MSSQL_TemporalHistoryFor<primary_table_object_id>`. If the HISTORY_TABLE argument is used to create a link to and use an existing history table, the link is created between the current table and the specified table. When creating a link to an existing history table, you can choose to perform a data consistency check. This data consistency check ensures that existing records do not overlap. Performing the data consistency check is the default. For more information, see [Temporal Tables](../../relational-databases/tables/temporal-tables.md).  
  
HISTORY_RETENTION_PERIOD = { **INFINITE** | number {DAY | DAYS | WEEK |  WEEKS | MONTH | MONTHS | YEAR | YEARS} }
||  
|-| 
|**Applies to**:  [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  

Specifies finite or infinte retention  for historical data in temporal table. If omitted, infinite retention is assumed.
  
 SET **(** LOCK_ESCALATION = { AUTO | TABLE | DISABLE } **)**  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies the allowed methods of lock escalation for a table.  
  
 AUTO  
 This option allows [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)] to select the lock escalation granularity that is appropriate for the table schema.  
  
-   If the table is partitioned, lock escalation will be allowed to partition. After the lock is escalated to the partition level, the lock will not be escalated later to TABLE granularity.  
  
-   If the table is not partitioned, the lock escalation will be done to the TABLE granularity.  
  
 TABLE  
 Lock escalation will be done at table-level granularity regardless whether the table is partitioned or not partitioned. TABLE is the default value.  
  
 DISABLE  
 Prevents lock escalation in most cases. Table-level locks are not completely disallowed. For example, when you are scanning a table that has no clustered index under the serializable isolation level, [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] must take a table lock to protect data integrity.  
  
 REBUILD  
 Use the REBUILD WITH syntax to rebuild an entire table including all the partitions in a partitioned table. If the table has a clustered index, the REBUILD option rebuilds the clustered index. REBUILD can be performed as an ONLINE operation.  
  
 Use the REBUILD PARTITION syntax to rebuild a single partition in a partitioned table.  
  
 PARTITION = ALL  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Rebuilds all partitions when changing the partition compression settings.  
  
 REBUILD WITH ( <rebuild_option> )  
 All options apply to a table with a clustered index. If the table does not have a clustered index, the heap structure is only affected by some of the options.  
  
 When a specific compression setting is not specified with the REBUILD operation, the current compression setting for the partition is used. To return the current setting, query the **data_compression** column in the **sys.partitions** catalog view.  
  
 For complete descriptions of the rebuild options, see [index_option &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-index-option-transact-sql.md).  
  
 DATA_COMPRESSION  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Specifies the data compression option for the specified table, partition number, or range of partitions. The options are as follows:  
  
 NONE  
 Table or specified partitions are not compressed. This does not apply to columnstore tables.  
  
 ROW  
 Table or specified partitions are compressed by using row compression. This does not apply to columnstore tables.  
  
 PAGE  
 Table or specified partitions are compressed by using page compression. This does not apply to columnstore tables.  
  
 COLUMNSTORE  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Applies only to columnstore tables. COLUMNSTORE specifies to decompress a partition that was compressed with the COLUMNSTORE_ARCHIVE option. When the data is restored, it will continue to be compressed with the columnstore compression that is used for all columnstore tables.  
  
 COLUMNSTORE_ARCHIVE  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Applies only to columnstore tables, which are tables stored with a clustered columnstore index. COLUMNSTORE_ARCHIVE will further compress the specified partition to a smaller size. This can be used for archival, or for other situations that require less storage and can afford more time for storage and retrieval  
  
 To rebuild multiple partitions at the same time, see [index_option &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-index-option-transact-sql.md). If the table does not have a clustered index, changing the data compression rebuilds the heap and the nonclustered indexes. For more information about compression, see [Data Compression](../../relational-databases/data-compression/data-compression.md).  
  
 ONLINE **=** { ON  | **OFF** } \<as applies to single_partition_rebuild_option>  
 Specifies whether a single partition of the underlying tables and associated indexes are available for queries and data modification during the index operation. The default is OFF. REBUILD can be performed as an ONLINE operation.  
  
 ON  
 Long-term table locks are not held for the duration of the index operation. A S-lock on the table is required in the beginning of the index rebuild and a Sch-M lock on the table at the end of the online index rebuild. Although both locks are short metadata locks, especially the Sch-M lock must wait for all blocking transactions to be completed. During the wait time the Sch-M lock blocks all other transactions that wait behind this lock when accessing the same table.  
  
> [!NOTE]  
>  Online index rebuild can set the *low_priority_lock_wait* options described later in this section.  
  
 OFF  
 Table locks are applied for the duration of the index operation. This prevents all user access to the underlying table for the duration of the operation.  
  
 *column_set_name* XML COLUMN_SET FOR ALL_SPARSE_COLUMNS  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Is the name of the column set. A column set is an untyped XML representation that combines all of the sparse columns of a table into a structured output. A column set cannot be added to a table that contains sparse columns. For more information about column sets, see [Use Column Sets](../../relational-databases/tables/use-column-sets.md).  
  
 { ENABLE | DISABLE } FILETABLE_NAMESPACE  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
 Enables or disables the system-defined constraints on a FileTable. Can only be used with a FileTable.  
  
 SET ( FILETABLE_DIRECTORY = *directory_name* )  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
 Specifies the Windows-compatible FileTable directory name. This name should be unique among all the FileTable directory names in the database. Uniqueness comparison is case-insensitive, regardless of SQL collation settings. Can only be used with a FileTable.  
  
 SET (  
        REMOTE_DATA_ARCHIVE   
        {  
            = ON (  <table_stretch_options> )  
          | = OFF_WITHOUT_DATA_RECOVERY  
          ( MIGRATION_STATE = PAUSED ) | ( <table_stretch_options> [, ...n] )  
        } )  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
 Enables or disables Stretch Database for a table. For more info, see [Stretch Database](../../sql-server/install/stretch-database.md).  
  
 **Enabling Stretch Database for a table**  
  
 When you enable Stretch for a table by specifying `ON`, you also have to specify `MIGRATION_STATE = OUTBOUND` to begin migrating data immediately, or `MIGRATION_STATE = PAUSED` to postpone data migration. The default value is `MIGRATION_STATE = OUTBOUND`. For more info about enabling Stretch for a table, see [Enable Stretch Database for a table](../../sql-server/install/enable-stretch-database-for-a-table.md).  
  
 **Prerequisites**. Before you enable Stretch for a table, you have to enable Stretch on the server and on the database. For more info, see [Enable Stretch Database for a database](../../sql-server/install/enable-stretch-database-for-a-database.md).  
  
 **Permissions**. Enabling Stretch for a database or a table requires db_owner permissions. Enabling Stretch for a table also requires ALTER permissions on the table.  
  
 **Disabling Stretch Database for a table**  
  
 When you disable Stretch for a table, you have two options for the remote data that has already been migrated to Azure. For more info, see [Disable Stretch Database and bring back remote data](../../sql-server/install/disable-stretch-database-and-bring-back-remote-data.md).  
  
-   To disable Stretch for a table and copy the remote data for the table from Azure back to SQL Server, run the following command. This command can't be canceled.  
  
    ```tsql  
    ALTER TABLE <table name>  
       SET ( REMOTE_DATA_ARCHIVE ( MIGRATION_STATE = INBOUND ) ) ;  
    ```  
  
     This operation incurs data transfer costs, and it can't be canceled. For more info, see [Data Transfers Pricing Details](https://azure.microsoft.com/en-us/pricing/details/data-transfers/).  
  
     After all the remote data has been copied from Azure back to SQL Server, Stretch is disabled for the table.  
  
-   To disable Stretch for a table and abandon the remote data, run the following command.  
  
    ```tsql  
    ALTER TABLE <table_name>  
       SET ( REMOTE_DATA_ARCHIVE = OFF_WITHOUT_DATA_RECOVERY ( MIGRATION_STATE = PAUSED ) ) ;  
    ```  
  
 After you disable Stretch Database for a table, data migration stops and query results no longer include results from the remote table.  
  
 Disabling Stretch does not remove the remote table. If you want to delete the remote table, you have to drop it by using the Azure management portal.  
  
 [ FILTER_PREDICATE = { null | *predicate* } ]  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
 Optionally specifies a filter predicate to select rows to migrate from a table that contains both historical and current data. The predicate must call a deterministic inline table-valued function. For more info, see [Enable Stretch Database for a table](../../sql-server/install/enable-stretch-database-for-a-table.md) and [Select rows to migrate by using a filter function &#40;Stretch Database&#41;](../../sql-server/install/select-rows-to-migrate-by-using-a-filter-function-stretch-database.md).   
  
> [!IMPORTANT]  
>  If you provide a filter predicate that performs poorly, data migration also performs poorly. Stretch Database applies the filter predicate to the table by using the CROSS APPLY operator.  
  
 If you don't specify a filter predicate, the entire table is migrated.  
  
 When you specify a filter predicate, you also have to specify *MIGRATION_STATE*.  
  
 MIGRATION_STATE = { OUTBOUND |  INBOUND | PAUSED }  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
-   Specify `OUTBOUND` to migrate data from SQL Server to Azure.  
  
-   Specify `INBOUND` to copy the remote data for the table from Azure back to SQL Server and to disable Stretch for the table. For more info, see [Disable Stretch Database and bring back remote data](../../sql-server/install/disable-stretch-database-and-bring-back-remote-data.md).  
  
     This operation incurs data transfer costs, and it can't be canceled.  
  
-   Specify `PAUSED` to pause or postpone data migration. For more info, see [Pause and resume data migration &#40;Stretch Database&#41;](../../sql-server/install/pause-and-resume-data-migration-stretch-database.md).  
  
 WAIT_AT_LOW_PRIORITY  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 An online index rebuild has to wait for blocking operations on this table. **WAIT_AT_LOW_PRIORITY** indicates that the online index rebuild operation will wait for low priority locks, allowing other operations to proceed while the online index build operation is waiting. Omitting the **WAIT AT LOW PRIORITY** option is equivalent to WA`IT_AT_LOW_PRIORITY ( MAX_DURATION = 0 minutes, ABORT_AFTER_WAIT = NONE)`.  
  
 MAX_DURATION = *time* [**MINUTES** ]  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 The wait time (an integer value specified in minutes) that the **SWITCH** or online index rebuild locks will wait with low priority when executing the DDL command. If the operation is blocked for the **MAX_DURATION** time, one of the **ABORT_AFTER_WAIT** actions will be executed. **MAX_DURATION** time is always in minutes, and the word **MINUTES** can be omitted.  
  
 ABORT_AFTER_WAIT = [**NONE** | **SELF** | **BLOCKERS** } ]  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 NONE  
 Continue waiting for the lock with normal (regular) priority.  
  
 SELF  
 Exit the **SWITCH** or online index rebuild DDL operation currently being executed without taking any action.  
  
 BLOCKERS  
 Kill all user transactions that block currently the **SWITCH** or online index rebuild DDL operation so that the operation can continue.  
  
 Requires **ALTER ANY CONNECTION** permission.  
  
 *IF EXISTS*  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)) and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
 Conditionally drops the column or constraint  only if it already exists.  
  
## Remarks  
 To add new rows of data, use [INSERT](../../t-sql/statements/insert-transact-sql.md). To remove rows of data, use [DELETE](../../t-sql/statements/delete-transact-sql.md) or [TRUNCATE TABLE](../../t-sql/statements/truncate-table-transact-sql.md). To change the values in existing rows, use [UPDATE](../../t-sql/queries/update-transact-sql.md).  
  
 If there are any execution plans in the procedure cache that reference the table, ALTER TABLE marks them to be recompiled on their next execution.  
  
## Changing the Size of a Column  
 You can change the length, precision, or scale of a column by specifying a new size for the column data type in the ALTER COLUMN clause. If data exists in the column, the new size cannot be smaller than the maximum size of the data. Also, the column cannot be defined in an index, unless the column is a **varchar**, **nvarchar**, or **varbinary** data type and the index is not the result of a PRIMARY KEY constraint. See example P.  
  
## Locks and ALTER TABLE  
 The changes specified in ALTER TABLE are implemented immediately. If the changes require modifications of the rows in the table, ALTER TABLE updates the rows. ALTER TABLE acquires a schema modify (SCH-M) lock on the table to make sure that no other connections reference even the metadata for the table during the change, except online index operations that require a very short SCH-M lock at the end. In an ALTER TABLE…SWITCH operation, the lock is acquired on both the source and target tables. The modifications made to the table are logged and fully recoverable. Changes that affect all the rows in very large tables, such as dropping a column or, on some editions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], adding a NOT NULL column with a default value, can take a long time to complete and generate many log records. These ALTER TABLE statements should be executed with the same care as any INSERT, UPDATE, or DELETE statement that affects many rows.  
  
### Adding NOT NULL Columns as an Online Operation  
 Starting with [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] Enterprise Edition, adding a NOT NULL column with a default value is an online operation when the default value is a *runtime constant*. This means that the operation is completed almost instantaneously regardless of the number of rows in the table. This is because the existing rows in the table are not updated during the operation; instead, the default value is stored only in the metadata of the table and the value is looked up as needed in queries that access these rows. This behavior is automatic; no additional syntax is required to implement the online operation beyond the ADD COLUMN syntax. A runtime constant is an expression that produces the same value at runtime for each row in the table regardless of its determinism. For example, the constant expression "My temporary data", or the system function GETUTCDATETIME() are runtime constants. In contrast, the functions NEWID() or NEWSEQUENTIALID() are not runtime constants because a unique value is produced for each row in the table. Adding a NOT NULL column with a default value that is not a runtime constant is always performed offline and an exclusive (SCH-M) lock is acquired for the duration of the operation.  
  
 While the existing rows reference the value stored in metadata, the default value is stored on the row for any new rows that are inserted and do not specify another value for the column. The default value stored in metadata is moved to an existing row when the row is updated (even if the actual column is not specified in the UPDATE statement), or if the table or clustered index is rebuilt.  
  
 Columns of type **varchar(max)**, **nvarchar(max)**, **varbinary(max)**, **xml**, **text**, **ntext**, **image**, **hierarchyid**, **geometry**, **geography**, or CLR UDTS, cannot be added in an online operation. A column cannot be added online if doing so causes the maximum possible row size to exceed the 8,060 byte limit. The column is added as an offline operation in this case.  
  
## Parallel Plan Execution  
 In [!INCLUDE[ssEnterpriseEd11](../../integration-services/connection-manager/includes/ssenterpriseed11-md.md)] and higher, the number of processors employed to run a single ALTER TABLE ADD (index based) CONSTRAINT or DROP (clustered index) CONSTRAINT statement is determined by the **max degree of parallelism** configuration option and the current workload. If the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] detects that the system is busy, the degree of parallelism of the operation is automatically reduced before statement execution starts. You can manually configure the number of processors that are used to run the statement by specifying the MAXDOP option. For more information, see [Configure the max degree of parallelism Server Configuration Option](../../database-engine/configure/windows/configure-the-max-degree-of-parallelism-server-configuration-option.md).  
  
## Partitioned Tables  
 In addition to performing SWITCH operations that involve partitioned tables, ALTER TABLE can be used to change the state of the columns, constraints, and triggers of a partitioned table just like it is used for nonpartitioned tables. However, this statement cannot be used to change the way the table itself is partitioned. To repartition a partitioned table, use [ALTER PARTITION SCHEME](../../t-sql/statements/alter-partition-scheme-transact-sql.md) and [ALTER PARTITION FUNCTION](../../t-sql/statements/alter-partition-function-transact-sql.md). Additionally, you cannot change the data type of a column of a partitioned table.  
  
## Restrictions on Tables with Schema-Bound Views  
 The restrictions that apply to ALTER TABLE statements on tables with schema-bound views are the same as the restrictions currently applied when modifying tables with a simple index. Adding a column is allowed. However, removing or changing a column that participates in any schema-bound view is not allowed. If the ALTER TABLE statement requires changing a column used in a schema-bound view, ALTER TABLE fails and the [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] raises an error message. For more information about schema binding and indexed views, see [CREATE VIEW &#40;Transact-SQL&#41;](../../t-sql/statements/create-view-transact-sql.md).  
  
 Adding or removing triggers on base tables is not affected by creating a schema-bound view that references the tables.  
  
## Indexes and ALTER TABLE  
 Indexes created as part of a constraint are dropped when the constraint is dropped. Indexes that were created with CREATE INDEX must be dropped with DROP INDEX. The ALTER INDEX statement can be used to rebuild an index part of a constraint definition; the constraint does not have to be dropped and added again with ALTER TABLE.  
  
 All indexes and constraints based on a column must be removed before the column can be removed.  
  
 When a constraint that created a clustered index is deleted, the data rows that were stored in the leaf level of the clustered index are stored in a nonclustered table. You can drop the clustered index and move the resulting table to another filegroup or partition scheme in a single transaction by specifying the MOVE TO option. The MOVE TO option has the following restrictions:  
  
-   MOVE TO is not valid for indexed views or nonclustered indexes.  
  
-   The partition scheme or filegroup must already exist.  
  
-   If MOVE TO is not specified, the table will be located in the same partition scheme or filegroup as was defined for the clustered index.  
  
 When you drop a clustered index, you can specify ONLINE **=** ON option so the DROP INDEX transaction does not block queries and modifications to the underlying data and associated nonclustered indexes.  
  
 ONLINE **=** ON has the following restrictions:  
  
-   ONLINE **=** ON is not valid for clustered indexes that are also disabled. Disabled indexes must be dropped by using ONLINE **=** OFF.  
  
-   Only one index at a time can be dropped.  
  
-   ONLINE **=** ON is not valid for indexed views, nonclustered indexes or indexes on local temp tables.  
  
-   ONLINE **=** ON is not valid for columnstore indexes.  
  
 Temporary disk space equal to the size of the existing clustered index is required to drop a clustered index. This additional space is released as soon as the operation is completed.  
  
> [!NOTE]  
>  The options listed under *<drop_clustered_constraint_option>* apply to clustered indexes on tables and cannot be applied to clustered indexes on views or nonclustered indexes.  
  
## Replicating Schema Changes  
 By default, when you run ALTER TABLE on a published table at a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Publisher, that change is propagated to all [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Subscribers. This functionality has some restrictions and can be disabled. For more information, see [Make Schema Changes on Publication Databases](../../relational-databases/replication/publish/make-schema-changes-on-publication-databases.md).  
  
## Data Compression  
 System tables cannot be enabled for compression. If the table is a heap, the rebuild operation for ONLINE mode will be single threaded. Use OFFLINE mode for a multi-threaded heap rebuild operation. For a more information about data compression, see[Data Compression](../../relational-databases/data-compression/data-compression.md).  
  
 To evaluate how changing the compression state will affect a table, an index, or a partition, use the [sp_estimate_data_compression_savings](../../relational-databases/reference/system-stored-procedures/sp-estimate-data-compression-savings-transact-sql.md) stored procedure.  
  
 The following restrictions apply to partitioned tables:  
  
-   You cannot change the compression setting of a single partition if the table has nonaligned indexes.  
  
-   The ALTER TABLE \<table> REBUILD PARTITION ... syntax rebuilds the specified partition.  
  
-   The ALTER TABLE \<table> REBUILD WITH ... syntax rebuilds all partitions.  
  
## Dropping NTEXT Columns  
 When dropping NTEXT columns, the cleanup of the deleted data occurs as a serialized operation on all rows. This can require a substantial time. When dropping an NTEXT column in a table with a large number rows, update the NTEXT column to NULL value first, then drop the column. This can be performed with parallel operations and can be much faster.  
  
## Online Index Rebuild  
 In order to execute the DDL statement for an online index rebuild, all active blocking transactions running on a particular table must be completed. When the online index rebuild executes, it blocks all new transactions that are ready to start execution on this table. Although the duration of the lock for online index rebuild is very short, waiting for all open transactions on a given table to complete and blocking the new transactions to start, might significantly affect the throughput, causing a workload slow down or timeout, and significantly limit access to the underlying table. The **WAIT_AT_LOW_PRIORITY** option allows DBA's to manage the S-lock and Sch-M locks required for online index rebuilds and allows them to select one of 3 options. In all 3 cases, if during the wait time ( `(MAX_DURATION =n [minutes])` ) there are no blocking activities, the online index rebuild is executed immediately without waiting and the DDL statement is completed.  
  
## Compatibility Support  
 The ALTER TABLE statement allows only two-part (schema.object) table names. In [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)], specifying a table name using the following formats fails at compile time with error 117.  
  
-   server.database.schema.table  
  
-   .database.schema.table  
  
-   ..schema.table  
  
 In earlier versions specifying the format server.database.schema.table returned error 4902. Specifying the format .database.schema.table or the format ..schema.table succeeded.  
  
 To resolve the problem, remove the use of a 4-part prefix.  
  
## Permissions  
 Requires ALTER permission on the table.  
  
 ALTER TABLE permissions apply to both tables involved in an ALTER TABLE SWITCH statement. Any data that is switched inherits the security of the target table.  
  
 If any columns in the ALTER TABLE statement are defined to be of a common language runtime (CLR) user-defined type or alias data type, REFERENCES permission on the type is required.  
  
 Adding a column that updates the rows of the table requires **UPDATE** permission on the table. For example, adding a **NOT NULL** column with a default value or adding an identity column when the table is not empty.  
  
##  <a name="Example_Top"></a> Examples  
  
|Category|Featured syntax elements|  
|--------------|------------------------------|  
|[Adding columns and constraints](#add)|ADD • PRIMARY KEY with index options • sparse columns and column sets •|  
|[Dropping columns and constraints](#Drop)|DROP|  
|[Altering a column definition](#alter_column)|change data type • change column size • collation|  
|[Altering a table definition](#alter_table)|DATA_COMPRESSION • SWITCH PARTITION • LOCK ESCALATION • change tracking|  
|[Disabling and enabling constraints and triggers](#disable_enable)|CHECK • NO CHECK • ENABLE TRIGGER • DISABLE TRIGGER|  
  
###  <a name="add"></a> Adding Columns and Constraints  
 Examples in this section demonstrate adding columns and constraints to a table.  
  
#### A. Adding a new column  
 The following example adds a column that allows null values and has no values provided through a DEFAULT definition. In the new column, each row will have `NULL`.  
  
```  
CREATE TABLE dbo.doc_exa (column_a INT) ;  
GO  
ALTER TABLE dbo.doc_exa ADD column_b VARCHAR(20) NULL ;  
GO  
  
```  
  
#### B. Adding a column with a constraint  
 The following example adds a new column with a `UNIQUE` constraint.  
  
```  
CREATE TABLE dbo.doc_exc (column_a INT) ;  
GO  
ALTER TABLE dbo.doc_exc ADD column_b VARCHAR(20) NULL   
    CONSTRAINT exb_unique UNIQUE ;  
GO  
EXEC sp_help doc_exc ;  
GO  
DROP TABLE dbo.doc_exc ;  
GO  
```  
  
#### C. Adding an unverified CHECK constraint to an existing column  
 The following example adds a constraint to an existing column in the table. The column has a value that violates the constraint. Therefore, `WITH NOCHECK` is used to prevent the constraint from being validated against existing rows, and to allow for the constraint to be added.  
  
```  
CREATE TABLE dbo.doc_exd ( column_a INT) ;  
GO  
INSERT INTO dbo.doc_exd VALUES (-1) ;  
GO  
ALTER TABLE dbo.doc_exd WITH NOCHECK   
ADD CONSTRAINT exd_check CHECK (column_a > 1) ;  
GO  
EXEC sp_help doc_exd ;  
GO  
DROP TABLE dbo.doc_exd ;  
GO  
```  
  
#### D. Adding a DEFAULT constraint to an existing column  
 The following example creates a table with two columns and inserts a value into the first column, and the other column remains NULL. A `DEFAULT` constraint is then added to the second column. To verify that the default is applied, another value is inserted into the first column, and the table is queried.  
  
```  
CREATE TABLE dbo.doc_exz ( column_a INT, column_b INT) ;  
GO  
INSERT INTO dbo.doc_exz (column_a)VALUES ( 7 ) ;  
GO  
ALTER TABLE dbo.doc_exz  
ADD CONSTRAINT col_b_def  
DEFAULT 50 FOR column_b ;  
GO  
INSERT INTO dbo.doc_exz (column_a) VALUES ( 10 ) ;  
GO  
SELECT * FROM dbo.doc_exz ;  
GO  
DROP TABLE dbo.doc_exz ;  
GO  
```  
  
#### E. Adding several columns with constraints  
 The following example adds several columns with constraints defined with the new column. The first new column has an `IDENTITY` property. Each row in the table has new incremental values in the identity column.  
  
```  
CREATE TABLE dbo.doc_exe ( column_a INT CONSTRAINT column_a_un UNIQUE) ;  
GO  
ALTER TABLE dbo.doc_exe ADD   
  
-- Add a PRIMARY KEY identity column.  
column_b INT IDENTITY  
CONSTRAINT column_b_pk PRIMARY KEY,   
  
-- Add a column that references another column in the same table.  
column_c INT NULL    
CONSTRAINT column_c_fk   
REFERENCES doc_exe(column_a),  
  
-- Add a column with a constraint to enforce that   
-- nonnull data is in a valid telephone number format.  
column_d VARCHAR(16) NULL   
CONSTRAINT column_d_chk  
CHECK   
(column_d LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]' OR  
column_d LIKE  
'([0-9][0-9][0-9]) [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),  
  
-- Add a nonnull column with a default.  
column_e DECIMAL(3,3)  
CONSTRAINT column_e_default  
DEFAULT .081 ;  
GO  
EXEC sp_help doc_exe ;  
GO  
DROP TABLE dbo.doc_exe ;  
GO  
```  
  
#### F. Adding a nullable column with default values  
 The following example adds a nullable column with a `DEFAULT` definition, and uses `WITH VALUES` to provide values for each existing row in the table. If WITH VALUES is not used, each row has the value NULL in the new column.  
  
```  
  
CREATE TABLE dbo.doc_exf ( column_a INT) ;  
GO  
INSERT INTO dbo.doc_exf VALUES (1) ;  
GO  
ALTER TABLE dbo.doc_exf   
ADD AddDate smalldatetime NULL  
CONSTRAINT AddDateDflt  
DEFAULT GETDATE() WITH VALUES ;  
GO  
DROP TABLE dbo.doc_exf ;  
GO  
```  
  
#### G. Creating a PRIMARY KEY constraint with index options  
 The following example creates the PRIMARY KEY constraint `PK_TransactionHistoryArchive_TransactionID` and sets the options `FILLFACTOR`, `ONLINE`, and `PAD_INDEX`. The resulting clustered index will have the same name as the constraint.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
USE AdventureWorks2012;  
GO  
ALTER TABLE Production.TransactionHistoryArchive WITH NOCHECK   
ADD CONSTRAINT PK_TransactionHistoryArchive_TransactionID PRIMARY KEY CLUSTERED (TransactionID)  
WITH (FILLFACTOR = 75, ONLINE = ON, PAD_INDEX = ON);  
GO  
```  
  
#### H. Adding a sparse column  
 The following examples show adding and modifying sparse columns in table T1. The code to create table `T1` is as follows.  
  
```  
CREATE TABLE T1  
(C1 int PRIMARY KEY,  
C2 varchar(50) SPARSE NULL,  
C3 int SPARSE NULL,  
C4 int ) ;  
GO  
```  
  
 To add an additional sparse column `C5`, execute the following statement.  
  
```  
ALTER TABLE T1  
ADD C5 char(100) SPARSE NULL ;  
GO  
```  
  
 To convert the `C4` non-sparse column to a sparse column, execute the following statement.  
  
```  
ALTER TABLE T1  
ALTER COLUMN C4 ADD SPARSE ;  
GO  
```  
  
 To convert the `C4` sparse column to a nonsparse column, execute the following statement.  
  
```  
ALTER TABLE T1  
ALTER COLUMN C4 DROP SPARSE;  
GO  
```  
  
#### I. Adding a column set  
 The following examples show adding a column to table `T2`. A column set cannot be added to a table that already contains sparse columns. The code to create table `T2` is as follows.  
  
```  
CREATE TABLE T2  
(C1 int PRIMARY KEY,  
C2 varchar(50) NULL,  
C3 int NULL,  
C4 int ) ;  
GO  
```  
  
 The following three statements add a column set named `CS`, and then modify columns `C2` and `C3` to `SPARSE`.  
  
```  
ALTER TABLE T2  
ADD CS XML COLUMN_SET FOR ALL_SPARSE_COLUMNS ;  
GO  
  
ALTER TABLE T2  
ALTER COLUMN C2 ADD SPARSE ;   
GO  
  
ALTER TABLE T2  
ALTER COLUMN C3 ADD SPARSE ;  
GO  
```  
  
 ![Arrow icon used with Back to Top link](../../a9retired/media/uparrow16x16.gif "Arrow icon used with Back to Top link") [Examples](#Example_Top)  
  
#### J. Adding an encrypted column  
 The following statement adds an encrypted column named `PromotionCode`.  
  
```  
ALTER TABLE Customers ADD  
    PromotionCode nvarchar(100)   
    ENCRYPTED WITH (COLUMN_ENCRYPTION_KEY = MyCEK,  
    ENCRYPTION_TYPE = RANDOMIZED,  
    ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256') ;  
```  
  
###  <a name="Drop"></a> Dropping Columns and Constraints  
 The examples in this section demonstrate dropping columns and constraints.  
  
#### A. Dropping a column or columns  
 The first example modifies a table to remove a column. The second example removes multiple columns.  
  
```  
CREATE TABLE dbo.doc_exb   
    (column_a INT  
     ,column_b VARCHAR(20) NULL  
     ,column_c datetime  
     ,column_d int) ;  
GO  
-- Remove a single column.  
ALTER TABLE dbo.doc_exb DROP COLUMN column_b ;  
GO  
-- Remove multiple columns.  
ALTER TABLE dbo.doc_exb DROP COLUMN column_c, column_d;  
  
```  
  
#### B. Dropping constraints and columns  
 The first example removes a `UNIQUE` constraint from a table. The second example removes two constraints and a single column.  
  
```  
CREATE TABLE dbo.doc_exc ( column_a int NOT NULL CONSTRAINT my_constraint UNIQUE) ;  
GO  
  
-- Example 1. Remove a single constraint.  
ALTER TABLE dbo.doc_exc DROP my_constraint ;  
GO  
  
DROP TABLE dbo.doc_exc;  
GO  
  
CREATE TABLE dbo.doc_exc ( column_a int    
                          NOT NULL CONSTRAINT my_constraint UNIQUE  
                          ,column_b int   
                          NOT NULL CONSTRAINT my_pk_constraint PRIMARY KEY) ;  
GO  
  
-- Example 2. Remove two constraints and one column  
-- The keyword CONSTRAINT is optional. The keyword COLUMN is required.  
ALTER TABLE dbo.doc_exc   
  
    DROP CONSTRAINT CONSTRAINT my_constraint, my_pk_constraint, COLUMN column_b ;  
GO  
  
```  
  
#### C. Dropping a PRIMARY KEY constraint in the ONLINE mode  
 The following example deletes a PRIMARY KEY constraint with the `ONLINE` option set to `ON`.  
  
```  
  
ALTER TABLE Production.TransactionHistoryArchive  
DROP CONSTRAINT PK_TransactionHistoryArchive_TransactionID  
WITH (ONLINE = ON);  
GO  
```  
  
#### D. Adding and dropping a FOREIGN KEY constraint  
 The following example creates the table `ContactBackup`, and then alters the table, first by adding a `FOREIGN KEY` constraint that references the table `Person.Person`, then by dropping the `FOREIGN KEY` constraint.  
  
```  
  
CREATE TABLE Person.ContactBackup  
    (ContactID int) ;  
GO  
  
ALTER TABLE Person.ContactBackup  
ADD CONSTRAINT FK_ContactBacup_Contact FOREIGN KEY (ContactID)  
    REFERENCES Person.Person (BusinessEntityID) ;  
GO  
  
ALTER TABLE Person.ContactBackup  
DROP CONSTRAINT FK_ContactBacup_Contact ;  
GO  
  
DROP TABLE Person.ContactBackup ;  
```  
  
 ![Arrow icon used with Back to Top link](../../a9retired/media/uparrow16x16.gif "Arrow icon used with Back to Top link") [Examples](#Example_Top)  
  
###  <a name="alter_column"></a> Altering a Column Definition  
  
#### A. Changing the data type of a column  
 The following example changes a column of a table from `INT` to `DECIMAL`.  
  
```  
CREATE TABLE dbo.doc_exy (column_a INT ) ;  
GO  
INSERT INTO dbo.doc_exy (column_a) VALUES (10) ;  
GO  
ALTER TABLE dbo.doc_exy ALTER COLUMN column_a DECIMAL (5, 2) ;  
GO  
DROP TABLE dbo.doc_exy ;  
GO  
```  
  
#### B. Changing the size of a column  
 The following example increases the size of a **varchar** column and the precision and scale of a **decimal** column. Because the columns contain data, the column size can only be increased. Also notice that `col_a` is defined in a unique index. The size of `col_a` can still be increased because the data type is a **varchar** and the index is not the result of a PRIMARY KEY constraint.  
  
```  
IF OBJECT_ID ( 'dbo.doc_exy', 'U' ) IS NOT NULL   
    DROP TABLE dbo.doc_exy;  
GO  
-- Create a two-column table with a unique index on the varchar column.  
CREATE TABLE dbo.doc_exy ( col_a varchar(5) UNIQUE NOT NULL, col_b decimal (4,2));  
GO  
INSERT INTO dbo.doc_exy VALUES ('Test', 99.99);  
GO  
-- Verify the current column size.  
SELECT name, TYPE_NAME(system_type_id), max_length, precision, scale  
FROM sys.columns WHERE object_id = OBJECT_ID(N'dbo.doc_exy');  
GO  
-- Increase the size of the varchar column.  
ALTER TABLE dbo.doc_exy ALTER COLUMN col_a varchar(25);  
GO  
-- Increase the scale and precision of the decimal column.  
ALTER TABLE dbo.doc_exy ALTER COLUMN col_b decimal (10,4);  
GO  
-- Insert a new row.  
INSERT INTO dbo.doc_exy VALUES ('MyNewColumnSize', 99999.9999) ;  
GO  
-- Verify the current column size.  
SELECT name, TYPE_NAME(system_type_id), max_length, precision, scale  
FROM sys.columns WHERE object_id = OBJECT_ID(N'dbo.doc_exy');  
```  
  
#### C. Changing column collation  
 The following example shows how to change the collation of a column. Frist, a table is created table with the default user collation.  
  
```  
CREATE TABLE T3  
(C1 int PRIMARY KEY,  
C2 varchar(50) NULL,  
C3 int NULL,  
C4 int ) ;  
GO  
```  
  
 Next, column `C2` collation is changed to Latin1_General_BIN. Note that the data type is required, even though it is not changed.  
  
```  
ALTER TABLE T3  
ALTER COLUMN C2 varchar(50) COLLATE Latin1_General_BIN;  
GO  
  
```  
  
 ![Arrow icon used with Back to Top link](../../a9retired/media/uparrow16x16.gif "Arrow icon used with Back to Top link") [Examples](#Example_Top)  
  
###  <a name="alter_table"></a> Altering a Table Definition  
 The examples in this section demonstrate how to alter the definition of a table.  
  
#### A. Modifying a table to change the compression  
 The following example changes the compression of a nonpartitioned table. The heap or clustered index will be rebuilt. If the table is a heap, all nonclustered indexes will be rebuilt.  
  
```  
ALTER TABLE T1   
REBUILD WITH (DATA_COMPRESSION = PAGE);  
```  
  
 The following example changes the compression of a partitioned table. The `REBUILD PARTITION = 1` syntax causes only partition number `1` to be rebuilt.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
ALTER TABLE PartitionTable1   
REBUILD PARTITION = 1 WITH (DATA_COMPRESSION =  NONE) ;  
GO  
```  
  
 The same operation using the following alternate syntax causes all partitions in the table to be rebuilt.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
ALTER TABLE PartitionTable1   
REBUILD PARTITION = ALL   
WITH (DATA_COMPRESSION = PAGE ON PARTITIONS(1) ) ;  
```  
  
 For additional data compression examples, see [Data Compression](../../relational-databases/data-compression/data-compression.md).  
  
#### B. Modifying a columnstore table to change archival compression  
 The following example further compresses a columnstore table partition by applying an additional compression algorithm. This reduces the table to a smaller size, but also increases the time required for storage and retrieval. This is useful for archiving or for situations that require less space and can afford more time for storage and retrieval.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
ALTER TABLE PartitionTable1   
REBUILD PARTITION = 1 WITH (DATA_COMPRESSION =  COLUMNSTORE_ARCHIVE) ;  
GO  
```  
  
 The following example decompresses a columnstore table partition that was  compressed with COLUMNSTORE_ARCHIVE option. When the data is restored, it will continue to be compressed with the columnstore compression that is used for all columnstore tables.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
ALTER TABLE PartitionTable1   
REBUILD PARTITION = 1 WITH (DATA_COMPRESSION =  COLUMNSTORE) ;  
GO  
```  
  
#### C. Switching partitions between tables  
 The following example creates a partitioned table, assuming that partition scheme `myRangePS1` is already created in the database. Next, a non-partitioned table is created with the same structure as the partitioned table and on the same filegroup as `PARTITION 2` of table `PartitionTable`. The data of `PARTITION 2` of table `PartitionTable` is then switched into table `NonPartitionTable`.  
  
```  
CREATE TABLE PartitionTable (col1 int, col2 char(10))  
ON myRangePS1 (col1) ;  
GO  
CREATE TABLE NonPartitionTable (col1 int, col2 char(10))  
ON test2fg ;  
GO  
ALTER TABLE PartitionTable SWITCH PARTITION 2 TO NonPartitionTable ;  
GO  
```  
  
#### D. Allowing lock escalation on partitioned tables  
 The following example enables lock escalation to the partition level on a partitioned table. If the table is not partitioned, lock escalation is set at the TABLE level.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
ALTER TABLE dbo.T1 SET (LOCK_ESCALATION = AUTO);  
GO  
```  
  
#### E. Configuring change tracking on a table  
 The following example enables change tracking on the `Person.Person` table.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
USE AdventureWorks2012;  
ALTER TABLE Person.Person  
ENABLE CHANGE_TRACKING;  
```  
  
 The following example enables change tracking and enables the tracking of the columns that are updated during a change.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].|  
  
```  
USE AdventureWorks2012;  
GO  
ALTER TABLE Person.Person  
ENABLE CHANGE_TRACKING  
WITH (TRACK_COLUMNS_UPDATED = ON)  
```  
  
 The following example disables change tracking on the `Person.Person` table.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
USE AdventureWorks2012;  
Go  
ALTER TABLE Person.Person  
DISABLE CHANGE_TRACKING;  
```  
  
 ![Arrow icon used with Back to Top link](../../a9retired/media/uparrow16x16.gif "Arrow icon used with Back to Top link") [Examples](#Example_Top)  
  
###  <a name="disable_enable"></a> Disabling and Enabling Constraints and Triggers  
  
#### A. Disabling and re-enabling a constraint  
 The following example disables a constraint that limits the salaries accepted in the data. `NOCHECK CONSTRAINT` is used with `ALTER TABLE` to disable the constraint and allow for an insert that would typically violate the constraint. `CHECK CONSTRAINT` re-enables the constraint.  
  
```  
CREATE TABLE dbo.cnst_example   
(id INT NOT NULL,  
 name VARCHAR(10) NOT NULL,  
 salary MONEY NOT NULL  
    CONSTRAINT salary_cap CHECK (salary < 100000)  
);  
  
-- Valid inserts  
INSERT INTO dbo.cnst_example VALUES (1,'Joe Brown',65000);  
INSERT INTO dbo.cnst_example VALUES (2,'Mary Smith',75000);  
  
-- This insert violates the constraint.  
INSERT INTO dbo.cnst_example VALUES (3,'Pat Jones',105000);  
  
-- Disable the constraint and try again.  
ALTER TABLE dbo.cnst_example NOCHECK CONSTRAINT salary_cap;  
INSERT INTO dbo.cnst_example VALUES (3,'Pat Jones',105000);  
  
-- Re-enable the constraint and try another insert; this will fail.  
ALTER TABLE dbo.cnst_example CHECK CONSTRAINT salary_cap;  
INSERT INTO dbo.cnst_example VALUES (4,'Eric James',110000) ;  
```  
  
#### B. Disabling and re-enabling a trigger  
 The following example uses the `DISABLE TRIGGER` option of `ALTER TABLE` to disable the trigger and allow for an insert that would typically violate the trigger. `ENABLE TRIGGER` is then used to re-enable the trigger.  
  
```  
CREATE TABLE dbo.trig_example   
(id INT,   
name VARCHAR(12),  
salary MONEY) ;  
GO  
-- Create the trigger.  
CREATE TRIGGER dbo.trig1 ON dbo.trig_example FOR INSERT  
AS  
IF (SELECT COUNT(*) FROM INSERTED  
WHERE salary > 100000) > 0  
BEGIN  
    print 'TRIG1 Error: you attempted to insert a salary > $100,000'  
    ROLLBACK TRANSACTION  
END ;  
GO  
-- Try an insert that violates the trigger.  
INSERT INTO dbo.trig_example VALUES (1,'Pat Smith',100001) ;  
GO  
-- Disable the trigger.  
ALTER TABLE dbo.trig_example DISABLE TRIGGER trig1 ;  
GO  
-- Try an insert that would typically violate the trigger.  
INSERT INTO dbo.trig_example VALUES (2,'Chuck Jones',100001) ;  
GO  
-- Re-enable the trigger.  
ALTER TABLE dbo.trig_example ENABLE TRIGGER trig1 ;  
GO  
-- Try an insert that violates the trigger.  
INSERT INTO dbo.trig_example VALUES (3,'Mary Booth',100001) ;  
GO  
```  
  
 ![Arrow icon used with Back to Top link](../../a9retired/media/uparrow16x16.gif "Arrow icon used with Back to Top link") [Examples](#Example_Top)  
  
### Online Operations  
  
#### A. Online index rebuild using low priority wait options  
 The following example shows how to perform an online index rebuild specifying the low priority wait options.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
ALTER TABLE T1   
REBUILD WITH   
(  
    PAD_INDEX = ON,  
    ONLINE = ON ( WAIT_AT_LOW_PRIORITY ( MAX_DURATION = 4 MINUTES, ABORT_AFTER_WAIT = BLOCKERS ) )  
)  
;  
```  
  
#### B. Online Alter Column  
 The following example shows how to perform an alter column operation with the ONLINE option.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
```  
CREATE TABLE dbo.doc_exy (column_a INT ) ;  
GO  
INSERT INTO dbo.doc_exy (column_a) VALUES (10) ;  
GO  
ALTER TABLE dbo.doc_exy   
    ALTER COLUMN column_a DECIMAL (5, 2) WITH (ONLINE = ON);  
GO  
sp_help doc_exy;  
DROP TABLE dbo.doc_exy ;  
GO  
```  
  
##  <a name="system_versioning"></a> System Versioning  
 The following four examples will help you become familiar with the syntax for using system versioning. For additional assistance, see [Getting Started with System-Versioned Temporal Tables](../../relational-databases/tables/getting-started-with-system-versioned-temporal-tables.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
### A. Add System Versioning to Existing Tables  
 The following example shows how to add system versioning to an existing table and create a future history table. This example assumes that there is an existing table called `InsurancePolicy` with a primary key defined. This example populates the newly created period columns for system versioning using default values for the start and end times because these values cannot be null. This example uses the HIDDEN clause to ensure no impact on existing applications interacting with the current table.  It also uses HISTORY_RETENTION_PERIOD that is available on [!INCLUDE[sqldbesa](../../a9retired/includes/sqldbesa-md.md)] only. 
  
```  
--Alter non-temporal table to define periods for system versioning  
ALTER TABLE InsurancePolicy  
ADD PERIOD FOR SYSTEM_TIME (SysStartTime, SysEndTime),   
SysStartTime datetime2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL DEFAULT GETUTCDATE(),   
SysEndTime datetime2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.99999999');  
--Enable system versioning with 1 year retention for historical data
ALTER TABLE InsurancePolicy 
SET (SYSTEM_VERSIONING = ON (HISTORY_RETENTION_PERIOD = 1 YEAR));  
```  
  
### B. Migrate An Existing Solution to Use System Versioning  
 The following example shows how to migrate to system versioning from a solution that uses triggers to mimic temporal support. The example assumes there is an existing solution that uses a `ProjectTaskCurrent` table and a `ProjectTaskHistory` table for its existing solution, that is uses the Changed Date and Revised Date columns for its periods, that these period columns do not use the datetime2 datatype and that the `ProjectTaskCurrent` table has a primary key defined.  
  
```  
-- Drop existing trigger  
DROP TRIGGER ProjectTaskCurrent_Trigger;  
-- Adjust the schema for current and history table  
-- Change data types for existing period columns  
ALTER TABLE ProjectTaskCurrent ALTER COLUMN [Changed Date] datetime2 NOT NULL;  
ALTER TABLE ProjectTaskCurrent ALTER COLUMN [Revised Date] datetime2 NOT NULL;  
  
ALTER TABLE ProjectTaskHistory ALTER COLUMN [Changed Date] datetime2 NOT NULL;  
ALTER TABLE ProjectTaskHistory ALTER COLUMN [Revised Date] datetime2 NOT NULL;  
  
-- Add SYSTEM_TIME period and set system versioning with linking two existing tables  
-- (a certain set of data checks happen in the background)  
ALTER TABLE ProjectTaskCurrent  
ADD PERIOD FOR SYSTEM_TIME ([Changed Date], [Revised Date])  
  
ALTER TABLE ProjectTaskCurrent  
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ProjectTaskHistory, DATA_CONSISTENCY_CHECK = ON))  
```  
  
### C. Disabling and Re-Enabling System Versioning to Change Table Schema  
 This example shows how to disable system versioning on the `Department` table, add a column, and re-enable system versioning. Disabling system versioning is required in order to modify the table schema. Perform these steps within a transaction to prevent updates to both tables while updating the table schema, which enables the DBA to skip the data consistency check when re-enabling system versioning and gain a performance benefit. Note that tasks such as creating statistics, switching partitions or applying compression to one or both tables does not require disabling system versioning.  
  
```  
BEGIN TRAN  
/* Takes schema lock on both tables */  
ALTER TABLE Department  
    SET (SYSTEM_VERSIONING = OFF);  
/* expand table schema for temporal table */  
ALTER TABLE Department  
     ADD Col5 int NOT NULL DEFAULT 0;  
/* Expand table schema for history table */  
ALTER TABLE DepartmentHistory  
    ADD Col5 int NOT NULL DEFAULT 0;  
/* Re-establish versioning again  */
ALTER TABLE Department  
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.DepartmentHistory, DATA_CONSISTENCY_CHECK = OFF));  
COMMIT   
```  
  
### D. Removing System Versioning  
 This example shows how to completely remove system versioning from the Department table and drop the `DepartmentHistory` table. Optionally, you might also want to drop the period columns used by the system to record system versioning information. Note that you cannot drop either the `Department` or the `DepartmentHistory` tables while system versioning is enabled.  
  
```  
ALTER TABLE Department  
    SET (SYSTEM_VERSIONING = OFF);  
ALTER TABLE Department  
DROP PEROD FOR SYSTEM_TIME;  
DROP TABLE DepartmentHistory;  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
 The following examples A through C use the FactResellerSales table in the [!INCLUDE[ssawPDW](../../t-sql/database-console-commands/includes/ssawpdw-md.md)] database.  
  
### E. Determining if a table is partitioned  
 The following query returns one or more rows if the table `FactResellerSales` is partitioned. If the table is not partitioned, no rows are returned.  
  
```  
SELECT * FROM sys.partitions AS p  
JOIN sys.tables AS t  
    ON  p.object_id = t.object_id  
WHERE p.partition_id IS NOT NULL  
    AND t.name = 'FactResellerSales';  
```  
  
### F. Determining boundary values for a partitioned table  
 The following query returns the boundary values for each partition in the `FactResellerSales` table.  
  
```  
SELECT t.name AS TableName, i.name AS IndexName, p.partition_number, p.partition_id, i.data_space_id, f.function_id, f.type_desc, r.boundary_id, r.value AS BoundaryValue   
FROM sys.tables AS t  
JOIN sys.indexes AS i  
    ON t.object_id = i.object_id  
JOIN sys.partitions AS p  
    ON i.object_id = p.object_id AND i.index_id = p.index_id   
JOIN  sys.partition_schemes AS s   
    ON i.data_space_id = s.data_space_id  
JOIN sys.partition_functions AS f   
    ON s.function_id = f.function_id  
LEFT JOIN sys.partition_range_values AS r   
    ON f.function_id = r.function_id and r.boundary_id = p.partition_number  
WHERE t.name = 'FactResellerSales' AND i.type <= 1  
ORDER BY p.partition_number;  
```  
  
### G. Determining the partition column for a partitioned table  
 The following query returns the name of the partitioning column for table. `FactResellerSales`.  
  
```  
SELECT t.object_id AS Object_ID, t.name AS TableName, ic.column_id as PartitioningColumnID, c.name AS PartitioningColumnName   
FROM sys.tables AS t  
JOIN sys.indexes AS i  
    ON t.object_id = i.object_id  
JOIN sys.columns AS c  
    ON t.object_id = c.object_id  
JOIN sys.partition_schemes AS ps  
    ON ps.data_space_id = i.data_space_id  
JOIN sys.index_columns AS ic  
    ON ic.object_id = i.object_id AND ic.index_id = i.index_id AND ic.partition_ordinal > 0  
WHERE t.name = 'FactResellerSales'  
AND i.type <= 1  
AND c.column_id = ic.column_id;  
```  
  
### H. Merging two partitions  
 The following example merges two partitions on a table.  
  
 The `Customer` table has the following definition:  
  
```  
CREATE TABLE Customer (  
    id int NOT NULL,  
    lastName varchar(20),  
    orderCount int,  
    orderDate date)  
WITH   
    ( DISTRIBUTION = HASH(id),  
    PARTITION ( orderCount RANGE LEFT  
    FOR VALUES (1, 5, 10, 25, 50, 100)));  
```  
  
 The following command combines the 10 and 25 partition boundaries.  
  
```  
ALTER TABLE Customer MERGE RANGE (10);  
```  
  
 The new DDL for the table is:  
  
```  
CREATE TABLE Customer (  
    id int NOT NULL,  
    lastName varchar(20),  
    orderCount int,  
    orderDate date)  
WITH   
    ( DISTRIBUTION = HASH(id),  
    PARTITION ( orderCount RANGE LEFT  
    FOR VALUES (1, 5, 25, 50, 100)));  
```  
  
### I. Splitting a partition  
 The following example splits a partition on a table.  
  
 The `Customer` table has the following DDL:  
  
```  
DROP TABLE Customer;  
  
CREATE TABLE Customer (  
    id int NOT NULL,  
    lastName varchar(20),  
    orderCount int,  
    orderDate date)  
WITH   
    ( DISTRIBUTION = HASH(id),  
    PARTITION ( orderCount RANGE LEFT  
    FOR VALUES (1, 5, 10, 25, 50, 100 )));  
```  
  
 The following command creates a new partition bound by the value 75, between 50 and 100.  
  
```  
ALTER TABLE Customer SPLIT RANGE (75);  
```  
  
 The new DDL for the table is:  
  
```  
CREATE TABLE Customer (  
   id int NOT NULL,  
   lastName varchar(20),  
   orderCount int,  
   orderDate date)  
   WITH DISTRIBUTION = HASH(id),  
   PARTITION ( orderCount (RANGE LEFT  
      FOR VALUES (1, 5, 10, 25, 50, 75, 100 )));  
```  
  
### J. Using SWITCH to move a partition to a history table  
 The following example moves the data in a partition of the `Orders` table to a partition in the `OrdersHistory` table.  
  
 The `Orders` table has the following DDL:  
  
```  
CREATE TABLE Orders (  
    id INT,  
    city VARCHAR (25),  
    lastUpdateDate DATE,  
    orderDate DATE )  
WITH   
    (DISTRIBUTION = HASH ( id ),  
    PARTITION ( orderDate RANGE RIGHT   
    FOR VALUES ('2004-01-01', '2005-01-01', '2006-01-01', '2007-01-01' )));  
```  
  
 In this example, the `Orders` table has the following partitions. Each partition contains data.  
  
|Partition|Has data?|Boundary range|  
|---------------|---------------|--------------------|  
|1|Yes|OrderDate < '2004-01-01'|  
|2|Yes|'2004-01-01' <= OrderDate < '2005-01-01'|  
|3|Yes|'2005-01-01' <= OrderDate< '2006-01-01'|  
|4|Yes|'2006-01-01'<= OrderDate < '2007-01-01'|  
|5|Yes|'2007-01-01' <= OrderDate|  
  
-   Partition 1 (has data): OrderDate < '2004-01-01'  
  
-   Partition 2 (has data): '2004-01-01' <= OrderDate < '2005-01-01'  
  
-   Partition 3 (has data): '2005-01-01' <= OrderDate< '2006-01-01'  
  
-   Partition 4 (has data): '2006-01-01'<= OrderDate < '2007-01-01'  
  
-   Partition 5 (has data): '2007-01-01' <= OrderDate  
  
 The `OrdersHistory` table has the following DDL, which has identical columns and column names as the `Orders` table. Both are hash-distributed on the `id` column.  
  
```  
CREATE TABLE OrdersHistory (  
   id INT,  
   city VARCHAR (25),  
   lastUpdateDate DATE,  
   orderDate DATE )  
WITH   
    (DISTRIBUTION = HASH ( id ),  
    PARTITION ( orderDate RANGE RIGHT   
    FOR VALUES ( '2004-01-01' )));  
```  
  
 Although the columns and column names must be the same, the partition boundaries do not need to be the same. In this example, the `OrdersHistory` table has the following two partitions and both partitions are empty:  
  
-   Partition 1 (no data): OrderDate < '2004-01-01'  
  
-   Partition 2 (empty): '2004-01-01' <= OrderDate  
  
 For the previous two tables, the following command moves all rows with `OrderDate < '2004-01-01'` from the `Orders` table to the `OrdersHistory` table.  
  
```  
ALTER TABLE Orders SWITCH PARTITION 1 TO OrdersHistory PARTITION 1;  
```  
  
 As a result, the first partition in `Orders` is empty and the first partition in `OrdersHistory` contains data. The tables now appear as follows:  
  
 `Orders` table  
  
-   Partition 1 (empty): OrderDate < '2004-01-01'  
  
-   Partition 2 (has data): '2004-01-01' <= OrderDate < '2005-01-01'  
  
-   Partition 3 (has data): '2005-01-01' <= OrderDate< '2006-01-01'  
  
-   Partition 4 (has data): '2006-01-01'<= OrderDate < '2007-01-01'  
  
-   Partition 5 (has data): '2007-01-01' <= OrderDate  
  
 `OrdersHistory` table  
  
-   Partition 1 (has data): OrderDate < '2004-01-01'  
  
-   Partition 2 (empty): '2004-01-01' <= OrderDate  
  
 To clean up the `Orders` table, you can remove the empty partition by merging partitions 1 and 2 as follows:  
  
```  
ALTER TABLE Orders MERGE RANGE ('2004-01-01');  
```  
  
 After the merge, the `Orders` table has the following partitions:  
  
 `Orders` table  
  
-   Partition 1 (has data): OrderDate < '2005-01-01'  
  
-   Partition 2 (has data): '2005-01-01' <= OrderDate< '2006-01-01'  
  
-   Partition 3 (has data): '2006-01-01'<= OrderDate < '2007-01-01'  
  
-   Partition 4 (has data): '2007-01-01' <= OrderDate  
  
 Suppose another year passes and you are ready to archive the year 2005. You can allocate an empty partition for the year 2005 in the `OrdersHistory` table by splitting the empty partition as follows:  
  
```  
ALTER TABLE OrdersHistory SPLIT RANGE ('2005-01-01');  
```  
  
 After the split, the `OrdersHistory` table has the following partitions:  
  
 `OrdersHistory` table  
  
-   Partition 1 (has data): OrderDate < '2004-01-01'  
  
-   Partition 2 (empty): '2004-01-01' < '2005-01-01'  
  
-   Partition 3 (empty): '2005-01-01' <= OrderDate  
  
## See Also  
 [sys.tables &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.tables-transact-sql.md)   
 [sp_rename &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-rename-transact-sql.md)   
 [CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)   
 [DROP TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-table-transact-sql.md)   
 [sp_help &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-help-transact-sql.md)   
 [ALTER PARTITION SCHEME &#40;Transact-SQL&#41;](../../t-sql/statements/alter-partition-scheme-transact-sql.md)   
 [ALTER PARTITION FUNCTION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-partition-function-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  