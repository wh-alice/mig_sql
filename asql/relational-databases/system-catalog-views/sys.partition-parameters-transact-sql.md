---
title: "sys.partition_parameters (Transact-SQL) | Microsoft Docs"
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
  - "partition_parameters_TSQL"
  - "partition_parameters"
  - "sys.partition_parameters_TSQL"
  - "sys.partition_parameters"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.partition_parameters catalog view"
ms.assetid: 2012ed9d-3ea3-4c29-9b78-dfa54a392dce
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.partition_parameters (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-asdw-pdw-_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-asdb-asdw-pdw-md.md)]

  Contains a row for each parameter of a partition function.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**function_id**|**int**|ID of the partition function to which this parameter belongs.|  
|**parameter_id**|**int**|ID of the parameter. Is unique within the partition function, beginning with 1.|  
|**system_type_id**|**tinyint**|ID of the system type of the parameter. Corresponds to the **system_type_id** column of the **sys.types** catalog view.|  
|**max_length**|**smallint**|Maximum length of the parameter in bytes.|  
|**precision**|**tinyint**|Precision of the parameter if numeric-based; otherwise, 0.|  
|**scale**|**tinyint**|Scale of the parameter if numeric-based; otherwise, 0.|  
|**collation_name**|**sysname**|Name of the collation of the parameter if character-based; otherwise, NULL.|  
|**user_type_id**|**int**|ID of the type. Is unique within the database. For system data types, **user_type_id** = **system_type_id**.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Partition Function Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/partition-function-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [sys.partition_functions &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.partition-functions-transact-sql.md)   
 [sys.partition_range_values &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.partition-range-values-transact-sql.md)  
  
  