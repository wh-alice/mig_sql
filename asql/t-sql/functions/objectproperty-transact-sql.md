---
title: "OBJECTPROPERTY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "OBJECTPROPERTY"
  - "OBJECTPROPERTY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "displaying schema-scoped object information"
  - "viewing schema-scoped object information"
  - "OBJECTPROPERTY function"
  - "schema-scoped objects [SQL Server]"
  - "objects [SQL Server], schema-scoped"
ms.assetid: 27569888-f8b5-4cec-a79f-6ea6d692b4ae
caps.latest.revision: 81
ms.author: "rickbyh"
manager: "jhubbard"
---
# OBJECTPROPERTY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns information about schema-scoped objects in the current database. For a list of schema-scoped objects, see [sys.objects &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md). This function cannot be used for objects that are not schema-scoped, such as data definition language (DDL) triggers and event notifications.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
OBJECTPROPERTY ( id , property )   
```  
  
## Arguments  
 *id*  
 Is an expression that represents the ID of the object in the current database. *id* is **int** and is assumed to be a schema-scoped object in the current database context.  
  
 *property*  
 Is an expression that represents the information to be returned for the object specified by *id*. *property* can be one of the following values.  
  
> [!NOTE]  
>  Unless noted otherwise, NULL is returned when *property* is not a valid property name, *id* is not a valid object ID, *id* is an unsupported object type for the specified *property*, or the caller does not have permission to view the object's metadata.  
  
|Property name|Object type|Description and values returned|  
|-------------------|-----------------|-------------------------------------|  
|CnstIsClustKey|Constraint|PRIMARY KEY constraint with a clustered index.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsColumn|Constraint|CHECK, DEFAULT, or FOREIGN KEY constraint on a single column.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsDeleteCascade|Constraint|FOREIGN KEY constraint with the ON DELETE CASCADE option.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsDisabled|Constraint|Disabled constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsNonclustKey|Constraint|PRIMARY KEY or UNIQUE constraint with a nonclustered index.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsNotRepl|Constraint|Constraint is defined by using the NOT FOR REPLICATION keywords.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsNotTrusted|Constraint|Constraint was enabled without checking existing rows; therefore, the constraint may not hold for all rows.<br /><br /> 1 = True<br /><br /> 0 = False|  
|CnstIsUpdateCascade|Constraint|FOREIGN KEY constraint with the ON UPDATE CASCADE option.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsAfterTrigger|Trigger|AFTER trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsAnsiNullsOn|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] function, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] procedure, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] trigger, view|Setting of ANSI_NULLS at creation time.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsDeleteTrigger|Trigger|DELETE trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsFirstDeleteTrigger|Trigger|First trigger fired when a DELETE is executed against the table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsFirstInsertTrigger|Trigger|First trigger fired when an INSERT is executed against the table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsFirstUpdateTrigger|Trigger|First trigger fired when an UPDATE is executed against the table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsInsertTrigger|Trigger|INSERT trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsInsteadOfTrigger|Trigger|INSTEAD OF trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsLastDeleteTrigger|Trigger|Last trigger fired when a DELETE is executed against the table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsLastInsertTrigger|Trigger|Last trigger fired when an INSERT is executed against the table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsLastUpdateTrigger|Trigger|Last trigger fired when an UPDATE is executed against the table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsQuotedIdentOn|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] function, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] procedure, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] trigger, view|Setting of QUOTED_IDENTIFIER at creation time.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsStartup|Procedure|Startup procedure.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsTriggerDisabled|Trigger|Disabled trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsTriggerNotForRepl|Trigger|Trigger defined as NOT FOR REPLICATION.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsUpdateTrigger|Trigger|UPDATE trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|ExecIsWithNativeCompilation|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] Procedure|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Procedure is natively compiled.<br /><br /> 1 = True<br /><br /> 0 = False<br /><br /> Base data type: **int**|  
|HasAfterTrigger|Table, view|Table or view has an AFTER trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|HasDeleteTrigger|Table, view|Table or view has a DELETE trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|HasInsertTrigger|Table, view|Table or view has an INSERT trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|HasInsteadOfTrigger|Table, view|Table or view has an INSTEAD OF trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|HasUpdateTrigger|Table, view|Table or view has an UPDATE trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsAnsiNullsOn|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] function, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] procedure, table, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] trigger, view|Specifies that the ANSI NULLS option setting for the table is ON. This means all comparisons against a null value evaluate to UNKNOWN. This setting applies to all expressions in the table definition, including computed columns and constraints, for as long as the table exists.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsCheckCnst|Any schema-scoped object|CHECK constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsConstraint|Any schema-scoped object|Is a single column CHECK, DEFAULT, or FOREIGN KEY constraint on a column or table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsDefault|Any schema-scoped object|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Bound default.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsDefaultCnst|Any schema-scoped object|DEFAULT constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsDeterministic|Function, view|The determinism property of the function or view.<br /><br /> 1 = Deterministic<br /><br /> 0 = Not Deterministic|  
|IsEncrypted|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] function, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] procedure, table, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] trigger, view|Indicates that the original text of the module statement was converted to an obfuscated format. The output of the obfuscation is not directly visible in any of the catalog views in [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)]. Users without access to system tables or database files cannot retrieve the obfuscated text. However, the text is available to users that can either access system tables over the [DAC port](../../database-engine/configure/windows/diagnostic-connection-for-database-administrators.md) or directly access database files. Also, users that can attach a debugger to the server process can retrieve the original procedure from memory at run time.<br /><br /> 1 = Encrypted<br /><br /> 0 = Not encrypted<br /><br /> Base data type: **int**|  
|IsExecuted|Any schema-scoped object|Object can be executed (view, procedure, function, or trigger).<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsExtendedProc|Any schema-scoped object|Extended procedure.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsForeignKey|Any schema-scoped object|FOREIGN KEY constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsIndexed|Table, view|Table or view that has an index.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsIndexable|Table, view|Table or view on which an index can be created.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsInlineFunction|Function|Inline function.<br /><br /> 1 = Inline function<br /><br /> 0 = Not inline function|  
|IsMSShipped|Any schema-scoped object|Object created during installation of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsPrimaryKey|Any schema-scoped object|PRIMARY KEY constraint.<br /><br /> 1 = True<br /><br /> 0 = False<br /><br /> NULL = Not a function, or object ID is not valid.|  
|IsProcedure|Any schema-scoped object|Procedure.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsQuotedIdentOn|[!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] function, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] procedure, table, [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] trigger, view, CHECK constraint, DEFAULT definition|Specifies that the quoted identifier setting for the object is ON. This means double quotation marks delimit identifiers in all expressions involved in the object definition.<br /><br /> 1 = ON<br /><br /> 0 = OFF|  
|IsQueue|Any schema-scoped object|Service Broker Queue<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsReplProc|Any schema-scoped object|Replication procedure.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsRule|Any schema-scoped object|Bound rule.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsScalarFunction|Function|Scalar-valued function.<br /><br /> 1 = Scalar-valued function<br /><br /> 0 = Not scalar-valued function|  
|IsSchemaBound|Function, view|A schema bound function or view created by using SCHEMABINDING.<br /><br /> 1 = Schema-bound<br /><br /> 0 = Not schema-bound.|  
|IsSystemTable|Table|System table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsTable|Table|Table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsTableFunction|Function|Table-valued function.<br /><br /> 1 = Table-valued function<br /><br /> 0 = Not table-valued function|  
|IsTrigger|Any schema-scoped object|Trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsUniqueCnst|Any schema-scoped object|UNIQUE constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsUserTable|Table|User-defined table.<br /><br /> 1 = True<br /><br /> 0 = False|  
|IsView|View|View.<br /><br /> 1 = True<br /><br /> 0 = False|  
|OwnerId|Any schema-scoped object|Owner of the object.<br /><br /> **Note:**  The schema owner is not necessarily the object owner. For example, child objects (those where *parent_object_id* is nonnull) will always return the same owner ID as the parent.<br /><br /> Nonnull = The database user ID of the object owner.|  
|TableDeleteTrigger|Table|Table has a DELETE trigger.<br /><br /> >1 = ID of first trigger with the specified type.|  
|TableDeleteTriggerCount|Table|Table has the specified number of DELETE triggers.<br /><br /> >0 = The number of DELETE triggers.|  
|TableFullTextMergeStatus|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Whether a table that has a full-text index that is currently in merging.<br /><br /> 0 = Table does not have a full-text index, or the full-text index is not in merging.<br /><br /> 1 = The full-text index is in merging.|  
|TableFullTextBackgroundUpdateIndexOn|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Table has full-text background update index (autochange tracking) enabled.<br /><br /> 1 = TRUE<br /><br /> 0 = FALSE|  
|TableFulltextCatalogId|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> ID of the full-text catalog in which the full-text index data for the table resides.<br /><br /> Nonzero = Full-text catalog ID, associated with the unique index that identifies the rows in a full-text indexed table.<br /><br /> 0 = Table does not have a full-text index.|  
|TableFulltextChangeTrackingOn|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Table has full-text change-tracking enabled.<br /><br /> 1 = TRUE<br /><br /> 0 = FALSE|  
|TableFulltextDocsProcessed|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of rows processed since the start of full-text indexing. In a table that is being indexed for full-text search, all the columns of one row are considered as part of one document to be indexed.<br /><br /> 0 = No active crawl or full-text indexing is completed.<br /><br /> > 0 = One of the following (A or B): A) The number of documents processed by insert or update operations since the start of Full, Incremental, or Manual change tracking population. B) The number of rows processed by insert or update operations since change tracking with background update index population was enabled, the full-text index schema changed, the full-text catalog rebuilt, or the instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] restarted, and so on.<br /><br /> NULL = Table does not have a full-text index.<br /><br /> This property does not monitor or count deleted rows.|  
|TableFulltextFailCount|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of rows Full-Text Search did not index.<br /><br /> 0 = The population has completed.<br /><br /> > 0 = One of the following (A or B): A) The number of documents that were not indexed since the start of Full, Incremental, and Manual Update change tracking population. B) For change tracking with background update index, the number of rows that were not indexed since the start of the population, or the restart of the population. This could be caused by a schema change, rebuild of the catalog, server restart, and so on.<br /><br /> NULL = Table does not have a full-text index.|  
|TableFulltextItemCount|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of rows that were successfully full-text indexed.|  
|TableFulltextKeyColumn|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> ID of the column associated with the single-column unique index that is participating in the full-text index definition.<br /><br /> 0 = Table does not have a full-text index.|  
|TableFulltextPendingChanges|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Number of pending change tracking entries to process.<br /><br /> 0 = change tracking is not enabled.<br /><br /> NULL = Table does not have a full-text index.|  
|TableFulltextPopulateStatus|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> 0 = Idle.<br /><br /> 1 = Full population is in progress.<br /><br /> 2 = Incremental population is in progress.<br /><br /> 3 = Propagation of tracked changes is in progress.<br /><br /> 4 = Background update index is in progress, such as autochange tracking.<br /><br /> 5 = Full-text indexing is throttled or paused.|  
|TableHasActiveFulltextIndex|Table|**Applies to**: [!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Table has an active full-text index.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasCheckCnst|Table|Table has a CHECK constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasClustIndex|Table|Table has a clustered index.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasDefaultCnst|Table|Table has a DEFAULT constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasDeleteTrigger|Table|Table has a DELETE trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasForeignKey|Table|Table has a FOREIGN KEY constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasForeignRef|Table|Table is referenced by a FOREIGN KEY constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasIdentity|Table|Table has an identity column.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasIndex|Table|Table has an index of any type.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasInsertTrigger|Table|Object has an INSERT trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasNonclustIndex|Table|Table has a nonclustered index.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasPrimaryKey|Table|Table has a primary key.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasRowGuidCol|Table|Table has a ROWGUIDCOL for a **uniqueidentifier** column.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasTextImage|Table|Table has a **text**, **ntext**, or **image** column.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasTimestamp|Table|Table has a **timestamp** column.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasUniqueCnst|Table|Table has a UNIQUE constraint.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasUpdateTrigger|Table|Object has an UPDATE trigger.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableHasVarDecimalStorageFormat|Table|Table is enabled for **vardecimal** storage format.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableInsertTrigger|Table|Table has an INSERT trigger.<br /><br /> >1 = ID of first trigger with the specified type.|  
|TableInsertTriggerCount|Table|Table has the specified number of INSERT triggers.<br /><br /> >0 = The number of INSERT triggers.|  
|TableIsFake|Table|Table is not real. It is materialized internally on demand by the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)].<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableIsLockedOnBulkLoad|Table|Table is locked due to a **bcp** or BULK INSERT job.<br /><br /> 1 = True<br /><br /> 0 = False|  
|TableIsMemoryOptimized|Table|**Applies to**: [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Table is memory optimized<br /><br /> 1 = True<br /><br /> 0 = False<br /><br /> Base data type: **int**<br /><br /> For more information, see [In-Memory OLTP &#40;In-Memory Optimization&#41;](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md).|  
|TableIsPinned|Table|Table is pinned to be held in the data cache.<br /><br /> 0 = False<br /><br /> This feature is not supported in [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] and later.|  
|TableTextInRowLimit|Table|Maximum bytes allowed for text in row.<br /><br /> 0 if text in row option is not set.|  
|TableUpdateTrigger|Table|Table has an UPDATE trigger.<br /><br /> > 1 = ID of first trigger with the specified type.|  
|TableUpdateTriggerCount|Table|The table has the specified number of UPDATE triggers.<br /><br /> > 0 = The number of UPDATE triggers.|  
|TableHasColumnSet|Table|Table has a column set.<br /><br /> 0 = False<br /><br /> 1 = True<br /><br /> For more information, see [Use Column Sets](../../relational-databases/tables/use-column-sets.md).|  
|TableTemporalType|Table|**Applies to**: [!INCLUDE[ssSQL15](../../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)].<br /><br /> Specifies the type of table.<br /><br /> 0 = non-temporal table<br /><br /> 1 = history table for system-versioned table<br /><br /> 2 = system-versioned temporal table|  
  
## Return Types  
 **int**  
  
## Exceptions  
 Returns NULL on error or if a caller does not have permission to view the object.  
  
 A user can only view the metadata of securables that the user owns or on which the user has been granted permission. This means that metadata-emitting, built-in functions such as OBJECTPROPERTY may return NULL if the user does not have any permission on the object. For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Remarks  
 The [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] assumes that *object_id* is in the current database context. A query that references an *object_id* in another database will return NULL or incorrect results. For example, in the following query the current database context is the master database. The [!INCLUDE[ssDE](../../a9notintoc/includes/ssde-md.md)] will try to return the property value for the specified *object_id* in that database instead of the database specified in the query. The query returns incorrect results because the view `vEmployee` is not in the master database.  
  
```  
USE master;  
GO  
SELECT OBJECTPROPERTY(OBJECT_ID(N'AdventureWorks2012.HumanResources.vEmployee'), 'IsView');  
GO  
```  
  
 OBJECTPROPERTY(*view_id*, 'IsIndexable') may consume significant computer resources because evaluation of IsIndexable property requires the parsing of view definition, normalization, and partial optimization. Although the IsIndexable property identifies tables or views that can be indexed, the actual creation of the index still might fail if certain index key requirements are not met. For more information, see [CREATE INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-index-transact-sql.md).  
  
 OBJECTPROPERTY(*table_id*, 'TableHasActiveFulltextIndex') will return a value of 1 (true) when at least one column of a table is added for indexing. Full-text indexing becomes active for population as soon as the first column is added for indexing.  
  
 When a table is created, the QUOTED IDENTIFIER option is always stored as ON in the metadata of the table, even if the option is set to OFF when the table is created. Therefore, OBJECTPROPERTY(*table_id*, 'IsQuotedIdentOn') will always return a value of 1 (true).  
  
## Examples  
  
### A. Verifying that an object is a table  
 The following example tests whether `UnitMeasure` is a table in the [!INCLUDE[ssSampleDBobject](../../a9retired/includes/sssampledbobject-md.md)] database.  
  
```  
USE AdventureWorks2012;  
GO  
IF OBJECTPROPERTY (OBJECT_ID(N'Production.UnitMeasure'),'ISTABLE') = 1  
   PRINT 'UnitMeasure is a table.'  
