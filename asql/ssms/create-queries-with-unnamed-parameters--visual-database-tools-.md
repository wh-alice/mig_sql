---
title: "Create Queries with Unnamed Parameters (Visual Database Tools) | Microsoft Docs"
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
  - "unnamed parameters"
  - "parameters [SQL Server], unnamed"
ms.assetid: 5f4b664b-3d3d-4d07-a0e7-791d78743504
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
# Create Queries with Unnamed Parameters (Visual Database Tools)
You can create a query with an unnamed parameter by specifying a question mark (?) as a placeholder for a literal value. Query and View Designer will give it a temporary name. You can specify as many unnamed parameters in the query as you need.  
  
When you run the query in the Query and View Designer, the Query Parameters Dialog Box is displayed with the temporary name.  
  
### To specify an unnamed parameter  
  
1.  Add the columns or expressions that you want to search to the [Criteria pane](../ssms/criteria-pane--visual-database-tools-.md). If you do not want the search columns or expressions to appear in the query output, remove them as output columns.  
  
2.  Locate the row containing the data column or expression to search, and then in the **Filter** grid column, enter a question mark (?).  
  
    By default, the Query and View Designer adds the "=" operator. However, you can edit the cell to substitute ">", "<", or any other SQL comparison operator.  
  
## See Also  
[Query with Parameters &#40;Visual Database Tools&#41;](../ssms/query-with-parameters--visual-database-tools-.md)  
  
