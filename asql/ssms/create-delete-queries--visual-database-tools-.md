---
title: "Create Delete Queries (Visual Database Tools) | Microsoft Docs"
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
  - "row removal [SQL Server], Delete query"
  - "Delete query"
  - "queries [SQL Server], types"
  - "removing rows"
  - "removing data"
  - "data deletions [SQL Server]"
  - "deleting rows"
  - "deleting data"
ms.assetid: 0db3af43-1ec4-48c8-b769-2bb9c76d3434
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
# Create Delete Queries (Visual Database Tools)
You can delete all rows in a table by using a Delete query.  
  
> [!NOTE]  
> Deleting all rows from a table clears the data in the table but does not delete the table itself. To delete a table from a database, right-click the table in Object Explorer and click **Delete**.  
  
When you create a Delete query, the Criteria pane changes to reflect the options available for deleting rows. Because you do not display data in a Delete query, the Output, Sort By, and Sort Order columns are removed. In addition, the check boxes next to the column names in the rectangle representing the table or table-valued object are removed because you cannot specify individual columns to delete.  
  
If the Query and View Designer can't delete one or more of the rows none of them will be deleted and you will receive a message telling you which row(s) contain information that can't be deleted from the database.  
  
> [!CAUTION]  
> You cannot undo the action of executing a Delete query. As a precaution, back up your data before executing a Delete query.  
  
### To create a Delete query  
  
1.  Add the table to delete rows from to the Diagram pane.  
  
2.  From the **Query Designer** menu, point to **Change Type**, and then click **Delete**. **Note** If more than one table is displayed in the Diagram pane when you start the Delete query, the Query and View Designer displays the [Delete Table Dialog Box](../ssms/delete-table-dialog-box--visual-database-tools-.md) to prompt you for the name of the table to delete rows from.  
  
When you execute the Delete query, no results are reported in the [Results Pane](../ssms/results-pane--visual-database-tools-.md). Instead, a message appears indicating how many rows were deleted.  
  
## See Also  
[Supported Query Types &#40;Visual Database Tools&#41;](../ssms/supported-query-types--visual-database-tools-.md)  
[Design Queries and Views How-to Topics &#40;Visual Database Tools&#41;](../ssms/design-queries-and-views-how-to-topics--visual-database-tools-.md)  
  
