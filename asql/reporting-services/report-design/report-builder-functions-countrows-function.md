---
title: "CountRows Function (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 5b1c403d-6afd-44c8-b5f6-5ecff2a29a45
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Report Builder Functions - CountRows Function
  Returns the number of rows in the specified scope, including rows with null values.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
## Syntax  
  
```  
  
CountRows(scope, recursive)  
```  
  
#### Parameters  
 *scope*  
 (**String**) The name of a dataset, data region, or group that contains the report items to count.  
  
 *recursive*  
 (**Enumerated Type**) Optional. **Simple** (default) or **RdlRecursive**. Specifies whether to perform the aggregation recursively.  
  
## Return Type  
 Returns an **Integer**.  
  
## Remarks  
 **CountRows** counts all rows in the specified scope, including rows that have null values.  
  
 The value of *scope* cannot be an expression and must refer to the current scope or a containing scope.  
  
 For more information, see [Aggregate Functions Reference &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/report-builder-functions-aggregate-functions-reference.md) and [Expression Scope for Totals, Aggregates, and Built-in Collections &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/a8d24287-8557-4b03-bea7-ca087f449b62.md).  
  
 For more information about recursive aggregates, see [Creating Recursive Hierarchy Groups &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/creating-recursive-hierarchy-groups-report-builder-and-ssrs.md).  
  
## Example  
 The following code example shows an expression that calculates the number of rows in a row group named `GroupbyCategory` (based on the expression `[Category]`).  
  
```  
="Number of rows: " & CountRows("GroupbyCategory")  
```  
  
## See Also  
 [Expression Uses in Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-uses-in-reports-report-builder-and-ssrs.md)   
 [Expression Examples &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md)   
 [Data Types in Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/data-types-in-expressions-report-builder-and-ssrs.md)   
 [Expression Scope for Totals, Aggregates, and Built-in Collections &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/a8d24287-8557-4b03-bea7-ca087f449b62.md)  
  
  