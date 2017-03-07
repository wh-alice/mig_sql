---
title: "Preparing Data for Display in a Tablix Data Region (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: fbb00dc6-7887-480c-b771-cab6fecb8dcc
caps.latest.revision: 5
ms.author: "maggies"
manager: "erikre"
---
# Preparing Data for Display in a Tablix Data Region (Report Builder and SSRS)
  A tablix data region displays data from a dataset. You can view all the data retrieved for the dataset or you can create filters so that you see only a subset of the data. You can also add conditional expressions to fill in null values or modify the query for a dataset to include columns that define the sort order for an existing column.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
## Working with Nulls and Blanks in Field Values  
 Data for the field collection in a dataset includes all values retrieved from the data source at run time, including null values and blanks. Normally null values and blanks are indistinguishable. In most cases, this is the desired behavior. For example, Numeric aggregate functions like [Sum](../Topic/Sum%20Function%20\(Report%20Builder%20and%20SSRS\).md) and [Avg](../Topic/Avg%20Function%20\(Report%20Builder%20and%20SSRS\).md) ignore null values. For more information, see [Aggregate Functions Reference &#40;Report Builder and SSRS&#41;](../Topic/Aggregate%20Functions%20Reference%20\(Report%20Builder%20and%20SSRS\).md).  
  
 If you do want to handle null values differently, you can use conditional expressions or custom code to substitute a custom value for the null value. For example, the following expression substitutes the text `Null` wherever a null value occurs in the field `[Size]`.  
  
```  
=IIF(Fields!Size.Value IS NOTHING,"Null",Fields!Size.Value)  
```  
  
 For more information about eliminating nulls in your data before retrieving the data from a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data source using [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] queries, see "Null Values" and "Null Values and Joins" in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] documentation in [SQL Server Books Online](http://go.microsoft.com/fwlink/?linkid=120955).  
  
## Handling Null Field Names  
 Testing for null values in an expression is fine as long as the field itself exists in the query result set. From custom code, you can test whether the field itself is present in the collection fields returned from the data source at run time. For more information, see [Dataset Fields Collection References &#40;Report Builder and SSRS&#41;](../Topic/Dataset%20Fields%20Collection%20References%20\(Report%20Builder%20and%20SSRS\).md).  
  
## Adding a Sort Order Column  
 By default, you can alphabetically sort values in a dataset field. To sort in a different order, you can add a new column to your dataset that defines the sort order you want in a data region. For example, to sort on the field `[Color]` and sort white and black items first, you can add a column `[ColorSortOrder]`, shown in the following query:  
  
```  
SELECT ProductID, p.Name, Color,  
   CASE  
      WHEN p.Color = 'White' THEN 1  
      WHEN p.Color = 'Black' THEN 2  
      WHEN p.Color = 'Blue' THEN 3  
      WHEN p.Color = 'Yellow' THEN 4  
      ELSE 5  
   END As ColorSortOrder  
FROM Production.Product p  
```  
  
 To sort a table data region according to this sort order, set the sort expression on the detail group to `=Fields!ColorSortOrder.Value`. For more information, see [Sort Data in a Data Region &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/sort-data-in-a-data-region-report-builder-and-ssrs.md).  
  
## See Also  
 [Dataset Fields Collection &#40;Report Builder and SSRS&#41;](../../reporting-services/report-data/dataset-fields-collection-report-builder-and-ssrs.md)   
 [Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expressions-report-builder-and-ssrs.md)   
 [Filter, Group, and Sort Data &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/filter-group-and-sort-data-report-builder-and-ssrs.md)  
  
  