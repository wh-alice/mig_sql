---
title: "StDevP Function (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: cbcc0b3f-7b6d-4dd7-accb-cb375be8d852
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Report Builder Functions - StDevP Function
  Returns the population standard deviation of all non-null numeric values specified by the expression, evaluated in the context of the given scope.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
## Syntax  
  
```  
  
StDevP(expression, scope, recursive)  
```  
  
#### Parameters  
 *expression*  
 (**Integer** or **Float**) The expression on which to perform the aggregation.  
  
 *scope*  
 (**String**) Optional. The name of a dataset, group, or data region that contains the report items to which to apply the aggregate function. If *scope* is not specified, the current scope is used.  
  
 *recursive*  
 (**Enumerated Type**) Optional. **Simple** (default) or **RdlRecursive**. Specifies whether to perform the aggregation recursively.  
  
## Return Type  
 Returns a **Decimal** for decimal expressions and a **Double** for all other expressions.  
  
## Remarks  
 The set of data specified in the expression must have the same data type. To convert data that has multiple numeric data types to the same data type, use conversion functions like **CInt**, **CDbl** or **CDec**. For more information, see [Type Conversion Functions](http://go.microsoft.com/fwlink/?LinkId=96142).  
  
 The value of *scope* must be a string constant and cannot be an expression. For outer aggregates or aggregates that do not specify other aggregates, *scope* must refer to the current scope or a containing scope. For aggregates of aggregates, nested aggregates can specify a child scope.  
  
 *Expression* can contain calls to nested aggregate functions with the following exceptions and conditions:  
  
-   *Scope* for nested aggregates must be the same as, or contained by, the scope of the outer aggregate. For all distinct scopes in the expression, one scope must be in a child relationship to all other scopes.  
  
-   *Scope* for nested aggregates cannot be the name of a dataset.  
  
-   *Expression* must not contain **First**, **Last**, **Previous**, or **RunningValue** functions.  
  
-   *Expression* must not contain nested aggregates that specify *recursive*.  
  
 For more information, see [Aggregate Functions Reference &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/report-builder-functions-aggregate-functions-reference.md) and [Expression Scope for Totals, Aggregates, and Built-in Collections &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-scope-for-totals-aggregates-and-built-in-collections.md).  
  
 For more information about recursive aggregates, see [Creating Recursive Hierarchy Groups &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/creating-recursive-hierarchy-groups-report-builder-and-ssrs.md).  
  
## Example  
 The following code example provides the population standard deviation of line item totals in the `Order` group or data region.  
  
```  
=StDevP(Fields!LineTotal.Value, "Order")  
```  
  
## See Also  
 [Expression Uses in Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-uses-in-reports-report-builder-and-ssrs.md)   
 [Expression Examples &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md)   
 [Data Types in Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/data-types-in-expressions-report-builder-and-ssrs.md)   
 [Expression Scope for Totals, Aggregates, and Built-in Collections &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expression-scope-for-totals-aggregates-and-built-in-collections.md)  
  
  