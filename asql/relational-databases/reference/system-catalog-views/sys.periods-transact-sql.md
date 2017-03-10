---
title: "sys.periods (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 25e66ed3-2270-4c5c-9f5a-2c0f165a57ca
caps.latest.revision: 6
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.periods (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Returns a row for each table for which periods have been defined.  
  
|Column header|Data type|Description|  
|-------------------|---------------|-----------------|  
|period_type|**sysname**|Name of the period|  
|period_type_desc|**tinyint**|The numeric value representing the type of period:<br /><br /> 1 = system-time period|  
|object_id|**nvarchar(60)**|The text description of the type of column:<br /><br /> SYSTEM_TIME_PERIOD|  
|object_id|**int**|The id of the table containing the period_type column|  
|start_column_id|**int**|The id of the column that defines the lower period boundary|  
|end_column_id|**int**|The id of the column that defines the upper period boundary|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](http://msdn.microsoft.com/en-US/library/ms177862(SQL.130).aspx)   
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [sys.all_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.all-columns-transact-sql.md)   
 [sys.system_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.system-columns-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)   
 [Temporal Tables](../../../relational-databases/tables/temporal-tables.md)  
  
  