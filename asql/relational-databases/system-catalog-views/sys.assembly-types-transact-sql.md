---
title: "sys.assembly_types (Transact-SQL) | Microsoft Docs"
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
  - "assembly_types"
  - "sys.assembly_types"
  - "sys.assembly_types_TSQL"
  - "assembly_types_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.assembly_types catalog view"
ms.assetid: 35f0384f-7a6d-41b1-9461-f1406d68f317
caps.latest.revision: 22
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.assembly_types (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Contains a row for each user-defined type that is defined by a CLR assembly. The following **sys.assembly_types** appear in the list of inherited columns (see [sys.types &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.types-transact-sql.md)) after **rule_object_id**.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**assembly_id**|**int**|ID of the assembly from which this type was created.|  
|**assembly_class**|**sysname**|Name of the class within the assembly that defines this type.|  
|**is_binary_ordered**|**bit**|Sorting the bytes of this type is equivalent to sorting using comparison operators on the type.|  
|**is_fixed_length**|**bit**|Length of the type is always the same as max_length.|  
|**prog_id**|**nvarchar(40)**|ProgID of the type as exposed to COM.|  
|**assembly_qualified_name**|**nvarchar(4000)**|Assembly qualified type name. The name is in a format suitable to be passed to Type.GetType().|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Scalar Types Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/scalar-types-catalog-views-transact-sql.md)  
  
  