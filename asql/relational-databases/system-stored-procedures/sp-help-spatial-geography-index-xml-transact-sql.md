---
title: "sp_help_spatial_geography_index_xml (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_spatial_geography_index_xml_TSQL"
  - "sp_help_spatial_geography_index_xml"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_spatial_geography_index_xml procedure"
ms.assetid: 821d4127-3ce5-4474-8561-043404a20d81
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_help_spatial_geography_index_xml (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns the name and value for a specified set of properties about a **geography** spatial index. You can choose to return a core set of properties or all properties of the index.  
  
 Results are returned in an XML fragment that displays the name and value of the properties selected.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_help_spatial_geography_index_xml [ @tabname =] 'tabname'   
     [ , [ @indexname = ] 'indexname' ]   
     [ , [ @verboseoutput = ] 'verboseoutput' ]   
     [ , [ @query_sample = ] 'query_sample' ]   
     [ ,.[ @xml_output = ] 'xml_output' ]   
```  
  
## Arguments  
 See [Arguments and Properties of Spatial Index Stored Procedures](../Topic/Arguments%20and%20Properties%20of%20Spatial%20Index%20Stored%20Procedures.md).  
  
## Properties  
 See [Arguments and Properties of Spatial Index Stored Procedures](../Topic/Arguments%20and%20Properties%20of%20Spatial%20Index%20Stored%20Procedures.md).  
  
## Permissions  
 User must be assigned a PUBLIC role to access the procedure. Requires READ ACCESS permission on the server and the object.  
  
## Remarks  
 Properties containing NULL values are not included in the return set.  
  
## Example  
 The following example uses `sp_help_spatial_geography_index_xml` to investigate the spatial index **SIndx_SpatialTable_geography_col2** defined on table **geography_col** for the given query sample in **@qs**. This example returns the core properties of the specified index in an XML fragment that displays the name and value of the properties selected.  
  
 An [XQuery](../../xquery/xquery-basics.md) is then run on the result set, returning a specific property.  
  
```  
declare @qs geography  
        ='POLYGON((-90.0 -180, -90 180.0, 90 180.0, 90 -180, -90 -180.0))';  
declare @x xml;  
exec sp_help_spatial_geography_index_xml 'geography_col', 'SIndx_SpatialTable_geography_col2', 0, @qs, @x output;  
select @x.value('(/Primary_Filter_Efficiency/text())[1]', 'float');  
```  
  
 Similar to [sp_help_spatial_geography_index](../../relational-databases/system-stored-procedures/sp-help-spatial-geography-index-transact-sql.md), this stored procedure provides simpler programmatic access to the properties of a **geography** spatial index and reports the result set in XML.  
  
 The bounding box of a **geography** is the whole earth.  
  
## Requirements  
  
## See Also  
 [Spatial Index Stored Procedures](../Topic/Spatial%20Index%20Stored%20Procedures%20\(Transact-SQL\).md)   
 [sp_help_spatial_geography_index](../../relational-databases/system-stored-procedures/sp-help-spatial-geography-index-transact-sql.md)   
 [Spatial Indexes Overview](../../relational-databases/spatial/spatial-indexes-overview.md)   
 [Spatial Data &#40;SQL Server&#41;](../../relational-databases/spatial/spatial-data-sql-server.md)   
 [XQuery Basics](../../xquery/xquery-basics.md)   
 [XQuery Language Reference](../../xquery/xquery-language-reference-sql-server.md)  
  
  