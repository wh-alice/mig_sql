---
title: "COLUMNS (Transact-SQL) | Microsoft Docs"
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
  - "COLUMNS"
  - "COLUMNS_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "COLUMNS view"
  - "INFORMATION_SCHEMA.COLUMNS view"
ms.assetid: bbf7ac4a-7444-4351-a590-a9f71e0bc495
caps.latest.revision: 48
ms.author: "rickbyh"
manager: "jhubbard"
---
# COLUMNS (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Returns one row for each column that can be accessed by the current user in the current database.  
  
 To retrieve information from these views, specify the fully qualified name of **INFORMATION_SCHEMA***.**view_name*.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**TABLE_CATALOG**|**nvarchar(**128**)**|Table qualifier.|  
|**TABLE_SCHEMA**|**nvarchar(**128**)**|Name of schema that contains the table.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of an object. The only reliable way to find the schema of a object is to query the sys.objects catalog view.|  
|**TABLE_NAME**|**nvarchar(**128**)**|Table name.|  
|**COLUMN_NAME**|**nvarchar(**128**)**|Column name.|  
|**ORDINAL_POSITION**|**int**|Column identification number.|  
|**COLUMN_DEFAULT**|**nvarchar(**4000**)**|Default value of the column.|  
|**IS_NULLABLE**|**varchar(**3**)**|Nullability of the column. If this column allows for NULL, this column returns YES. Otherwise, NO is returned.|  
|**DATA_TYPE**|**nvarchar(**128**)**|System-supplied data type.|  
|**CHARACTER_MAXIMUM_LENGTH**|**int**|Maximum length, in characters, for binary data, character data, or text and image data.<br /><br /> -1 for **xml** and large-value type data. Otherwise, NULL is returned. For more information, see [Data Types &#40;Transact-SQL&#41;](../../../t-sql/data-types/data-types-transact-sql.md).|  
|**CHARACTER_OCTET_LENGTH**|**int**|Maximum length, in bytes, for binary data, character data, or text and image data.<br /><br /> -1 for **xml** and large-value type data. Otherwise, NULL is returned.|  
|**NUMERIC_PRECISION**|**tinyint**|Precision of approximate numeric data, exact numeric data, integer data, or monetary data. Otherwise, NULL is returned.|  
|**NUMERIC_PRECISION_RADIX**|**smallint**|Precision radix of approximate numeric data, exact numeric data, integer data, or monetary data. Otherwise, NULL is returned.|  
|**NUMERIC_SCALE**|**int**|Scale of approximate numeric data, exact numeric data, integer data, or monetary data. Otherwise, NULL is returned.|  
|**DATETIME_PRECISION**|**smallint**|Subtype code for **datetime** and ISO **interval** data types. For other data types, NULL is returned.|  
|**CHARACTER_SET_CATALOG**|**nvarchar(**128**)**|Returns **master**. This indicates the database in which the character set is located, if the column is character data or **text** data type. Otherwise, NULL is returned.|  
|**CHARACTER_SET_SCHEMA**|**nvarchar(**128**)**|Always returns NULL.|  
|**CHARACTER_SET_NAME**|**nvarchar(**128**)**|Returns the unique name for the character set if this column is character data or **text** data type. Otherwise, NULL is returned.|  
|**COLLATION_CATALOG**|**nvarchar(**128**)**|Always returns NULL.|  
|**COLLATION_SCHEMA**|**nvarchar(**128**)**|Always returns NULL.|  
|**COLLATION_NAME**|**nvarchar(**128**)**|Returns the unique name for the collation if the column is character data or **text** data type. Otherwise, NULL is returned.|  
|**DOMAIN_CATALOG**|**nvarchar(**128**)**|If the column is an alias data type, this column is the database name in which the user-defined data type was created. Otherwise, NULL is returned.|  
|**DOMAIN_SCHEMA**|**nvarchar(**128**)**|If the column is a user-defined data type, this column returns the name of the schema of the user-defined data type. Otherwise, NULL is returned.<br /><br /> **\*\* Important \*\*** Do not use INFORMATION_SCHEMA views to determine the schema of a data type. The only reliable way to find the schema of a type is to use the TYPEPROPERTY function.|  
|**DOMAIN_NAME**|**nvarchar(**128**)**|If the column is a user-defined data type, this column is the name of the user-defined data type. Otherwise, NULL is returned.|  
  
## Remarks  
 The **ORDINAL_POSITION** column of the **INFORMATION_SCHEMA.COLUMNS** view is not compatible with the bit pattern of columns returned by the COLUMNS_UPDATED function. To obtain a bit pattern that is compatible with COLUMNS_UPDATED, you must reference the **ColumnID** property of the COLUMNPROPERTY system function when you query the **INFORMATION_SCHEMA.COLUMNS** view. For example:  
  
```  
USE AdventureWorks2012;  
GO  
SELECT TABLE_NAME, COLUMN_NAME, COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'ColumnID') AS COLUMN_ID  
FROM AdventureWorks2012.INFORMATION_SCHEMA.COLUMNS  
WHERE TABLE_NAME = 'Person';  
GO  
```  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](http://msdn.microsoft.com/en-US/library/ms177862(SQL.130).aspx)   
 [Information Schema Views &#40;Transact-SQL&#41;](../Topic/Information%20Schema%20Views%20\(Transact-SQL\).md)   
 [sys.syscharsets &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-compatibility-views/sys.syscharsets-transact-sql.md)   
 [sys.columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.columns-transact-sql.md)   
 [sys.sql_modules &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md)   
 [sys.configurations &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.configurations-transact-sql.md)   
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.types &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md)   
 [COLUMNS_UPDATED &#40;Transact-SQL&#41;](../../../t-sql/functions/columns-updated-transact-sql.md)  
  
  