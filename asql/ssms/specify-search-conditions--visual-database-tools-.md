---
title: "Specify Search Conditions (Visual Database Tools) | Microsoft Docs"
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
  - "choosing search criteria"
  - "search conditions [SQL Server], specifying"
  - "search criteria [SQL Server], specifying conditions"
ms.assetid: 18e2c759-68ec-4efe-b208-2f73418cd9bd
caps.latest.revision: 4
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
# Specify Search Conditions (Visual Database Tools)
You can specify the data rows that appear in your query by specifying search conditions. For example, if you are querying an `employee` table, you can specify that you want to find only the employees who work in a particular region.  
  
You specify search conditions using an expression. Most commonly the expression consists of an operator and a search value. For example, to find employees in a particular sales region, you might specify the following search criterion for the `region` column:  
  
```  
='UK'  
```  
  
> [!NOTE]  
> If you are working with multiple tables, the Query and View Designer examines each search condition to determine whether the comparison you are making results in a join. If so, the Query and View Designer automatically converts the search condition into a join. For more information, see [Join Tables Automatically &#40;Visual Database Tools&#41;](../ssms/join-tables-automatically--visual-database-tools-.md).  
  
### To specify search conditions  
  
1.  If you have not done so already, add the columns or expressions that you want to use within your search condition to the Criteria pane.  
  
    If you are creating a Select query and do not want the search columns or expressions to appear in the query output, clear the **Output** column for each search column or expression to remove them as output columns.  
  
2.  Locate the row containing the data column or expression to search, and then in the **Filter** column, enter a search condition.  
  
    > [!NOTE]  
    > If you do not enter an operator, the Query and View Designer automatically inserts the equality operator "=".  
  
The Query and View Designer updates the SQL statement in the [SQL Pane](../ssms/sql-pane--visual-database-tools-.md) by adding or modifying the WHERE clause.  
  
## See Also  
[Rules for Entering Search Values &#40;Visual Database Tools&#41;](../ssms/rules-for-entering-search-values--visual-database-tools-.md)  
[Specify Search Criteria &#40;Visual Database Tools&#41;](../ssms/specify-search-criteria--visual-database-tools-.md)  
  
