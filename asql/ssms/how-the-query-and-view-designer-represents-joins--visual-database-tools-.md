---
title: "How the Query and View Designer Represents Joins (Visual Database Tools) | Microsoft Docs"
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
  - "SQL pane [Visual Database Tools]"
  - "joins [SQL Server], Query and View Designer"
  - "Diagram pane [Visual Database Tools]"
ms.assetid: 20a99dcb-83bd-4aa6-9139-92e2e5ba4887
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
# How the Query and View Designer Represents Joins (Visual Database Tools)
If tables are joined, the [Query and View Designer](../ssms/query-and-view-designer-tools--visual-database-tools-.md) represents the join graphically in the [Diagram pane](../ssms/diagram-pane--visual-database-tools-.md) and by using SQL syntax in the [SQL pane](../ssms/sql-pane--visual-database-tools-.md).  
  
## Diagram Pane  
In the Diagram pane the Query and View Designer displays a join line between the data columns involved in the join. The Query and View Designer displays one join line for each join condition. For example, the following illustration shows a join line between two tables that are joined:  
  
![Join line shows relationship between two tables](../ssms/media/dv3wbig.gif "Join line shows relationship between two tables")  
  
If tables are joined using more than one join condition, the Query and View Designer displays multiple join lines, as in the following example:  
  
![Tables joined using more than one join condition](../ssms/media/dv3w9n1.gif "Tables joined using more than one join condition")  
  
If the joined data columns are not displayed (for example, the rectangle representing the table or table-structured object is minimized or the join involves an expression), the Query and View Designer places the join line at the title bar of the rectangle representing the table or table-structured object.  
  
The shape of the icon in the middle of the join line indicates how the tables or table-structured objects are joined. If the join clause uses an operator other than equal (=), the operator appears in the join line icon. The following table lists the icons that appear in the join line.  
  
|**Join line icon**|**Description**|  
|----------------------|-------------------|  
|![Visual Database Tools icon](../ssms/media/dv3wbih.gif "Visual Database Tools icon")|Inner join (created using an equal sign).|  
|![Visual Database Tools icon](../ssms/media/dv3wbii.gif "Visual Database Tools icon")|Inner join based on the "greater than" operator.|  
|![Visual Database Tools icon](../ssms/media/dv3wbij.gif "Visual Database Tools icon")|Outer join in which all rows from the table represented on the left will be included, even if they do not have matches in the related table.|  
|![Visual Database Tools icon](../ssms/media/dv3wbik.gif "Visual Database Tools icon")|Outer join in which all rows from the table represented on the right will be included, even if they do not have matches in the related table.|  
|![Visual Database Tools icon](../ssms/media/dv3wbil.gif "Visual Database Tools icon")|Full outer join in which all rows from both tables will be included, even if they do not have matches in the related table.|  
  
The symbols on the ends of the join line indicate the type of join. The following table lists the types of joins and the icons displayed on the ends of the join line.  
  
|**Icon on ends of join line**|**Type of join**|  
|---------------------------------|--------------------|  
|![Visual Database Tools icon](../ssms/media/dv3wbim.gif "Visual Database Tools icon")|One-to-one join.|  
|![Visual Database Tools icon](../ssms/media/dv3wbin.gif "Visual Database Tools icon")|One-to-many join.|  
|![Visual Database Tools icon](../ssms/media/dv3wbio.gif "Visual Database Tools icon")|Query and View Designer cannot determine the join type. This situation occurs most often when you have created a join manually.|  
  
## SQL Pane  
A join can be expressed in a number of ways in an SQL statement. The exact syntax depends on the database you are using and on how you have defined the join.  
  
Syntax options for joining tables include:  
  
-   **JOIN qualifier for the FROM clause**.   The keywords INNER and OUTER specify the join type. This syntax is standard for ANSI 92 SQL.  
  
    For example, if you join the `publishers` and `pub_info` tables based on the `pub_id` column in each table, the resulting SQL statement might look like this:  
  
    ```  
    SELECT *  
    FROM publishers INNER JOIN pub_info ON  
       publishers.pub_id = pub_info.pub_id  
    ```  
  
    If you create an outer join, the words LEFT OUTER or RIGHT OUTER appear in place of the word INNER.  
  
-   **WHERE clause compares columns in both tables**.   A WHERE clause appears if the database does not support the JOIN syntax (or if you entered it yourself). If the join is created in the WHERE clause, both table names appear in the FROM clause.  
  
    For example, the following statement joins the `publishers` and `pub_info` tables.  
  
    ```  
    SELECT *  
    FROM publishers, pub_info  
    WHERE publishers.pub_id = pub_info.pub_id  
    ```  
  
## See Also  
[Query with Joins &#40;Visual Database Tools&#41;](../ssms/query-with-joins--visual-database-tools-.md)  
[Join Dialog Box &#40;Visual Database Tools&#41;](../ssms/join-dialog-box--visual-database-tools-.md)  
  
