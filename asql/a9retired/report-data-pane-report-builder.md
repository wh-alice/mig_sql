---
title: "Report Data Pane (Report Builder) | Microsoft Docs"
ms.custom: ""
ms.date: "02/28/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
f1_keywords: 
  - "10435"
helpviewer_keywords: 
  - "Report Data pane"
ms.assetid: 1492aa39-aeb1-4509-ab97-b9edd0901b7e
caps.latest.revision: 11
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Report Data Pane (Report Builder)
  Use the **Report Data** pane to view the currently defined parameters, data sources, datasets, field collections, and images in your report. The Report Dane displays a hierarchical view of the items that represent data in your report. The top level nodes represent built-in fields, parameters, images, and data source references. Expand each node to view the data items. For example, when you expand a data source node, the datasets defined for that data source appear. When you expand a dataset, its field collection appears. Drag items to the report design surface or to the Grouping pane to link data with selected report items on the report page. For more information, see [Report Design View &#40;Report Builder&#41;](../reporting-services/report-builder/report-design-view-report-builder.md).  
  
## Options  
 **Built-in Fields**  
 Represents commonly used fields in a report, such as the report name or page number. For more information, see [Built-in Collections in Expressions &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/built-in-collections-in-expressions-report-builder.md).  
  
 **Parameters**  
 Represents the collection of report parameters, each of which can be single-valued or multivalued. For more information, see [Report Parameters &#40;Report Builder and Report Designer&#41;](../reporting-services/report-design/report-parameters-report-builder-and-report-designer.md).  
  
 **Images**  
 Represents the set of images used in the report. For more information, see [Images &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/images-report-builder-and-ssrs.md).  
  
 **Data sources**  
 Represents an embedded data source or a reference to a shared data source. A data source represents a source of data for the report. A data source is the parent node for the collection of datasets that use it. For more information, see [Report Datasets &#40;SSRS&#41;](../reporting-services/report-data/report-datasets-ssrs.md) and [Data Connections, Data Sources, and Connection Strings in Report Builder](../a9retired/data-connections-data-sources-and-connection-strings-in-report-builder.md).  
  
 **Datasets**  
 Represents the data that is retrieved from a data source by running one command, for example, a [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)] query that retrieves data from a [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] database. A dataset is the parent node for the collection of fields that is specified by the query, and also includes calculated fields. Report Builder supports query designers that help you specify a query. For more information, see [Report Datasets &#40;SSRS&#41;](../reporting-services/report-data/report-datasets-ssrs.md).  
  
## See Also  
 [Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md)   
 [Report Builder Help for Dialog Boxes, Panes, and Wizards](http://msdn.microsoft.com/en-us/2da24891-0b6d-4d3c-8b18-81b98752642f)   
 [Grouping Pane &#40;Report Builder&#41;](../reporting-services/report-design/grouping-pane-report-builder.md)   
 [Finding, Viewing, and Managing Reports &#40;Report Builder and SSRS &#41;](../reporting-services/report-builder/finding-viewing-and-managing-reports-report-builder-and-ssrs.md)  
  
  