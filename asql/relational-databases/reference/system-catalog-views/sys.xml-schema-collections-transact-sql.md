---
title: "sys.xml_schema_collections (Transact-SQL) | Microsoft Docs"
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
  - "sys.xml_schema_collections_TSQL"
  - "sys.xml_schema_collections"
  - "xml_schema_collections"
  - "xml_schema_collections_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.xml_schema_collections catalog view"
ms.assetid: f3f7f3dc-029f-4942-ab3c-75fa9814e40f
caps.latest.revision: 34
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.xml_schema_collections (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a row per XML schema collection. An XML schema collection is a named set of XSD definitions. The XML schema collection itself is contained in a relational schema, and it is identified by a schema-scoped [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] name. The following tuples are unique: xml_collection_id, and schema_id and name.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|xml_collection_id|**int**|ID of the XML schema collection. Unique within the database.|  
|schema_id|**int**|ID of the relational schema that contains this XML schema collection.|  
|principal_id|**int**|ID of the individual owner if different from the schema owner. By default, schema-contained objects are owned by the schema owner. However, an alternate owner may be specified by using the ALTER AUTHORIZATION statement to change ownership.<br /><br /> NULL = No alternate individual owner.|  
|name|**sysname**|Name of the XML schema collection.|  
|create_date|**datetime**|Date the XML schema collection was created.|  
|modify_date|**datetime**|Date the XML schema collection was last altered.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [XML Schemas &#40;XML Type System&#41; Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/xml-schemas-xml-type-system-catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  