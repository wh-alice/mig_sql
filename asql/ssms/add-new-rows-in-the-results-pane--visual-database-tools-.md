---
title: "Add New Rows in the Results Pane (Visual Database Tools) | Microsoft Docs"
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
  - "View Designer, Results pane"
  - "inserting rows"
  - "Query Designer [SQL Server], Results pane"
  - "Results pane"
  - "adding rows"
  - "row additions [SQL Server], Results pane"
ms.assetid: 59891c84-3f54-4ab9-8b86-72c59627b480
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
# Add New Rows in the Results Pane (Visual Database Tools)
You can add new data either by typing it in or by pasting it from another program such as Notepad or Excel. A row to be pasted must have exactly the same number and types of columns as the table into which you are pasting. You can paste multiple rows into the Results pane at once.  
  
For information about how to enter data see [Rules for Updating Results &#40;Visual Database Tools&#41;](../ssms/rules-for-updating-results--visual-database-tools-.md).  
  
### To add a new data row  
  
1.  Navigate to the bottom of the Results pane, where a blank row is available for adding a new data row.  
  
    The initial values for all columns will be *NULL*.  
  
    > [!TIP]  
    > To go directly to the first empty row use the navigation bar at the bottom of the Results pane.  
  
2.  If you are pasting rows from the Clipboard, select the new row by clicking the button to its left.  
  
    > [!NOTE]  
    > If one or more of the rows you're pasting can't be committed to the database you will receive a message telling you which row(s) couldn't be committed.  
  
3.  Enter the data for the new row. If you are pasting, choose **Paste** from the **Edit** menu.  
  
4.  Leave that row to commit it to the database.  
  
If an error occurs when you save the row the Query and View Designer displays a message and then returns you to the row you were editing. You can then:  
  
-   Resolve the error by making further edits in the row.  
  
-   Cancel the edit by pressing ESC. If you press ESC while in a cell that you changed, the changes for that cell are canceled. If you press ESC while in a cell you have not changed, the changes for the entire row are canceled.  
  
## See Also  
[Work with Data in the Results Pane &#40;Visual Database Tools&#41;](../ssms/work-with-data-in-the-results-pane--visual-database-tools-.md)  
[Perform Basic Operations with Queries &#40;Visual Database Tools&#41;](../ssms/perform-basic-operations-with-queries--visual-database-tools-.md)  
  
