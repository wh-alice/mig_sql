---
title: "sys.numbered_procedure_parameters (Transact-SQL) | Microsoft Docs"
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
  - "numbered_procedure_parameters_TSQL"
  - "sys.numbered_procedure_parameters_TSQL"
  - "numbered_procedure_parameters"
  - "sys.numbered_procedure_parameters"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.numbered_procedure_parameters catalog view"
ms.assetid: a441d46d-1f30-41c2-8d94-e9442f59786e
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.numbered_procedure_parameters (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row for each parameter of a numbered procedure. When you create a numbered stored procedure, the base procedure is number 1. All subsequent procedures have numbers 2, 3, and so forth. **sys.numbered_procedure_parameters** contains the parameter definitions for all subsequent procedures, numbered 2 and greater. This view does not show parameters for the base stored procedure (number = 1). The base stored procedure is similar to a nonnumbered stored procedure. Therefore, its parameters are represented in [sys.parameters (Transact-SQL)](../../relational-databases/system-catalog-views/sys.parameters-transact-sql.md).  
  
> [!IMPORTANT]  
>  Numbered procedures are deprecated. Use of numbered procedures is discouraged. A DEPRECATION_ANNOUNCEMENT event is fired when a query that uses this catalog view is compiled.  
  
> [!NOTE]  
>  XML and CLR parameters are not supported for numbered procedures.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the object to which this parameter belongs.|  
|**procedure_number**|**smallint**|Number of this procedure within the object, 2 or greater.|  
|**name**|**sysname**|Name of the parameter. Is unique within **procedure_number**.|  
|**parameter_id**|**int**|ID of the parameter. Is unique within the **procedure_number**.|  
|**system_type_id**|**tinyint**|ID of the system type of the parameter|  
|**user_type_id**|**int**|ID of the type, as defined by user, of the parameter.|  
|**max_length**|**smallint**|Maximum length of the parameter in bytes.<br /><br /> -1 = Column data type is varchar(max), nvarchar(max), or varbinary(max).|  
|**precision**|**tinyint**|Precision of the parameter if numeric-based; otherwise, 0.|  
|**scale**|**tinyint**|Scale of the parameter if numeric-based; otherwise, 0.|  
|**is_output**|**bit**|1 = Parameter is output or return; otherwise, 0|  
|**is_cursor_ref**|**bit**|1 = Parameter is a cursor-reference parameter.|  
  
> [!NOTE]  
>  XML and CLR parameters are not supported for numbered procedures.  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)  
  
  