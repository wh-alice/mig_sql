---
title: "sys.xml_schema_types (Transact-SQL) | Microsoft Docs"
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
  - "sys.xml_schema_types_TSQL"
  - "xml_schema_types_TSQL"
  - "sys.xml_schema_types"
  - "xml_schema_types"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.xml_schema_types catalog view"
ms.assetid: 441ba49d-f778-4fa1-98c4-ced375a01a34
caps.latest.revision: 19
ms.author: "douglasl"
manager: "jhubbard"
---
# sys.xml_schema_types (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a row per XML schema component that is a Type, **symbol_space** of **T**.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**\<inherited columns>**||Inherits columns from [sys.xml_schema_components](../../relational-databases/system-catalog-views/sys.xml-schema-components-transact-sql.md).|  
|**is_abstract**|**bit**|1 = Type is an abstract type. All instances of an element of this type must use **xsi:type** to indicate a derived type that is not abstract.<br /><br /> 0 = Type is not abstract. (default)|  
|**allows_mixed_content**|**bit**|1 = Mixed content is allowed<br /><br /> 0 = Mixed content is not allowed. (default)|  
|**is_extension_blocked**|**bit**|1 = Replacement with an extension of the type is blocked in instances when the block attribute on the **complexType** definition or the **blockDefault** attribute of the ancestor \<schema> element information item is set to "extension" or "#all".<br /><br /> 0 =Replacement with extension is not blocked.|  
|**is_restriction_blocked**|**bit**|1 = Replacement with a restriction of the type is blocked in instances when the block attribute on the **complexType** definition or the **blockDefault** attribute of the ancestor \<schema> element information item is set to "restriction" or "#all".<br /><br /> 0 = Replacement with restriction is not blocked. (default)|  
|**is_final_extension**|**bit**|1 = Derivation by extension of the type is blocked when the final attribute on the **complexType** definition or the **finalDefault** attribute of the ancestor \<schema> element information item is set to "extension" or "#all".<br /><br /> 0 = Extension is allowed. (default)|  
|**is_final_restriction**|**bit**|1 = Derivation by restriction of the type is blocked when the final attribute on the simple or **complexType** definition or the **finalDefault** attribute of the ancestor \<schema> element information item is set to "restriction" or "#all".<br /><br /> 0 = Restriction is allowed. (default)|  
|**is_final_list_member**|**bit**|1 = This simple type cannot be used as the item type in a list.<br /><br /> 0 = This type is a complex type, or it can be used as list item type. (default)|  
|**is_final_union_member**|**bit**|1 = This simple type cannot be used as the member type of a union type.<br /><br /> 0 = This type is a complex type. or it can be used as union member type. (default)|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [XML Schemas &#40;XML Type System&#41; Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/xml-schemas-xml-type-system-catalog-views-transact-sql.md)  
  
  