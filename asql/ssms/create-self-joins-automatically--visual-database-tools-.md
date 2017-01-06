---
title: "Create Self-Joins Automatically (Visual Database Tools) | Microsoft Docs"
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
  - "automatic joins"
  - "self-joins"
  - "joins [SQL Server], self"
ms.assetid: f9ec90e8-3aad-415c-a5c4-8dfa9540e37f
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
# Create Self-Joins Automatically (Visual Database Tools)
If a table has a reflexive relationship in the database, you can join it to itself automatically.  
  
### To create a self-join automatically  
  
1.  Add to the [Diagram pane](../ssms/diagram-pane--visual-database-tools-.md) the table you want to work with.  
  
2.  Add the same table again, so that the Diagram pane shows the same table twice within the Diagram pane.  
  
    The [Query and View Designer](../ssms/query-and-view-designer-tools--visual-database-tools-.md) assigns an alias to the second instance by adding a sequential number to the table name. In addition, the Query and View Designer creates a join line between the two rectangles representing the two different ways the table participates in the query.  
  
## See Also  
[Query with Joins &#40;Visual Database Tools&#41;](../ssms/query-with-joins--visual-database-tools-.md)  
  
