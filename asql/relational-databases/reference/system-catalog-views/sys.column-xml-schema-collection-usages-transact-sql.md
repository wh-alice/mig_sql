---
title: "sys.column_xml_schema_collection_usages (Transact-SQL) | Microsoft Docs"
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
  - "column_xml_schema_collection_usages_TSQL"
  - "sys.column_xml_schema_collection_usages"
  - "column_xml_schema_collection_usages"
  - "sys.column_xml_schema_collection_usages_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.column_xml_schema_collection_usages catalog view"
ms.assetid: 4fd1ec7f-b9dc-4ddb-ab3a-0d59ab05ad20
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.column_xml_schema_collection_usages (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row for each column that is validated by an XML schema.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|The ID of the object to which this column belongs.|  
|**column_id**|**int**|The ID of the column. Is unique within the object.|  
|**xml_collection_id**|**int**|The ID of the collection that contains the validating XML schema namespace of the column.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [XML Schemas &#40;XML Type System&#41; Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/xml-schemas-xml-type-system-catalog-views-transact-sql.md)  
  
  