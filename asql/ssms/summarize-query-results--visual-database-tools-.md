---
title: "Summarize Query Results (Visual Database Tools) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "summarizing query results"
  - "queries [SQL Server], results"
  - "aggregate queries [SQL Server]"
ms.assetid: c9e15350-ed57-4d95-814d-815fbebfd86b
caps.latest.revision: 3
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Summarize Query Results (Visual Database Tools)
When you create aggregate queries, certain logical principles apply. For example, you cannot display the contents of individual rows in a summary query. The Query and View Designer helps you comply with these principles in the way the [Diagram pane](../ssms/diagram-pane--visual-database-tools-.md) and [Criteria pane](../ssms/criteria-pane--visual-database-tools-.md) behave.  
  
By understanding the principles of aggregate queries and the Query and View Designer's behavior, you can create logically correct aggregate queries. The overriding principle is that aggregate queries can result only in summary information. Thus, most of the principles that follow describe the ways that you can reference individual data columns within an aggregate query.  
  
## In This Section  
[Work with Columns in Aggregate Queries &#40;Visual Database Tools&#41;](../ssms/work-with-columns-in-aggregate-queries--visual-database-tools-.md)  
Describes concepts about grouping and summarizing columns with the GROUP BY, WHERE, and HAVING clauses.  
  
[Count Rows in a Table &#40;Visual Database Tools&#41;](../ssms/count-rows-in-a-table--visual-database-tools-.md)  
Provides steps for counting the number of rows in a table or the number of rows in a table that meet a set of criteria.  
  
[Summarize or Aggregate Values for All Rows in a Table &#40;Visual Database Tools&#41;](../ssms/summarize-or-aggregate-values-for-all-rows-in-a-table--visual-database-tools-.md)  
Provides steps for summarizing all rows rather than for a set of grouped rows.  
  
[Summarize or Aggregate Values Using Custom Expressions &#40;Visual Database Tools&#41;](../ssms/summarize-or-aggregate-values-using-custom-expressions--visual-database-tools-.md)  
Provides steps for using expressions to summarize or aggregate rather than using the predefined clauses.  
  
## Related Sections  
[Design Queries and Views How-to Topics &#40;Visual Database Tools&#41;](../ssms/design-queries-and-views-how-to-topics--visual-database-tools-.md)  
Provides links to topics covering how to use the Query and View Designer.  
  