ELSE IF OBJECTPROPERTY (OBJECT_ID(N'Production.UnitMeasure'),'ISTABLE') = 0  
   PRINT 'UnitMeasure is not a table.'  
ELSE IF OBJECTPROPERTY (OBJECT_ID(N'Production.UnitMeasure'),'ISTABLE') IS NULL  
   PRINT 'ERROR: UnitMeasure is not a valid object.';  
GO  
  
```  
  
### B. Verifying that a scalar-valued user-defined function is deterministic  
 The following example tests whether the user-defined scalar-valued function `ufnGetProductDealerPrice`, which returns a **money** value, is deterministic.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT OBJECTPROPERTY(OBJECT_ID('dbo.ufnGetProductDealerPrice'), 'IsDeterministic');  
GO  
```  
  
 The result set shows that `ufnGetProductDealerPrice` is not a deterministic function.  
  
 `-----`  
  
 `0`  
  
### C. Finding the objects that belong to a specific schema  
 The following example uses the `SchemaId` property to return all the objects that belong to the schema `Production`.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT name, object_id, type_desc  
FROM sys.objects   
WHERE OBJECTPROPERTY(object_id, N'SchemaId') = SCHEMA_ID(N'Production')  
ORDER BY type_desc, name;  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../a9notintoc/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../a9notintoc/includes/sspdw-md.md)]  
  
