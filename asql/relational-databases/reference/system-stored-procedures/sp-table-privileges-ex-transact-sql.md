---
title: "sp_table_privileges_ex (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_table_privileges_ex"
  - "sp_table_privileges_ex_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_table_privileges_ex"
ms.assetid: b58d4a07-5c40-4f17-b66e-6d6b17188dda
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_table_privileges_ex (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns privilege information about the specified table from the specified linked server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_table_privileges_ex [ @table_server = ] 'table_server'   
     [ , [ @table_name = ] 'table_name' ]   
     [ , [ @table_schema = ] 'table_schema' ]   
     [ , [ @table_catalog = ] 'table_catalog' ]  
     [ , [@fUsePattern =] 'fUsePattern']  
```  
  
## Arguments  
 [ **@table_server =** ] **'***table_server***'**  
 Is the name of the linked server for which to return information. *table_server* is **sysname**, with no default.  
  
 [ **@table_name =** ] **'***table_name***'**]  
 Is the name of the table for which to provide table privilege information. *table_name* is **sysname**, with a default of NULL.  
  
 [ **@table_schema =** ] **'***table_schema***'**  
 Is the table schema. This in some DBMS environments is the table owner. *table_schema* is **sysname**, with a default of NULL.  
  
 [ **@table_catalog =** ] **'***table_catalog***'**  
 Is the name of the database in which the specified *table_name* resides. *table_catalog* is **sysname**, with a default of NULL.  
  
 [ **@fUsePattern =**] **'***fUsePattern***'**  
 Determines whether the characters '_', '%', '[', and ']' are interpreted as wildcard characters. Valid values are 0 (pattern matching is off) and 1 (pattern matching is on). *fUsePattern* is **bit**, with a default of 1.  
  
## Return Code Values  
 None  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_CAT**|**sysname**|Table qualifier name. Various DBMS products support three-part naming for tables (*qualifier***.***owner***.***name*). In [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], this column represents the database name. In some products, it represents the server name of the table's database environment. This field can be NULL.|  
|**TABLE_SCHEM**|**sysname**|Table owner name. In [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], this column represents the name of the database user who created the table. This field always returns a value.|  
|**TABLE_NAME**|**sysname**|Table name. This field always returns a value.|  
|**GRANTOR**|**sysname**|Database username that has granted permissions on this **TABLE_NAME** to the listed **GRANTEE**. In [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], this column is always the same as the **TABLE_OWNER**. This field always returns a value. Also, the GRANTOR column may be either the database owner (**TABLE_OWNER**) or a user to whom the database owner granted permission by using the WITH GRANT OPTION clause in the GRANT statement.|  
|**GRANTEE**|**sysname**|Database username that has been granted permissions on this **TABLE_NAME** by the listed **GRANTOR**. This field always returns a value.|  
|**PRIVILEGE**|**varchar(**32**)**|One of the available table permissions. Table permissions can be one of the following values, or other values supported by the data source when implementation is defined.<br /><br /> SELECT = **GRANTEE** can retrieve data for one or more of the columns.<br /><br /> INSERT = **GRANTEE** can provide data for new rows for one or more of the columns.<br /><br /> UPDATE = **GRANTEE** can modify existing data for one or more of the columns.<br /><br /> DELETE = **GRANTEE** can remove rows from the table.<br /><br /> REFERENCES = **GRANTEE** can reference a column in a foreign table in a primary key/foreign key relationship. In [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], primary key/foreign key relationships are defined by using table constraints.<br /><br /> The scope of action given to the **GRANTEE** by a specific table privilege is data source-dependent. For example, the UPDATE permission could enable the **GRANTEE** to update all columns in a table on one data source and only those columns for which the **GRANTOR** has UPDATE permission on another data source.|  
|**IS_GRANTABLE**|**varchar(**3**)**|Indicates whether the **GRANTEE** is permitted to grant permissions to other users. This is often referred to as "grant with grant" permission. Can be YES, NO, or NULL. An unknown, or NULL, value refers to a data source in which "grant with grant" is not applicable.|  
  
## Remarks  
 The results returned are ordered by **TABLE_QUALIFIER**, **TABLE_OWNER**, **TABLE_NAME**, and **PRIVILEGE**.  
  
## Permissions  
 Requires SELECT permission on the schema.  
  
## Examples  
 The following example returns privilege information about tables with names that start with `Product` in the [!INCLUDE[ssSampleDBobject](../../../a9retired/includes/sssampledbobject-md.md)] database from the specified linked server `Seattle1`. ([!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is assumed as the linked server).  
  
```  
EXEC sp_table_privileges_ex @table_server = 'Seattle1',   
   @table_name = 'Product%',   
   @table_schema = 'Production',  
   @table_catalog ='AdventureWorks2012';  
```  
  
## See Also  
 [sp_column_privileges_ex &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-column-privileges-ex-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Distributed Queries Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/distributed-queries-stored-procedures-transact-sql.md)  
  
  