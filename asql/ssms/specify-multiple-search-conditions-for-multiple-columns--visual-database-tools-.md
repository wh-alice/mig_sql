---
title: "Specify Multiple Search Conditions for Multiple Columns (Visual Database Tools) | Microsoft Docs"
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
  - "search criteria [SQL Server], multiple conditions"
  - "multiple search conditions"
  - "search conditions [SQL Server], multiple"
  - "OR operator"
  - "AND, Criteria pane"
ms.assetid: 06617729-0d0b-4da2-9890-b7e2f5cdbc7b
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
# Specify Multiple Search Conditions for Multiple Columns (Visual Database Tools)
You can expand or narrow the scope of your query by including several data columns as part of your search condition. For example, you might want to:  
  
-   Search for employees who either have worked more than five years at the company or who hold certain jobs.  
  
-   Search for a book that is both published by a specific publisher and pertains to cooking.  
  
To create a query that searches for values in either of two (or more) columns, you specify an OR condition. To create a query that must meet all conditions in two (or more) columns, you specify an AND condition.  
  
## Specifying an OR Condition  
To create multiple conditions linked with OR, you put each separate condition in a different column of the Criteria pane.  
  
#### To specify an OR condition for two different columns  
  
1.  In the [Criteria Pane](../ssms/criteria-pane--visual-database-tools-.md), add the columns you want to search.  
  
2.  In the **Filter** column for the first column to search, specify the first condition.  
  
3.  In the **Or...** column for the second data column to search, specify the second condition, leaving the **Filter** column blank.  
  
    The Query and View Designer creates a WHERE clause that contains an OR condition such as the following:  
  
    ```  
    SELECT job_lvl, hire_date  
    FROM employee  
    WHERE (job_lvl >= 200) OR   
      (hire_date < '01/01/1998')  
    ```  
  
4.  Repeat Steps 2 and 3 for each additional condition you want to add. Use a different **Or...** column for each new condition.  
  
## Specifying an AND Condition  
To search different data columns using conditions linked with AND, you put all the conditions in the **Filter** column of the grid.  
  
#### To specify an AND condition for two different columns  
  
1.  In the [Criteria Pane](../ssms/criteria-pane--visual-database-tools-.md), add the columns you want to search.  
  
2.  In the **Filter** column for the first data column to search, specify the first condition.  
  
3.  In the **Filter** column for the second data column, specify the second condition.  
  
    The Query and View Designer creates a WHERE clause that contains an AND condition such as the following:  
  
    ```  
    SELECT pub_id, title  
    FROM titles  
    WHERE (pub_id = '0877') AND (title LIKE '%Cook%')  
    ```  
  
4.  Repeat Steps 2 and 3 for each additional condition you want to add.  
  
## See Also  
[Combine Conditions When AND Has Precedence (Visual Database Tools)](../ssms/combine-conditions-when-and-has-precedence--visual-database-tools-.md)  
[Combine Conditions When OR Has Precedence (Visual Database Tools)](../ssms/combine-conditions-when-or-has-precedence--visual-database-tools-.md)  
[Conventions for Combining Search Conditions in the Criteria Pane (Visual Database Tools)](../ssms/d4859be5-ff5b-48b2-a101-ad40c6dbcc68.md)  
[Specify Search Criteria (Visual Database Tools)](../ssms/specify-search-criteria--visual-database-tools-.md)  
  
