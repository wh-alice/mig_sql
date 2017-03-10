---
title: "sys.column_type_usages (Transact-SQL) | Microsoft Docs"
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
  - "column_type_usages"
  - "sys.column_type_usages_TSQL"
  - "column_type_usages_TSQL"
  - "sys.column_type_usages"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.column_type_usages catalog view"
ms.assetid: 1ead375e-f662-4837-903f-8947496c51e4
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.column_type_usages (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each column that is of user-defined type.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the object to which this column belongs.|  
|**column_id**|**int**|ID of the column. Is unique within the object.|  
|**user_type_id**|**int**|ID of the user-defined type.<br /><br /> To return the name of the type, join to the [sys.types](../../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md) catalog view on this column.|  
  
## Permissions  
 Requires membership in the **public** role. For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Scalar Types Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/scalar-types-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  