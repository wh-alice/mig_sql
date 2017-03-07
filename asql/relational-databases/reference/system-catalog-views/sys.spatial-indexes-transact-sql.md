---
title: "sys.spatial_indexes (Transact-SQL) | Microsoft Docs"
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
  - "sys.spatial_indexes_TSQL"
  - "spatial_indexes"
  - "spatial_indexes_TSQL"
  - "sys.spatial_indexes"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.spatial_indexes catalog view"
ms.assetid: 40e967d5-2e8d-45af-bf5e-5251493cf7cb
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.spatial_indexes (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Represents the main index information of the spatial indexes.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|\<inherited columns>||Inherits columns from [sys.indexes](../../../relational-databases/reference/system-catalog-views/sys.indexes-transact-sql.md).|  
|spatial_index_type|**tinyint**|Type of spatial index:<br /><br /> 1 = Geometric spatial index<br /><br /> 2 = Geographic spatial index|  
|spatial_index_type_desc|**nvarchar(60)**|Type description of spatial index:<br /><br /> GEOMETRY = geometric spatial index<br /><br /> GEOGRAPHY = geographic spatial index|  
|tessellation_scheme|**sysname**|Name of tessellation scheme:<br /><br /> GEOMETRY_GRID, GEOMETRY_AUTO_GRID,<br /><br /> GEOGRAPHY_GRID, GEOGRAPHY_AUTO_GRID<br /><br /> Note: For information about tessellation schemes, see [Spatial Indexes Overview](../../../relational-databases/spatial/spatial-indexes-overview.md).|  
|\<inherited columns>||Inherits columns from [sys.indexes](../../../relational-databases/reference/system-catalog-views/sys.indexes-transact-sql.md).<br /><br /> The inherited columns has_filter and filter_definition appear after the columns that are specific to spatial indexes.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)]  
  
## See Also  
 [sys.objects &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.objects-transact-sql.md)   
 [sys.spatial_index_tessellations &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.spatial-index-tessellations-transact-sql.md)   
 [sys.indexes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.indexes-transact-sql.md)   
 [sys.index_columns &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.index-columns-transact-sql.md)   
 [Spatial Indexes Overview](../../../relational-databases/spatial/spatial-indexes-overview.md)  
  
  