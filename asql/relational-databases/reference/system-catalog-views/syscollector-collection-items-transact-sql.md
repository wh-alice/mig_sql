---
title: "syscollector_collection_items (Transact-SQL) | Microsoft Docs"
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
  - "syscollector_collection_items_TSQL"
  - "syscollector_collection_items"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "syscollector_collection_items view"
  - "add data collector view"
ms.assetid: a279ecd1-a59c-4315-9f08-bf221f00a465
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# syscollector_collection_items (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns information about an item in a collection set.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**collection_set_id**|**int**|Identifies the collection set. Is not nullable.|  
|**collection_item_id**|**int**|Identifies an item in the collection set. Is not nullable.|  
|**collector_type_uid**|**uniqueidentifier**|The GUID used to identify the collector type. Is not nullable.|  
|**name**|**nvarchar(4000)**|The name of the collection set. Is nullable.|  
|**frequency**|**int**|The frequency that data is collected by a collection item. Is not nullable.|  
|**parameters**|**xml**|Describes the parameterization for the collector type associated with the collection item. The XML schema for this collection item is validated with the XML Schema (XSD) stored in the **parameter_schema** for a particular collector type. Is nullable. For more information, see [syscollector_collector_types &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/syscollector-collector-types-transact-sql.md).|  
  
## Permissions  
 Requires SELECT for **dc_operator**, **dc_proxy**.  
  
## See Also  
 [Data Collector Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/data-collector-stored-procedures-transact-sql.md)   
 [Data Collector Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/data-collector-views-transact-sql.md)   
 [Data Collection](../../../relational-databases/data-collection/data-collection.md)  
  
  