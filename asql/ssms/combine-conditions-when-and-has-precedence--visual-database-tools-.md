---
title: "Combine Conditions When AND Has Precedence (Visual Database Tools) | Microsoft Docs"
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
  - "search conditions [SQL Server], combining"
  - "precedence [SQL Server], Criteria pane"
  - "search criteria [SQL Server], combining conditions"
  - "combining search conditions"
  - "AND, Criteria pane"
ms.assetid: 450eb2eb-6ea3-405b-8dd2-1ff926c016e7
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
# Combine Conditions When AND Has Precedence (Visual Database Tools)
To combine conditions with AND, you add the column to the query twice--once for each condition. To combine conditions with OR, you put the first one in the Filter column and additional conditions into an **Or...** column.  
  
For example, imagine that you want to find either employees who have been with the company for more than five years in lower-level jobs or employees with middle-level jobs regardless of their hire date. This query requires three conditions, two of them linked with AND:  
  
-   Employees with a hire date earlier than five years ago AND with a job level of 100.  
  
    -or-  
  
-   Employees with a job level of 200.  
  
### To combine conditions when AND has precedence  
  
1.  In the [Criteria pane](../ssms/criteria-pane--visual-database-tools-.md), add the data columns you want to search. If you want to search the same column using two or more conditions linked with AND, you must add the data column name to the grid once for each value you want to search.  
  
2.  In the **Filter** column, enter all the conditions that you want to link with AND. For example, to link conditions with AND that search the `hire_date` and `job_lvl` columns, enter the values `< '1/1/91'` and `= 100`, respectively, in the Filter column.  
  
    These grid entries produce the following WHERE clause in the statement in the [SQL Pane](../ssms/sql-pane--visual-database-tools-.md):  
  
    ```  
    WHERE (hire_date < '01/01/91') AND  
      (job_lvl = 100)  
    ```  
  
3.  In the **Or...** grid column, enter conditions that you want to link with OR. For example, to add a condition that searches for another value in the `job_lvl` column, enter an additional value in the **Or...** column, such as `= 200`.  
  
    Adding a value in the **Or...** column adds another condition to the WHERE clause in the statement in the SQL pane:  
  
    ```  
    WHERE (hire_date < '01/01/91' ) AND  
      (job_lvl = 100) OR   
      (job_lvl = 200)  
    ```  
  
## See Also  
[Combine Conditions When OR Has Precedence (Visual Database Tools)](../ssms/combine-conditions-when-or-has-precedence--visual-database-tools-.md)  
[Conventions for Combining Search Conditions in the Criteria Pane (Visual Database Tools)](../ssms/d4859be5-ff5b-48b2-a101-ad40c6dbcc68.md)  
[Rules for Entering Search Values (Visual Database Tools)](../ssms/rules-for-entering-search-values--visual-database-tools-.md)  
[Specify Search Criteria (Visual Database Tools)](../ssms/specify-search-criteria--visual-database-tools-.md)  
  
