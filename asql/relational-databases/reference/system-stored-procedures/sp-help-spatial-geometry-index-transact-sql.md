---
title: "sp_help_spatial_geometry_index (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_spatial_geometry_index"
  - "sp_help_spatial_geometry_index_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_spatial_geometry_index procedure"
ms.assetid: f1bcefb1-09c8-4b49-8c51-5d471065849f
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_help_spatial_geometry_index (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns the names and values for a specified set of properties about a **geometry** spatial index. The result is returned in a table format. You can choose to return a core set of properties or all properties of the index.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_help_spatial_geometry_index [ @tabname =] 'tabname'   
     [ , [ @indexname = ] 'indexname' ]   
     [ , [ @verboseoutput = ] 'verboseoutput'   
     [ , [ @query_sample = ] 'query_sample']   
```  
  
## Arguments  
 See [Arguments and Properties of Spatial Index Stored Procedures](../../../relational-databases/reference/system-stored-procedures/spatial-index-stored-procedures-arguments-and-properties.md).  
  
## Property Value/Return Value  
 See [Arguments and Properties of Spatial Index Stored Procedures](../../../relational-databases/reference/system-stored-procedures/spatial-index-stored-procedures-arguments-and-properties.md).  
  
## Permissions  
 User must be assigned a PUBLIC role to access the procedure. Requires READ ACCESS permission on the server and the object.  
  
## Remarks  
 Properties containing NULL values are not included in the return set.  
  
## Example  
 The following example uses `sp_help_spatial_geometry_index` to investigate the spatial index **SIndx_SpatialTable_geometry_col2** defined on table **geometry_col** for the given query sample in **@qs**. This example returns only the core properties of the specified index.  
  
```  
declare @qs geometry  
        ='POLYGON((-90.0 -180.0, -90.0 180.0, 90.0 180.0, 90.0 -180.0, -90.0 -180.0))';  
exec sp_help_spatial_geometry_index 'geometry_col', 'SIndx_SpatialTable_geometry_col2', 0, @qs;  
```  
  
## See Also  
 [Spatial Index Stored Procedures](http://msdn.microsoft.com/library/1be0f34e-3d5a-4a1f-9299-bd482362ec7a)   
 [sp_help_spatial_geometry_index_xml](../../../relational-databases/reference/system-stored-procedures/sp-help-spatial-geometry-index-xml-transact-sql.md)   
 [Spatial Indexes Overview](../../../relational-databases/spatial/spatial-indexes-overview.md)   
 [Spatial Data &#40;SQL Server&#41;](../../../relational-databases/spatial/spatial-data-sql-server.md)  
  
  