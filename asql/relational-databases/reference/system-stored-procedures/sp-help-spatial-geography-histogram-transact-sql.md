---
title: "sp_help_spatial_geography_histogram (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_spatial_geography_histogram_TSQL"
  - "sp_help_spatial_geography_histogram"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_spatial_geography_histogram"
ms.assetid: 5c5bd319-055d-4cd6-8c5a-06354cc056cc
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_help_spatial_geography_histogram (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Facilitates the keying of grid parameters for a spatial index.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
## Syntax  
  
```  
  
sp_help_spatial_geography_histogram [ @tabname =] 'tabname'   
     [ , [ @colname = ] 'columnname' ]   
     [ , [ @resolution = ] 'resolution' ]  
     [ , [ @sample = ] 'tablesample' ]  
```  
  
## Arguments  
 [ **@tabname =**] **'***tabname***'**  
 Is the qualified or nonqualified name of the table for which the spatial index has been specified.  
  
 Quotation marks are required only if a qualified table is specified. If a fully qualified name, including a database name, is provided, the database name must be the name of the current database. *tabname* is **sysname**, with no default.  
  
 [ **@colname =** ] **'***columnname***'**  
 Is the name of the spatial column specified. *columnname* is a **sysname**, with no default.  
  
 [ **@resolution =** ] **'***resolution***'**  
 Is the resolution of the bounding box. Valid values are from 10 to 5000. *resolution* is a **tinyint**, with no default.  
  
 [ **@sample =** ] **'***sample***'**  
 Is the percentage of the table that is used. Valid values are from 0 to 100. *tablesample* is a **float**. Default value is 100.  
  
## Property Value/Return Value  
 A table value is returned. The following grid describes the column contents of the table.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**cellid**|**int**|Represents the Unique ID of each cell, with a starting count of 1.|  
|**cell**|**geography**|Is a rectangular polygon that represents each cell. Cell shape is identical to the cell shape used for the spatial indexing.|  
|**row_count**|**bigint**|Indicates the number of spatial objects that are touching or containing the cell.|  
  
## Permissions  
 User must be a member of the **public** role. Requires READ ACCESS permission on the server and the object.  
  
## Remarks  
 SSMS spatial tab shows a graphical representation of the results. You can query the results against the spatial window to get an approximate number of result items.  
  
> [!NOTE]  
>  Objects in the table may cover more than one cell, so the sum of the cells in the table may be larger than the number of actual objects.  
  
 The bounding box for the **geography** type is the entire globe.  
  
## Examples  
 The following example calls  **sp_help_spatial_geography_histogram** on the `Person.Address` table in the [!INCLUDE[ssSampleDBnormal](../../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database.  
  
```  
EXEC sp_help_spatial_geography_histogram @tabname = Person.Address, @colname = SpatialLocation, @resolution = 64, @sample = 30;  
```  
  
## See Also  
 [Spatial Index Stored Procedures &#40;Transact-SQL&#41;](http://msdn.microsoft.com/en-US/library/cc645724(SQL.130).aspx)  
  
  