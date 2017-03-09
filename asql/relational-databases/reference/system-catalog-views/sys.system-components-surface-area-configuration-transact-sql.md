---
title: "sys.system_components_surface_area_configuration (Transact-SQL) | Microsoft Docs"
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
  - "sys.system_components_surface_area_configuration_TSQL"
  - "system_components_surface_area_configuration"
  - "system_components_surface_area_configuration_TSQL"
  - "sys.system_components_surface_area_configuration"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.system_components_surface_area_configuration catalog view"
ms.assetid: d9920008-3387-4f9e-8f21-47473f2ba04f
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.system_components_surface_area_configuration (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns one row for each executable system object that can be enabled or disabled by a surface area configuration component. For more information, see [Surface Area Configuration](../../../relational-databases/security/surface-area-configuration.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**component_name**|**sysname**|Component name. This will have the keyword collation, Latin1_General_CI_AS_KS_WS. Cannot be NULL.|  
|**database_name**|**sysname**|Database that contains the object. This will have the keyword collation, Latin1_General_CI_AS_KS_WS. Must be one of the following:<br /><br /> **master**<br /><br /> **msdb**<br /><br /> **mssqlsystemresource**|  
|**schema_name**|**sysname**|Schema that contains the object. This will have the keyword collation, Latin1_General_CI_AS_KS_WS. Cannot be NULL.|  
|**object_name**|**sysname**|Name of the object. This will have the keyword collation, Latin1_General_CI_AS_KS_WS. Cannot be NULL.|  
|**state**|**tinyint**|0 = Disabled<br /><br /> 1 = Enabled|  
|**type**|**char(2)**|Object type. Can be one of the following:<br /><br /> P = SQL_STORED_PROCEDURE<br /><br /> PC = CLR_STORED_PROCEDURE<br /><br /> FN = SQL_SCALAR_FUNCTION<br /><br /> FS = CLR_SCALAR_FUNCTION<br /><br /> FT = CLR_TABLE_VALUED_FUNCTION<br /><br /> IF = SQL_INLINE_TABLE_VALUED_FUNCTION<br /><br /> TF = SQL_TABLE_VALUED_FUNCTION<br /><br /> X = EXTENDED_STORED_PROCEDURE|  
|**type_desc**|**nvarchar(60)**|Friendly name description of the object type.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)  
  
  