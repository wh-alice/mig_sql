---
title: "sys.sql_dependencies (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sql_dependencies"
  - "sql_dependencies_TSQL"
  - "sys.sql_dependencies_TSQL"
  - "sys.sql_dependencies"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sql_dependencies catalog view"
ms.assetid: 1779aa87-a0b8-470a-a286-d7cc0b93ad2e
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sql_dependencies (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each dependency on a referenced entity as referenced in the [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] expression or statements that define some other referencing object.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [sys.sql_expression_dependencies](../../../relational-databases/reference/system-catalog-views/sys.sql-expression-dependencies-transact-sql.md) instead.  

  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**class**|**tinyint**|Identifies the class of the referenced entity:<br /><br /> 0 = Object or column (non-schema-bound references only)<br /><br /> 1 = Object or column (schema-bound references)<br /><br /> 2 = Types (schema-bound references)<br /><br /> 3 = XML Schema collections (schema-bound references)<br /><br /> 4 = Partition function (schema-bound references)|  
|**class_desc**|**nvarchar(60)**|Description of class of referenced entity:<br /><br /> **OBJECT_OR_COLUMN_REFERENCE_NON_SCHEMA_BOUND**<br /><br /> **OBJECT_OR_COLUMN_REFERENCE_SCHEMA_BOUND**<br /><br /> **TYPE_REFERENCE**<br /><br /> **XML_SCHEMA_COLLECTION_REFERENCE**<br /><br /> **PARTITION_FUNCTION_REFERENCE**|  
|**object_id**|**int**|ID of the referencing object.|  
|**column_id**|**int**|If the referencing ID is a column, ID of referencing column; otherwise, 0.|  
|**referenced_major_id**|**int**|ID of the referenced entity, interpreted by value of class, according to:<br /><br /> 0, 1 = Object ID of object or column.<br /><br /> 2 = Type ID.<br /><br /> 3 = XML Schema collection ID.|  
|**referenced_minor_id**|**int**|Minor-ID of the referenced entity, interpreted by value of class, as shown in the following.<br /><br /> When class =:<br /><br /> 0, **referenced_minor_id** is a column ID; or if not a column, it is 0.<br /><br /> 1, **referenced_minor_id** is a column ID; or if not a column, it is 0.<br /><br /> Otherwise, **referenced_minor_id** = 0.|  
|**is_selected**|**bit**|Object or column is selected.|  
|**is_updated**|**bit**|Object or column is updated.|  
|**is_select_all**|**bit**|Object is used in SELECT * clause (object-level only).|  
  
## Permissions  
 Requires membership in the **public** role. For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  