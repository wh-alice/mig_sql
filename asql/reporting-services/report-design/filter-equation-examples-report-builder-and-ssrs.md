---
title: "Filter Equation Examples (Report Builder and SSRS) | Microsoft Docs"
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
helpviewer_keywords: 
  - "filtering data [Reporting Services], filter equation examples"
ms.assetid: 66bec93d-7c3b-4d4a-8cb6-7a7bb2f34ec6
caps.latest.revision: 18
ms.author: "maggies"
manager: "erikre"
---
# Filter Equation Examples (Report Builder and SSRS)
  To create a filter, you must specify one or more filter equations. A filter equation includes an expression, a data type, an operator, and a value. This topic provides examples of commonly used filters.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
## Filter Examples  
 The following table shows examples of filter equations that use different data types and different operators. The scope for the comparison is determined by report item for which a filter is defined. For example, for a filter defined on a dataset, **TOP % 10** is the top 10 percent of values in the dataset; for a filter defined on a group, **TOP % 10** is the top 10 percent of values in the group.  
  
|Simple Expression|Data Type|Operator|Value|Description|  
|-----------------------|---------------|--------------|-----------|-----------------|  
|`[SUM(Quantity)]`|**Integer**|**>**|`7`|Includes data values that are greater than 7.|  
|`[SUM(Quantity)]`|**Integer**|**TOP N**|`10`|Includes the top 10 data values.|  
|`[SUM(Quantity)]`|**Integer**|**TOP %**|`20`|Includes the top 20% of data values.|  
|`[Sales]`|**Text**|**>**|`=CDec(100)`|Includes all values of type System.Decimal (SQL "money" data types) greater than $100.|  
|`[OrderDate]`|**DateTime**|**>**|`2008-01-01`|Includes all dates from January 1, 2008 to the present date.|  
|`[OrderDate]`|**DateTime**|**BETWEEN**|`2008-01-01`<br /><br /> `2008-02-01`|Includes dates from January 1, 2008 up to and including February 1, 2008.|  
|`[Territory]`|**Text**|**LIKE**|`*east`|All territory names that end in "east".|  
|`[Territory]`|**Text**|**LIKE**|`%o%th*`|All territory names that include North and South at the beginning of the name.|  
|`=LEFT(Fields!Subcat.Value,1)`|**Text**|**IN**|`B, C, T`|All subcategory values that begin with the letters B, C, or T.|  
  
## See Also  
 [Report Parameters &#40;Report Builder and Report Designer&#41;](../../reporting-services/report-design/report-parameters-report-builder-and-report-designer.md)   
 [Add Dataset Filters, Data Region Filters, and Group Filters &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/fcca7243-a702-4725-8e6f-cf118e988acf.md)   
 [Data Types in Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/data-types-in-expressions-report-builder-and-ssrs.md)   
 [Expression Uses in Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-uses-in-reports-report-builder-and-ssrs.md)   
 [Expression Examples &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md)  
  
  