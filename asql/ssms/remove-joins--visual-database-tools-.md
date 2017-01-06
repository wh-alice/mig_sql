---
title: "Remove Joins (Visual Database Tools) | Microsoft Docs"
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
  - "removing joins"
  - "joins [SQL Server], removing"
  - "deleting joins"
ms.assetid: ccc212a1-fd13-48d6-85e5-5ff310c34bbd
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
# Remove Joins (Visual Database Tools)
If you do not want tables to be joined via an inner join or an outer join, you can remove the join between them. For example, you might remove a join that the [Query and View Designer](../ssms/query-and-view-designer-tools--visual-database-tools-.md) has been created automatically between two tables.  
  
> [!NOTE]  
> Removing a join from a query does not alter the underlying relationship in the database.  
  
If two joined tables are part of your query and you remove all join conditions between them, the resulting query becomes the product of both tables — that is, it becomes a CROSS JOIN.  
  
### To remove a join  
  
-   In the [Diagram pane](../ssms/diagram-pane--visual-database-tools-.md), select the join line for the join to remove, and then press the DELETE key. You can select and delete multiple join lines at one time.  
  
The Query and View Designer removes the join line and alters the statement in the [SQL pane](../ssms/sql-pane--visual-database-tools-.md).  
  
## See Also  
[Join Tables Automatically &#40;Visual Database Tools&#41;](../ssms/join-tables-automatically--visual-database-tools-.md)  
[Join Tables Manually &#40;Visual Database Tools&#41;](../ssms/join-tables-manually--visual-database-tools-.md)  
[Query with Joins &#40;Visual Database Tools&#41;](../ssms/query-with-joins--visual-database-tools-.md)  
  
