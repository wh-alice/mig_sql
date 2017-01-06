---
title: "Specify Conditions for Groups (Visual Database Tools) | Microsoft Docs"
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
  - "HAVING clause, query groups"
  - "group query conditions [SQL Server]"
ms.assetid: 269ad9c5-3261-4526-badf-7be3c869f229
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
# Specify Conditions for Groups (Visual Database Tools)
You can limit the groups that appear in a query by specifying a condition that applies to groups as a whole — a HAVING clause. After the data has been grouped and aggregated, the conditions in the HAVING clause are applied. Only the groups that meet the conditions appear in the query.  
  
For example, you might want to see the average price of all books for each publisher in a `titles` table, but only if the average price exceeds $10.00. In that case, you could specify a HAVING clause with a condition such as `AVG(price) > 10`.  
  
> [!NOTE]  
> In some instances, you might want to exclude individual rows from groups before applying a condition to groups as a whole. For details, see [Use HAVING and WHERE Clauses in the Same Query &#40;Visual Database Tools&#41;](../ssms/use-having-and-where-clauses-in-the-same-query--visual-database-tools-.md).  
  
You can create complex conditions for a HAVING clause by using AND and OR to link conditions. For details about using AND and OR in search conditions, see [Specify Multiple Search Conditions for One Column &#40;Visual Database Tools&#41;](../ssms/specify-multiple-search-conditions-for-one-column--visual-database-tools-.md).  
  
### To specify a condition for a group  
  
1.  Specify the groups for your query. For details, see [Group Rows in Query Results &#40;Visual Database Tools&#41;](../ssms/group-rows-in-query-results--visual-database-tools-.md).  
  
2.  If it is not already in the [Criteria pane](../ssms/criteria-pane--visual-database-tools-.md), add the column on which you want to base the condition. (Most often the condition involves a column that is already a group or summary column.) You cannot use a column that is not part of an aggregate function or of the GROUP BY clause.  
  
3.  In the **Filter** column, specify the condition to apply to the group.  
  
    The [Query and View Designer](../ssms/query-and-view-designer-tools--visual-database-tools-.md) automatically creates a HAVING clause in the statement in the [SQL pane](../ssms/sql-pane--visual-database-tools-.md), such as in the following example:  
  
    ```  
    SELECT pub_id, AVG(price)  
    FROM titles  
    GROUP BY pub_id  
    HAVING (AVG(price) > 10)  
    ```  
  
4.  Repeat steps 2 and 3 for each additional condition you want to specify.  
  
## See Also  
[Sort and Group Query Results &#40;Visual Database Tools&#41;](../ssms/sort-and-group-query-results--visual-database-tools-.md)  
  
