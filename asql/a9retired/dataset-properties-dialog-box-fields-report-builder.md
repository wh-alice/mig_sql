---
title: "Dataset Properties Dialog Box, Fields (Report Builder) | Microsoft Docs"
ms.custom: ""
ms.date: "02/28/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "10021"
  - "10140"
  - "sql13.rtp.rptdesigner.datasetproperties.fields.f1"
ms.assetid: 75c7e54a-3d20-4c9a-88da-ab36dce2ce42
caps.latest.revision: 14
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Dataset Properties Dialog Box, Fields (Report Builder)
  Select **Fields** on the **Dataset Properties** dialog box to change the field collection for the report dataset. The fields list is automatically populated, but you can use **Fields** to add, edit, and delete query and calculated fields.  
  
 Calculated fields are supported only on embedded datasets. For more information, see [Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md).  
  
## Options  
 **Add**  
 Add a new query or calculated field to the dataset.  
  
 **Delete**  
 Delete the selected field from the dataset.  
  
 **Field Name**  
 Type a name for the field. The field must be unique within the dataset. For each existing field in the dataset, the name is pre-populated.  
  
 **Field Source**  
 Enter a value for the field.  
  
 For a calculated field, the field source must be the name of an existing field retrieved by the dataset query, or an expression that you create. For example, to create a field that represents 10 times the value in the query field Sales, use the expression `=10 * Fields!Sales.Value`.  
  
 For a query field, the field source must be the name of an existing field retrieved by the dataset query.  
  
 **Expression (fx)**  
 Add or change an expression for the new calculated field. This button only appears when you click **Add** and select **Calculated Field**.  
  
## See Also  
 [Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md)   
 [Create a Shared Dataset or Embedded Dataset &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/create-a-shared-dataset-or-embedded-dataset-report-builder-and-ssrs.md)   
 [Report Builder Help for Dialog Boxes, Panes, and Wizards](http://msdn.microsoft.com/en-us/2da24891-0b6d-4d3c-8b18-81b98752642f)   
 [Dataset Properties Dialog Box, Options &#40;Report Builder&#41;](../reporting-services/report-data/dataset-properties-dialog-box-options-report-builder.md)   
 [Dataset Properties Dialog Box, Filters &#40;Report Builder&#41;](../a9retired/dataset-properties-dialog-box-filters-report-builder.md)   
 [Dataset Properties Dialog Box, Parameters &#40;Report Builder&#41;](../a9retired/dataset-properties-dialog-box-parameters-report-builder.md)   
 [Dataset Properties Dialog Box, Query &#40;Report Builder&#41;](../reporting-services/report-data/dataset-properties-dialog-box-query-report-builder.md)   
 [Expressions &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/expressions-report-builder-and-ssrs.md)   
 [Data Connections, Data Sources, and Connection Strings in Report Builder](../a9retired/data-connections-data-sources-and-connection-strings-in-report-builder.md)  
  
  