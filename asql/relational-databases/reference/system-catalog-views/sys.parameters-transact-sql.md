---
title: "sys.parameters (Transact-SQL) | Microsoft Docs"
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
  - "sys.parameters_TSQL"
  - "sys.parameters"
  - "parameters"
  - "parameters_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.parameters catalog view"
  - "table-valued parameters,sys.parameters"
ms.assetid: 24e2764b-c8e5-4322-97a4-7407d8b8a92b
caps.latest.revision: 49
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.parameters (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../a9retired/includes/tsql-appliesto-ss2008-all-md.md)]

  Contains a row for each parameter of an object that accepts parameters. If the object is a scalar function, there is also a single row describing the return value. That row will have a **parameter_id** value of 0.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the object to which this parameter belongs.|  
|**name**|**sysname**|Name of the parameter. Is unique within the object.<br /><br /> If the object is a scalar function, the parameter name is an empty string in the row representing the return value.|  
|**parameter_id**|**int**|ID of the parameter. Is unique within the object.<br /><br /> If the object is a scalar function, **parameter_id** = 0 represents the return value.|  
|**system_type_id**|**tinyint**|ID of the system type of the parameter.|  
|**user_type_id**|**int**|ID of the type of the parameter as defined by the user.<br /><br /> To return the name of the type, join to the [sys.types](../../../relational-databases/reference/system-catalog-views/sys.types-transact-sql.md) catalog view on this column.|  
|**max_length**|**smallint**|Maximum length of the parameter, in bytes.<br /><br /> Value = -1 when the column data type is **varchar(max)**, **nvarchar(max)**, **varbinary(max)**, or **xml**.|  
|**precision**|**tinyint**|Precision of the parameter if numeric-based; otherwise, 0.|  
|**scale**|**tinyint**|Scale of the parameter if numeric-based; otherwise, 0.|  
|**is_output**|**bit**|1 = Parameter is OUTPUT or RETURN; otherwise, 0.|  
|**is_cursor_ref**|**bit**|1 = Parameter is a cursor-reference parameter.|  
|**has_default_value**|**bit**|1 = Parameter has default value.<br /><br /> [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] only maintains default values for CLR objects in this catalog view; therefore, this column has a value of 0 for [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] objects. To view the default value of a parameter in a [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] object, query the **definition** column of the [sys.sql_modules](../../../relational-databases/reference/system-catalog-views/sys.sql-modules-transact-sql.md) catalog view, or use the [OBJECT_DEFINITION](../../../t-sql/functions/object-definition-transact-sql.md) system function.|  
|**is_xml_document**|**bit**|1 = Content is a complete XML document.<br /><br /> 0 = Content is a document fragment, or the data type of the column is not **xml**.|  
|**default_value**|**sql_variant**|If **has_default_value** is 1, the value of this column is the value of the default for the parameter; otherwise, NULL.|  
|**xml_collection_id**|**int**|Non-zero if the data type of the parameter is **xml** and the XML is typed. The value is the ID of the collection containing the validating XML schema namespace of the parameter.<br /><br /> 0 = No XML schema collection.|  
|**is_readonly**|**bit**|1 =  Parameter is  READONLY; otherwise, 0.|  
|**is_nullable**|**bit**|1 = Parameter is nullable. (the default).<br /><br /> 0 = Parameter is not nullable, for more efficient execution of natively-compiled stored procedures.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)   
 [sys.all_parameters &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.all-parameters-transact-sql.md)   
 [sys.system_parameters &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.system-parameters-transact-sql.md)  
  
  