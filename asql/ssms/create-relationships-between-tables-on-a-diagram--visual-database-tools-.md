---
title: "Create Relationships Between Tables on a Diagram (Visual Database Tools) | Microsoft Docs"
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
  - "diagrams [SQL Server], designing"
ms.assetid: 28e9630c-dff4-46cc-bb0e-fe77998b6ac2
caps.latest.revision: 5
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
# Create Relationships Between Tables on a Diagram (Visual Database Tools)
You can create relationships between columns in different tables in the Diagram Designer by dragging columns between tables.  
  
### To create a relationship graphically  
  
1.  In Database Designer, click the row selector for one or more database columns that you want to relate to a column in another table.  
  
2.  Drag the selected column(s) to the related table.  
  
3.  Two dialog boxes appear: **Foreign Key Relationship** and **Tables and Columns**, with the latter appearing in the foreground.  
  
4.  **Relationship name** has a system-provided name in the format FK_*localtable*_*foreigntable*. You may change this value.  
  
5.  Verify that **Primary key table** specifies the correct table.  
  
6.  The grid lists the local columns and their matching foreign columns. You can add or remove table columns or change mappings.  
  
7.  Choose **OK**.  
  
    The **Foreign Key Relationship** dialog box appears. **Selected Relationship** shows the relationship you have created.  
  
8.  Change properties for the relationship in the grid.  
  
9. Choose **OK** to create the relationship.  
  
    Database Designer shows a relationship between the columns you chose.  
  
## See Also  
[Tables and Columns Dialog Box &#40;Visual Database Tools&#41;](../ssms/tables-and-columns-dialog-box--visual-database-tools-.md)  
[Working with Constraints (Visual Database Tools)](http://msdn.microsoft.com/en-us/637098af-2567-48f8-90f4-b41df059833e)  
[Work with Tables in Database Diagram &#40;Visual Database Tools&#41;](../ssms/work-with-tables-in-database-diagram--visual-database-tools-.md)  
  
