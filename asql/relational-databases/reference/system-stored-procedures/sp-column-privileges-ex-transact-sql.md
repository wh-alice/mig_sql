---
title: "sp_column_privileges_ex (Transact-SQL) | Microsoft Docs"
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
  - "sp_column_privileges_ex"
  - "sp_column_privileges_ex_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_column_privileges_ex"
ms.assetid: 98cb6e58-4007-40fc-b048-449fb2e7e6be
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_column_privileges_ex (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns column privileges for the specified table on the specified linked server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_column_privileges_ex [ @table_server = ] 'table_server'   
     [ , [ @table_name = ] 'table_name' ]   
     [ , [ @table_schema = ] 'table_schema' ]   
     [ , [ @table_catalog = ] 'table_catalog' ]   
     [ , [ @column_name = ] 'column_name' ]  
```  
  
## Arguments  
 [ **@table_server =** ] **'***table_server***'**  
 Is the name of the linked server for which to return information. *table_server* is **sysname**, with no default.  
  
 [ **@table_name =** ] **'***table_name***'**  
 Is the name of the table that contains the specified column. *table_name* is **sysname**, with a default of NULL.  
  
 [ **@table_schema =** ] **'***table_schema***'**  
 Is the table schema. *table_schema* is **sysname**, with a default of NULL.  
  
 [ **@table_catalog =** ] **'***table_catalog***'**  
 Is the name of the database in which the specified *table_name* resides. *table_catalog* is **sysname**, with a default of NULL.  
  
 [ **@column_name =** ] **'***column_name***'**  
 Is the name of the column for which to provide privilege information. *column_name* is **sysname**, with a default of NULL (all common).  
  
## Result Sets  
 The following table shows the result set columns. The results returned are ordered by **TABLE_QUALIFIER**, **TABLE_OWNER**, **TABLE_NAME**, **COLUMN_NAME**, and **PRIVILEGE**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_CAT**|**sysname**|Table qualifier name. Various DBMS products support three-part naming for tables (*qualifier***.***owner***.***name*). In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column represents the database name. In some products, it represents the server name of the table's database environment. This field can be NULL.|  
|**TABLE_SCHEM**|**sysname**|Table owner name. In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column represents the name of the database user who created the table. This field always returns a value.|  
|**TABLE_NAME**|**sysname**|Table name. This field always returns a value.|  
|**COLUMN_NAME**|**sysname**|Column name, for each column of the **TABLE_NAME** returned. This field always returns a value.|  
|**GRANTOR**|**sysname**|Database user name that has granted permissions on this **COLUMN_NAME** to the listed **GRANTEE**. In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this column is always the same as the **TABLE_OWNER**. This field always returns a value.<br /><br /> The **GRANTOR** column can be either the database owner (**TABLE_OWNER**) or someone to whom the database owner granted permissions by using the WITH GRANT OPTION clause in the GRANT statement.|  
|**GRANTEE**|**sysname**|Database user name that has been granted permissions on this **COLUMN_NAME** by the listed **GRANTOR**. This field always returns a value.|  
|**PRIVILEGE**|**varchar(**32**)**|One of the available column permissions. Column permissions can be one of the following values (or other values supported by the data source when implementation is defined):<br /><br /> SELECT = **GRANTEE** can retrieve data for the columns.<br /><br /> INSERT = **GRANTEE** can provide data for this column when new rows are inserted (by the **GRANTEE**) into the table.<br /><br /> UPDATE = **GRANTEE** can modify existing data in the column.<br /><br /> REFERENCES = **GRANTEE** can reference a column in a foreign table in a primary key/foreign key relationship. Primary key/foreign key relationships are defined with table constraints.|  
|**IS_GRANTABLE**|**varchar(**3**)**|Indicates whether the **GRANTEE** is permitted to grant permissions to other users (often referred to as "grant with grant" permission). Can be YES, NO, or NULL. An unknown, or NULL, value refers to a data source where "grant with grant" is not applicable.|  
  
## Permissions  
 Requires SELECT permission on the schema.  
  
## Examples  
 The following example returns column privilege information for the `HumanResources.Department` table in the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database on the `Seattle1` linked server.  
  
```  
EXEC sp_column_privileges_ex @table_server = 'Seattle1',   
   @table_name = 'Department',   
   @table_schema = 'HumanResources',  
   @table_catalog ='AdventureWorks2012';  
```  
  
## See Also  
 [sp_table_privileges_ex &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-table-privileges-ex-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  