### D: Verifying that an object is a table  
 The following example tests whether `dbo.DimReseller` is a table in the [!INCLUDE[ssawPDW](../../t-sql/database-console-commands/includes/ssawpdw-md.md)] database.  
  
```  
-- Uses AdventureWorks  
  
IF OBJECTPROPERTY (OBJECT_ID(N'dbo.DimReseller'),'ISTABLE') = 1  
   SELECT 'DimReseller is a table.'  
ELSE   
   SELECT 'DimReseller is not a table.';  
GO  
```  
  
### E: Finding the tables that belong to a specific schema  
 The following example returns all the tables in the dbo schema.  
  
```  
-- Uses AdventureWorks  
  
SELECT name, object_id, type_desc  
FROM sys.objects   
WHERE OBJECTPROPERTY(object_id, N'SchemaId') = SCHEMA_ID(N'dbo')  
ORDER BY type_desc, name;  
GO  
```  
  
## See Also  
 [COLUMNPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/columnproperty-transact-sql.md)   
 [Metadata Functions &#40;Transact-SQL&#41;](../../t-sql/functions/metadata-functions-transact-sql.md)   
 [OBJECTPROPERTYEX &#40;Transact-SQL&#41;](../../t-sql/functions/objectpropertyex-transact-sql.md)   
 [ALTER AUTHORIZATION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-authorization-transact-sql.md)   
 [TYPEPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/typeproperty-transact-sql.md)   
 [sys.objects &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)  
  
  

