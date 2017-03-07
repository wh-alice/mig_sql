---
title: "Building Measures in MDX | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f0347835-4983-4d26-acbb-6c8fae7992bd
caps.latest.revision: 6
ms.author: "owend"
manager: "erikre"
---
# MDX Building Measures
  In Multidimensional Expressions (MDX), a measure is a named DAX expression that is resolved by calculating the expression to return a value in a Tabular Model. This innocuous definition covers an incredible amount of ground. The ability to construct and use measures in an MDX query provides a great deal of manipulation capability for tabular data.  
  
> [!WARNING]  
>  Measures can only be defined in tabular models; if your database is set in multidimensional mode, creating a measure will generate an error  
  
 To create a measure that is defined as part of an MDX query, and therefore whose scope is limited to the query, you use the WITH keyword. You can then use the measure within an MDX SELECT statement. Using this approach, the calculated member created by using the WITH keyword can be changed without disturbing the SELECT statement. However, in MDX you reference the measure in a different way than when in DAX expressions; to reference the measure you name it as a member of the [Measures] dimension, see the following MDX example:  
  
```  
with measure  'Sales Territory'[Total Sales Amount] = SUM('Internet Sales'[Sales Amount]) + SUM('Reseller Sales'[Sales Amount])  
select measures.[Total Sales Amount] on columns  
     ,NON EMPTY [Date].[Calendar Year].children on rows  
from [Model]  
  
```  
  
 It will return the following data when executed:  
  
||Total Sales Amount||  
|-|------------------------|-|  
|2001|11331808.96||  
|2002|30674773.18||  
|2003|41993729.72||  
|2004|25808962.34||  
  
## See Also  
 [CREATE MEMBER Statement &#40;MDX&#41;](../../../mdx/mdx-data-definition-create-member.md)   
 [MDX Function Reference &#40;MDX&#41;](../../../mdx/mdx-function-reference-mdx.md)   
 [SELECT Statement &#40;MDX&#41;](../../../mdx/mdx-data-manipulation-select.md)  
  
  