---
title: "sp_special_columns (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_special_columns_TSQL"
  - "sp_special_columns"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_special_columns"
ms.assetid: 0b0993f8-73e0-402b-8c6c-1b0963956f5d
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_special_columns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the optimal set of columns that uniquely identify a row in the table. Also returns columns automatically updated when any value in the row is updated by a transaction.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_special_columns [ @table_name = ] 'table_name'     
     [ , [ @table_owner = ] 'table_owner' ]   
     [ , [ @qualifier = ] 'qualifier' ]   
     [ , [ @col_type = ] 'col_type' ]   
     [ , [ @scope = ] 'scope' ]  
     [ , [ @nullable = ] 'nullable' ]   
     [ , [ @ODBCVer = ] 'ODBCVer' ]   
[ ; ]  
```  
  
## Arguments  
 [ @table_name=] '*table_name*'  
 Is the name of the table used to return catalog information. *name* is **sysname**, with no default. Wildcard pattern matching is not supported.  
  
 [ @table_owner=] '*table_owner*'  
 Is the table owner of the table used to return catalog information. *owner* is **sysname**, with a default of NULL. Wildcard pattern matching is not supported. If *owner* is not specified, the default table visibility rules of the underlying DBMS apply.  
  
 In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], if the current user owns a table with the specified name, the columns of that table are returned. If *owner* is not specified and the current user does not own a table of the specified *name*, this procedure looks for a table of the specified *name* owned by the database owner. If the table exists, its columns are returned.  
  
 [ @qualifier=] '*qualifier*'  
 Is the name of the table qualifier. *qualifier* is **sysname**, with a default of NULL. Various DBMS products support three-part naming for tables (*qualifier.owner.name*). In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column represents the database name. In some products, it represents the server name of the database environment of the table.  
  
 [ @col_type=] '*col_type*'  
 Is the column type. *col_type* is **char(**1**)**, with a default of R. Type R returns the optimal column or set of columns that, by retrieving values from the column or columns, allows for any row in the specified table to be uniquely identified. A column can be either a pseudocolumn specifically designed for this purpose, or the column or columns of any unique index for the table. Type V returns the column or columns in the specified table, if any, that are automatically updated by the data source when any value in the row is updated by any transaction.  
  
 [ @scope=] '*scope*'  
 Is the minimum required scope of the ROWID. *scope* is **char(**1**)**, with a default of T. Scope C specifies that the ROWID is valid only when positioned on that row. Scope T specifies that the ROWID is valid for the transaction.  
  
 [ @nullable=] '*nullable*'  
 Is whether the special columns can accept a null value. *nullable* is **char(**1**)**, with a default of U. O specifies special columns that do not allow null values. U specifies columns that are partially nullable.  
  
 [ @ODBCVer=] '*ODBCVer*'  
 Is the ODBC version being used. *ODBCVer* is **int(**4**)**, with a default of 2. This indicates ODBC version 2.0. For more information about the difference between ODBC version 2.0 and ODBC version 3.0, see the ODBC SQLSpecialColumns specification for ODBC version 3.0.  
  
## Return Code Values  
 None  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|SCOPE|**smallint**|Actual scope of the row ID. Can be 0, 1, or 2. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] always returns 0. This field always returns a value.<br /><br /> 0 = SQL_SCOPE_CURROW. The row ID is guaranteed to be valid only while positioned on that row. A later reselect using the row ID may not return a row if the row was updated or deleted by another transaction.<br /><br /> 1 = SQL_SCOPE_TRANSACTION. The row ID is guaranteed to be valid for the duration of the current transaction.<br /><br /> 2 = SQL_SCOPE_SESSION. The row ID is guaranteed to be valid for the duration of the session (across transaction boundaries).|  
|COLUMN_NAME|**sysname**|Column name for each column of the *table*returned. This field always returns a value.|  
|DATA_TYPE|**smallint**|ODBC SQL data type.|  
|TYPE_NAME|**sysname**|Data source-dependent data type name; for example, **char**, **varchar**, **money**, or **text**.|  
|PRECISION|**Int**|Precision of the column on the data source. This field always returns a value.|  
|LENGTH|**Int**|Length, in bytes, required for the data type in its binary form in the data source, for example, 10 for **char(**10**)**, 4 for **integer**, and 2 for **smallint**.|  
|SCALE|**smallint**|Scale of the column on the data source. NULL is returned for data types for which scale is not applicable.|  
|PSEUDO_COLUMN|**smallint**|Indicates whether the column is a pseudocolumn. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] always returns 1:<br /><br /> 0 = SQL_PC_UNKNOWN<br /><br /> 1 = SQL_PC_NOT_PSEUDO<br /><br /> 2 = SQL_PC_PSEUDO|  
  
## Remarks  
 sp_special_columns is equivalent to SQLSpecialColumns in ODBC. The results returned are ordered by SCOPE.  
  
## Permissions  
 Requires SELECT permission on the schema.  
  
## Examples  
 The following example returns information about the column that uniquely identifies rows in the `HumanResources.Department` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_special_columns @table_name = 'Department'   
    ,@table_owner = 'HumanResources';  
```  
  
## See Also  
 [Catalog Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/catalog-stored-procedures-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  