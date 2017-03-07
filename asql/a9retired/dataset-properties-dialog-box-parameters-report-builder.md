---
title: "Dataset Properties Dialog Box, Parameters (Report Builder) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
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
  - "10023"
ms.assetid: 3a0672ad-c969-455b-b952-585164ce1dda
caps.latest.revision: 10
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Dataset Properties Dialog Box, Parameters (Report Builder)
  Select **Parameters** on the **Dataset Properties** dialog box to add, change, and delete query parameters.  
  
 For an embedded dataset, options apply to the dataset in the report definition.  
  
 For a shared dataset, options apply to the shared dataset definition on the report server.  
  
 For more information, see [Embedded and Shared Datasets &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/embedded-and-shared-datasets-report-builder-and-ssrs.md).  
  
## Options  
 **Add**  
 Add a new parameter to the list.  
  
 **Delete**  
 Remove the selected parameter from the list.  
  
 **Up arrow**  
 Move the selected parameter up in the list.  
  
 **Down arrow**  
 Move the selected parameter down in the list.  
  
 **Parameter name**  
 Type the name of a query parameter that you added to the dataset on the **Query** tab of the **Dataset Properties** dialog box.  
  
 **Parameter value**  
 For embedded datasets only.  
  
 Enter a value for the query parameter. This can be a static value or an expression that refers to an object within the report, but it cannot refer to any report items or fields. By default, **Value** contains an expression that points to a report parameter.  
  
 **Default value**  
 For shared datasets only.  
  
 Select the check box to specify a default value.  
  
 Enter a default value. This can be a static value or an expression that refers to an object within the report. The expression cannot refer to report items, report parameters, or fields.  
  
 To specify a blank, leave the text box empty.  
  
 To specify a null, select the Nullable option.  
  
 **Read Only**  
 For shared datasets only.  
  
 Select this option to mark this parameter read only in the shared dataset definition. When the shared dataset is added to a report, the parameter does not appear in the properties. When the shared dataset is cached on the report server, the value cannot be changed.  
  
 **Nullable**  
 For shared datasets only.  
  
 Select this option to allow a null value.  
  
 **Omit From Query**  
 For shared datasets only.  
  
 Select this option when a reference to a report parameter is in an expression in the shared dataset filter and not in the query. When you select this option, you do not need to specify a default value for this parameter when the query runs.  
  
## See Also  
 [Report Builder Help for Dialog Boxes, Panes, and Wizards](http://msdn.microsoft.com/en-us/2da24891-0b6d-4d3c-8b18-81b98752642f)   
 [Dataset Properties Dialog Box, Query &#40;Report Builder&#41;](../reporting-services/report-data/dataset-properties-dialog-box-query-report-builder.md)   
 [Expressions &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/expressions-report-builder-and-ssrs.md)   
 [Tutorial: Add a Parameter to Your Report &#40;Report Builder&#41;](../reporting-services/tutorials/tutorial-add-a-parameter-to-your-report-report-builder.md)   
 [Report Parameters &#40;Report Builder and Report Designer&#41;](../reporting-services/report-design/report-parameters-report-builder-and-report-designer.md)   
 [Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md)   
 [Query Designers &#40;Report Builder&#41;](../a9retired/query-designers-report-builder.md)   
 [Report Embedded Datasets and Shared Datasets &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/report-embedded-datasets-and-shared-datasets-report-builder-and-ssrs.md)   
 [Create a Shared Dataset or Embedded Dataset &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/create-a-shared-dataset-or-embedded-dataset-report-builder-and-ssrs.md)  
  
  