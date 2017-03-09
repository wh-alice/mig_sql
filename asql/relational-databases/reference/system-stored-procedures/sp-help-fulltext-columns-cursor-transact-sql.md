---
title: "sp_help_fulltext_columns_cursor (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_fulltext_columns_cursor"
  - "sp_help_fulltext_columns_cursor_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_fulltext_columns_cursor"
ms.assetid: 26054e76-53b7-4004-8d48-92ba3435e9d7
caps.latest.revision: 28
ms.author: "douglasl"
manager: "jhubbard"
---
# sp_help_fulltext_columns_cursor (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Uses a cursor to return the columns designated for full-text indexing.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use the [sys.fulltext_index_columns](../../../relational-databases/reference/system-catalog-views/sys.fulltext-index-columns-transact-sql.md) catalog view instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[sqldbesa](../../../database-engine/configure/windows/includes/sqldbesa-md.md)].|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_help_fulltext_columns_cursor [ @cursor_return = ] @cursor_variable OUTPUT   
     [ , [ @table_name = ] 'table_name' ]   
     [ , [ @column_name = ] 'column_name' ]  
```  
  
## Arguments  
 [ **@cursor_return =**] *@cursor_variable* OUTPUT  
 Is the output variable of type **cursor**. The resulting cursor is a read-only, scrollable, dynamic cursor.  
  
 [ **@table_name =**] **'***table_name***'**  
 Is the one- or two-part table name for which full-text index information is requested. *table_name* is **nvarchar(517)**, with a default value of NULL. If *table_name* is omitted, full-text index column information is retrieved for every full-text indexed table.  
  
 [ **@column_name =**] **'***column_name***'**  
 Is the name of the column for which full-text index metadata is desired. *column_name* is **sysname** with a default value of NULL. If *column_name* is omitted or is NULL, full-text column information is returned for every full-text indexed column for *table_name*. If *table_name* is also omitted or is NULL, full-text index column information is returned for every full-text indexed column for all tables in the database.  
  
## Return Code Values  
 0 (success) or (1) failure  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_OWNER**|**sysname**|Table owner. This is the name of the database user that created the table.|  
|**TABLE_ID**|**int**|ID of the table.|  
|**TABLE_NAME**|**sysname**|Table name.|  
|**FULLTEXT_COLUMN_NAME**|**sysname**|Column in a full-text indexed table that is designated for indexing.|  
|**FULLTEXT_COLID**|**int**|Column ID of the full-text indexed column.|  
|**FULLTEXT_BLOBTP_COLNAME**|**sysname**|Column in a full-text indexed table that specifies the document type of the full-text indexed column. This value is only applicable when the full-text indexed column is a **varbinary(max)** or **image** column.|  
|**FULLTEXT_BLOBTP_COLID**|**int**|Column ID of the document type column. This value is only applicable when the full-text indexed column is a **varbinary(max)** or **image** column.|  
|**FULLTEXT_LANGUAGE**|**sysname**|Language used for the full-text search of the column.|  
  
## Permissions  
 Execute permissions default to members of the **public** role.  
  
## Examples  
 The following example returns information about the columns that have been designated for full-text indexing in all of the tables in the database.  
  
```  
USE AdventureWorks2012;  
GO  
DECLARE @mycursor CURSOR;  
EXEC sp_help_fulltext_columns_cursor @mycursor OUTPUT  
FETCH NEXT FROM @mycursor;  
WHILE (@@FETCH_STATUS <> -1)  
   BEGIN  
      FETCH NEXT FROM @mycursor;  
   END;  
CLOSE @mycursor;  
DEALLOCATE @mycursor;  
GO   
```  
  
## See Also  
 [COLUMNPROPERTY &#40;Transact-SQL&#41;](../../../t-sql/functions/columnproperty-transact-sql.md)   
 [sp_fulltext_column &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-fulltext-column-transact-sql.md)   
 [sp_help_fulltext_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-fulltext-columns-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  