---
title: "sys.stats (Transact-SQL) | Microsoft Docs"
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
  - "sys.stats"
  - "stats_TSQL"
  - "sys.stats_TSQL"
  - "stats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.stats catalog view"
ms.assetid: 42605c80-126f-460a-befb-a0b7482fae6a
caps.latest.revision: 41
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.stats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Contains a row for each statistics object that exists for the tables, indexes, and indexed views in the database in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Every index will have a corresponding statistics row with the same name and ID (**index_id** = **stats_id**), but not every statistics row has a corresponding index.  
  
 The catalog view [sys.stats_columns](../../../relational-databases/reference/system-catalog-views/sys.stats-columns-transact-sql.md) provides statistics information for each column in the database. For more information about statistics, see [Statistics](../../../relational-databases/statistics/statistics.md).  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**object_id**|**int**|ID of the object to which these statistics belong.|  
|**name**|**sysname**|Name of the statistics. Is unique within the object.|  
|**stats_id**|**int**|ID of the statistics. Is unique within the object.|  
|**auto_created**|**bit**|Indicates whether the statistics were automatically created by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].<br /><br /> 0 = Statistics were not automatically created by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].<br /><br /> 1 = Statistics were automatically created by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|**user_created**|**bit**|Indicates whether the statistics were created by a user.<br /><br /> 0 = Statistics were not created by a user.<br /><br /> 1 = Statistics were created by a user.|  
|**no_recompute**|**bit**|Indicates whether the statistics were created with the **NORECOMPUTE** option.<br /><br /> 0 = Statistics were not created with the **NORECOMPUTE** option.<br /><br /> 1 = Statistics were created with the **NORECOMPUTE** option.|  
|**has_filter**|**bit**|0 = Statistics do not have a filter and are computed on all rows.<br /><br /> 1 = Statistics have a filter and are computed only on rows that satisfy the filter definition.|  
|**filter_definition**|**nvarchar(max)**|Expression for the subset of rows included in filtered statistics.<br /><br /> NULL = Non-filtered statistics.|  
|**is_temporary**|**bit**|**Applies to**: [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Indicate whether the statistics is temporary. Temporary statistics support [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] secondary databases that are enabled for read-only access.<br /><br /> 0 = The statistics is not temporary.<br /><br /> 1 = The statistics is temporary.|  
|**is_incremental**|**bit**|**Applies to**: [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].<br /><br /> Indicate whether the statistics are created as incremental statistics.<br /><br /> 0 = The statistics are not incremental.<br /><br /> 1 = The statistics are incremental.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## Examples  
 The following examples returns all the statistics and statistics columns for the `HumanResources.Employee` table.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT s.name AS statistics_name  
      ,c.name AS column_name  
      ,sc.stats_column_id  
FROM sys.stats AS s  
INNER JOIN sys.stats_columns AS sc   
    ON s.object_id = sc.object_id AND s.stats_id = sc.stats_id  
INNER JOIN sys.columns AS c   
    ON sc.object_id = c.object_id AND c.column_id = sc.column_id  
WHERE s.object_id = OBJECT_ID('HumanResources.Employee');  
  
```  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  