---
title: "Dataset Properties Dialog Box, Fields | Microsoft Docs"
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
  - "10140"
  - "sql13.rtp.rptdesigner.datasetproperties.fields.f1"
ms.assetid: e1367556-736e-4a6b-b9e7-10432a3e50b5
caps.latest.revision: 35
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Dataset Properties Dialog Box, Fields
  Select **Fields** on the **Dataset Properties** dialog box to change the field collection for the report dataset. The fields list is automatically populated, but you can use **Fields** to add, edit, and delete query and calculated fields.  
  
## Options  
 **Add**  
 Add a new query field or calculated field to the dataset.  
  
 **Delete**  
 Delete the selected field from the dataset.  
  
 **Field Name**  
 Type a name for the field. The field must be unique within the dataset. For each existing field in the dataset query, the name is pre-populated.  
  
 **Field Source**  
 Enter a value for the field.  
  
 For a calculated field, the field source must be the name of an existing field retrieved by the dataset query, or an expression that you create. For example, to create a field that represents 10 times the value in the query field Sales, use the expression `=10 * Fields!Sales.Value`.  
  
 For a query field, the field source must be the name of an existing field retrieved by the dataset query.  
  
 **Expression (fx)**  
 Add or change an expression for the calculated field. This button only appears when you click **Add** and select **Calculated Field**.  
  
## See Also  
 [Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md)   
 [Report Datasets &#40;SSRS&#41;](../reporting-services/report-data/report-datasets-ssrs.md)   
 [Expressions &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/expressions-report-builder-and-ssrs.md)  
  
  