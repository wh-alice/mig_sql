---
title: "Level Function (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 41235402-bb9e-4cb7-b91e-431e77db19cf
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Report Builder Functions - Level Function
  Returns the current level of depth in a recursive hierarchy.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
## Syntax  
  
```  
  
Level(scope)  
```  
  
#### Parameters  
 *scope*  
 (**String**) (Optional). The name of a dataset, group, or data region that contains the report items to which to apply the aggregate function. If *scope* is not specified, the current scope is used.  
  
## Return Type  
 Returns an **Integer**. If *scope* specifies a dataset or data region, or specifies a nonrecursive grouping (that is, a grouping with no **Parent** element), **Level** returns 0. If *scope* is omitted, it returns the level of the current scope.  
  
## Remarks  
 The value returned by the **Level** function is zero based; that is, the first level in a hierarchy is 0.  
  
 The **Level** function can be used to provide indentation in a recursive hierarchy, such as an employee list.  
  
 For more information about recursive hierarchies, see [Creating Recursive Hierarchy Groups &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/creating-recursive-hierarchy-groups-report-builder-and-ssrs.md).  
  
## Example  
 The following code example provides the level of row in the Employees group:  
  
```  
=Level("Employees")  
```  
  
## See Also  
 [Expression Uses in Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-uses-in-reports-report-builder-and-ssrs.md)   
 [Expression Examples &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md)   
 [Data Types in Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/data-types-in-expressions-report-builder-and-ssrs.md)   
 [Expression Scope for Totals, Aggregates, and Built-in Collections &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/a8d24287-8557-4b03-bea7-ca087f449b62.md)  
  
  