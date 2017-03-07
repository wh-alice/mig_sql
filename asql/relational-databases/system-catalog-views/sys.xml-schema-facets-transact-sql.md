---
title: "sys.xml_schema_facets (Transact-SQL) | Microsoft Docs"
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
  - "sys.xml_schema_facets"
  - "xml_schema_facets_TSQL"
  - "sys.xml_schema_facets_TSQL"
  - "xml_schema_facets"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.xml_schema_facets catalog view"
ms.assetid: 4402dde9-1877-4872-8550-140dc2a177d2
caps.latest.revision: 33
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.xml_schema_facets (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row per facet (restriction) of an xml-type definition (corresponds to **sys.xml_types**).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**xml_component_id**|**int**|ID of XML component (type) to which this facet belongs.|  
|**facet_id**|**int**|ID (1-based ordinal) of facet, unique within component-id.|  
|**kind**|**char(2)**|Kind of facet:<br /><br /> LG = Length<br /><br /> LN = Minimum Length<br /><br /> LX = Maximum Length<br /><br /> PT = Pattern (regular expression)<br /><br /> EU = Enumeration<br /><br /> IN = Minimum Inclusive value<br /><br /> IX = Maximum Inclusive value<br /><br /> EN = Minimum Exclusive value<br /><br /> EX = Maximum Exclusive value<br /><br /> DT = Total Digits<br /><br /> DF = Fraction Digits<br /><br /> WS = White Space normalization|  
|**kind_desc**|**nvarchar (60)**|Description of kind of facet:<br /><br /> LENGTH<br /><br /> MINIMUM_LENGTH<br /><br /> MAXIMUM_LENGTH<br /><br /> PATTERN<br /><br /> ENUMERATION<br /><br /> MINIMUM_INCLUSIVE_VALUE<br /><br /> MAXIMUM_INCLUSIVE_VALUE<br /><br /> MINIMUM_EXCLUSIVE_VALUE<br /><br /> MAXIMUM_EXCLUSIVE_VALUE<br /><br /> TOTAL_DIGITS<br /><br /> FRACTION_DIGITS<br /><br /> WHITESPACE_NORMALIZATION|  
|**is_fixed**|**bit**|1 = Facet has a fixed, prespecified value.<br /><br /> 0 = No fixed value. (default)|  
|**value**|**nvarchar (4000)**|Fixed, pre-specified value of the facet.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [XML Schemas &#40;XML Type System&#41; Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/xml-schemas-xml-type-system-catalog-views-transact-sql.md)  
  
  